class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy, inverse_of: :article
  accepts_nested_attributes_for :comments, reject_if: :all_blank, allow_destroy: true
end
