# frozen_string_literal: true

class User < ActiveRecord::Base
  ROLES = %i[superadmin admin supervisor user]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :merchants, optional: true
end
