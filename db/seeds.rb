["Chad", "Herbert", "Josh", "Rob"].each do |developer|
  Developer.find_or_create_by_name(developer)
  puts " - Adding #{developer} to database.."
end