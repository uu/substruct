begin
  Preference.init_mail_settings()
rescue
  puts "[SUBSTRUCT WARNING]"
  puts "Mail server settings have not been initialized."
  puts "Check to make sure they've been set in the admin panel."
  # Don't care if this bombs out, because initially this won't have a value.
end

# Globals
ERROR_EMPTY  = 'Please fill in this field.'
ERROR_NUMBER = 'Please enter only numbers (0-9) in this field.'
