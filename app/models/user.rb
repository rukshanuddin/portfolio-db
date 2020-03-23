class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :projects, class_name: 'Project', foreign_key: 'user_id', dependent: :destroy
  has_many :flatiron_modules, through: :projects, source: :projects_table_foreign_key_to_flatiron_modules_table

  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.name = auth.info.name
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
