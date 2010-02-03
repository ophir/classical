# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_classical_session',
  :secret      => '00f489c65e9641eb2314f6a5de4c6d28583d50114cbc41dc059d9ce5663ccf59c3d68177ea0e24d616ea4b989ef326713b9bf248996a86face70763c61e76ce0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
