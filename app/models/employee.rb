class Employee < ApplicationRecord
  validates :fName, presence: true
  validates :lName, presence: true
  validates :dob, presence: true
  validates :gender, presence: true
  validates :email, presence: true
  validates :mobile, presence: true, length: {minimum: 10, maximum: 10}
  validates :address, presence: true
  validates :country, presence: true
  validates :salary, presence: true
  validates :socialAccount, presence: true

end