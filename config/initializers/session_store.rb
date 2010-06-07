# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lovecloud_session',
  :secret      => 'fab601916f2984e2101c9f12950bc487209086e5c6ec505416e97859f4d68d6b4e893c362217e42dcc1e8b6e95ad4f1bce93defca2f3d5c3cff7b0fe299b6556'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
