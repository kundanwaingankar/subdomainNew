class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable
  validates :domain_name ,presence: true, uniqueness: {case_sensitive: false}, length: {in: 6..12, too_long: "%{count} characters minimum allowed",too_short: "%{count} characters maximum allowed"}
  validates_exclusion_of :domain_name, in: ['www', 'mail', 'ftp'], message: 'is not available'
end
