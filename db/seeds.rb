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

