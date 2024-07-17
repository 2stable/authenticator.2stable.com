require 'json'

# Read data from JSON file
data_hash = JSON.parse(File.read('./_data/domains.json'))

# Create the _services directory if it doesn't exist
Dir.mkdir('_services') unless File.directory?('_services')

data_hash.each_with_index do |service, i|
  host = service['host']
  name = service['name']
  doc = service['doc']

  # Find image file (PNG or SVG)
  img = Dir.glob("assets/img/2fa-services/Icons/#{host}.{png,svg}").first

  # Determine the image path based on availability
  img_path = if img
               "https://authenticator.2stable.com/#{img}"
             else
               ''
             end

  # Create and write the HTML file for the service
  File.open("_services/#{host}.html", 'w') do |f|
    f.puts("---")
    f.puts("layout: cover")
    f.puts("title: Authenticator App for #{name}")
    f.puts("description: How to enable Two-Factor Authentication for #{name} using Authenticator App by 2Stable for #{name}")
    f.puts("permalink: /services/:title/")
    f.puts("index: #{i}")
    f.puts("tags: '2fa totp'")
    f.puts("service-name: #{name}")
    f.puts("image:")
    f.puts("  path: #{img_path}")
    f.puts("  alt: Authenticator App for #{name}")
    f.puts("---")
    f.puts("<div class='container p-0'>{% include service.html %}</div>")
  end
end