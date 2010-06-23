# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SimpleInventory_session',
  :secret      => 'ff5dea0100c5fd1b2dd6c0ccf4e45733ab0c46f507b3925eb5e217562ecad766039cf667aec022c2752afa789e919e122f709faf9f2b823e781929916553c064'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
