require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'services_list.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  s = Service.new
  s.program_name = row["program_name"]
  s.street_address = row["street_address"]
  s.city = row["city"]
  s.state = row["state"]
  s.latitude = row["latitude"]
  s.longitude =row["longitude"]
  s.phone = row["phone"]
  s.web_address = row["web_address"]
  s.hours_of_operation = row["hours_of_operation"]
  s.description = row["description"]
  s.comments = row["comments"]
  s.served_populations = row["served_populations"]
  s.location_notes = row["location_notes"]
  s.days_of_the_week = row ["days_of_the_week"]
  s.service_code = row["service_code"]
  s.save
end

puts "there are now #{Service.count} rows in the services table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'clothing.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  s = Clothing.new
  s.program_name = row["program_name"]
  s.address = row["address"]
  s.address_comments = row["address_comments"]
  s.notes = row["notes"]
  s.web_address = row["web_address"]
  s.populations_served = row["populations_served"]
  s.gender = row["gender"]
  s.latitude = row["latitude"]
  s.longitude =row["longitude"]
  s.phone_number = row["phone_number"]

  s.save
end

puts "there are now #{Clothing.count} rows in the clothing table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'hot_link.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  s = PopularLink.new
  s.name = row["name"]
  s.url = row["url"]
  s.image = row["image"]
  s.description = row["description"]

  s.save
end

puts "there are now #{PopularLink.count} rows in the popular links table"