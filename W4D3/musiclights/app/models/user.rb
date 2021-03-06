# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  before_validation :ensure_session_token

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: {minimum: 5}, allow_nil: true
  validates :session_token, presence: true



  private

  def password_cant_be_blank
    if password_digest == ""
      errors[:password_digest] << 'password can\'t be blank'
    end
  end

  def self.find_by_credentials

  end

  def self.generate_session_token

  end

  def reset_session_token!

  end

  def ensure_session_token

  end

  def password=

  end



end
