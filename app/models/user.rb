class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          authentication_keys: [:name]

  validates :name, presence: true
  
  has_one_attached :image
  has_many :perfumes
  mount_uploader :image, ImageUploader

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["name = :value", { :value => name }]).first
    else
      where(conditions).first
    end
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

  # def self.post_favorites_by(user_params)
  #   return false if perfume_params[:image].nil?
  #   User.transaction do
  #     user_params[:image].each do |image|
  #       new_image = User.new(name: user_params[:favorite], image: image)
  #       return false unless new_image.save!
  #     end
  #   end

  #   true
  # end
end