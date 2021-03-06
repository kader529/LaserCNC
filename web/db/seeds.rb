# Check if files directory exists
# create if it doesn't

fs = Goldfinger::App::FILESTORE
Dir.mkdir fs if !File.directory?(fs)

# Create development admin account
u = Goldfinger::App::User.new
u.username = 'admin'
u.firstname = 'Joe'
u.lastname = 'Smith'
u.password = 'asdf'
u.password_confirmation = 'asdf'
u.email = 'admin@none.com'
u.active = true
u.admin = true

u.save

# Create development non-admin user
u = Goldfinger::App::User.new
u.username = 'test'
u.firstname = 'Bob'
u.lastname = 'Someone'
u.password = 'asdf'
u.password_confirmation = 'asdf'
u.email = 'test@none.com'
u.active = true
u.admin = false

u.save
