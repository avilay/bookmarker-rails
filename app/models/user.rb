require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :email, :hashed_password, :salt, :name, :password, :password_confirmation
  
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_confirmation_of :password
  
  attr_accessor :password_confirmation
  attr_reader :password
  
  validate :password_must_be_present
  
  def User.authenticate(email, password)
    if user = find_by_email(email)
      if user.hashed_password == hash_password(password, user.salt)
        user
      end
    end
  end
  
  def User.hash_password(password, salt)
    Digest::SHA2.hexdigest(password + 'wibble' + salt)
  end
  
  def password=(password)
    @password = password
    
    if password.present?
      generate_salt
      self.hashed_password = self.class.hash_password(password, salt)
    end
  end
  
  private
  
    def password_must_be_present
      errors.add(:password, "Missing password") unless hashed_password.present?
    end
    
    def generate_salt
      self.salt = self.object_id.to_s + rand.to_s
    end
end
