class User < ApplicationRecord
  validates_uniqueness_of :username, :case_sensitive => false
  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  has_many :messages
  has_secure_password
end
