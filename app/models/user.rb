class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :categories, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
