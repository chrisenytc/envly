require 'envly/version'
require 'digest'
require 'musa'
require 'dotenv'
require 'json'

##
# Envly main module
module Envly
	PATH = File.join ENV['HOME'], '.envly'

	module_function

	def set(key, project, envs)
		begin
			parsed_envs = envs.map { |v| Dotenv::Parser.call v }
			merged_envs = {}
			Dir.mkdir PATH unless Dir.exist? PATH
			file_output = File.join(PATH, project + '.envly')
			if File.exist? file_output
				file = File.read file_output
				decrypted_file = Musa::Decryption.decrypt Digest::SHA256.digest(key), file
				file_envs = JSON.parse decrypted_file
				merged_envs = merged_envs.merge file_envs
			end
			parsed_envs.each { |v| merged_envs.merge! v }
			output = Musa::Encryption.encrypt Digest::SHA256.digest(key), JSON.pretty_generate(merged_envs)
			File.open(file_output, 'w+') do |f|
				f << output
			end
		rescue => e
			puts e.message
			exit 0
		end
	end

	def list()
		Dir.foreach(PATH) do |item|
			next if item == '.' or item == '..'
			puts "Project => #{item.split('.')[0]}"
		end
	end

	def show(key, project)
		begin
			file = File.read File.join PATH, project + '.envly'
			decrypted_file = Musa::Decryption.decrypt Digest::SHA256.digest(key), file
			parsed_envs = JSON.parse decrypted_file
			parsed_envs.map { |k, v| "#{k}=#{v}" }
		rescue => e
			puts e.message
			exit 0
		end
	end

	def load(key, project)
		file = File.read File.join PATH, project + '.envly'
		decrypted_file = Musa::Decryption.decrypt Digest::SHA256.digest(key), file
		parsed_envs = JSON.parse decrypted_file
		parsed_envs.map { |k, v| "#{k}=#{v}" }
	end
end
