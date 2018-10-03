class User < ApplicationRecord
validates :username, presencs:true, uniqueness: { case_sensitive: false }, 
  length: { minimin:3, maximum:25 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validate :emeil, presenc: true, length: { maximum: 105 },
  uniqueness: { case_sensotive: false },
  format: { with: VALID_EMAIL_REGEX }
end
