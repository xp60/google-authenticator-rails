class User < ApplicationRecord


  acts_as_google_authenticated lookup_token: :salt, drift: 30, issuer: 'xyz'
  #acts_as_google_authenticated issuer: 'flycash', lookup_token: :salt

  before_save {|record| record.salt = SecureRandom.hex unless record.salt } 
  after_create {|record| record.set_google_secret }
end
