class User < ApplicationRecord
  has_many :feeds
  has_many :feed_comments

  has_many :events
  has_many :event_comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end