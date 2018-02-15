class Profile < ApplicationRecord
  enum gender: [:female, :male, :other]
  belongs_to :user
end
