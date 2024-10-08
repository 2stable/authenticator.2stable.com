data_hash.each do |array|
    host = data_hash[i]["host"]
    name = data_hash[i]["name"]
    doc = data_hash[i]["doc"]
    # permalink = data_map[host] || "/services/:title/"
    png = Dir.glob("assets/img/2fa-services/Icons/#{host}.png").first()
    svg = Dir.glob("assets/img/2fa-services/Icons/#{host}.svg").first()
    img = png.nil? == true ? svg : png
    File.open("_services/#{host}.html", "w") {|f| f.write(
  "---
  layout: cover
  title: Authenticator App for #{name}
  description: How to enable Two-Factor Authentication for #{name} using Authenticator App by 2Stable for #{name}
  permalink: /services/:title/
  index: #{i}
  tags: '2fa totp'
  service-name: #{name}
  image:
    path: https://authenticator.2stable.com/#{img}
    alt: Authenticator App for #{name}
  ---
  <div class="+'"container"'+">{% include service.html %}</div>"
  )}
     i += 1
  end