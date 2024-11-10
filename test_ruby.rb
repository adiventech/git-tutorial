# script.rb
require 'httparty'

# Example of making a GET request to a public API
response = HTTParty.get('https://api.github.com/repos/rails/rails')
repo_data = response.parsed_response

output =  "Repository: #{repo_data['name']}"+"/n"
output = output + "Description: #{repo_data['description']}" + "/n"
output = output +  "Stars: #{repo_data['stargazers_count']}" + "/n"
output = output + "Forks: #{repo_data['forks_count']}"

puts output
