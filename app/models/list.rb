class List < ApplicationRecord
  has_one_attached :image

   with_options presence: true do
    validates :title
    validates :body
  end
end
