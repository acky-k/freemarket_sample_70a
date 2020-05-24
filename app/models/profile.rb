class Profile < ApplicationRecord

  validates :family_name,
  presence: true,                     # 必須にしたい！
  format: { with: /\A[ぁ-んァ-ン一-龥]/ } 

  validates :first_name,
  presence: true,
  format: { with: /\A[ぁ-んァ-ン一-龥]/ } 

  validates :family_name_kana,
  presence: true,
  format: { with: /\A[ァ-ヶー－]+\z/ } 

  validates :first_name_kana,
  presence: true,
  format: { with: /\A[ァ-ヶー－]+\z/ } 

  validates :birth_year,
  presence: true,
  format: { with: /\A[0-9]+\z/ } 

  validates :birth_month,
  presence: true,
  format: { with: /\A[0-9]+\z/ } 

  validates :birth_day,
  presence: true,
  format: { with: /\A[0-9]+\z/ } 

  belongs_to :user
  
end
