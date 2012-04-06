["Chad", "Herbert", "Josh", "Rob"].each do |developer|
  Developer.find_or_create_by_name(developer)
  puts " - Adding #{developer} to database.."
end

@u = AdminUser.find(1)
@u.email = "chad@chadsteele.net"
@u.password = "seven6er"
@u.save