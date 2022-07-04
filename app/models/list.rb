class List < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_one_attached :list_image

   with_options presence: true do
    validates :title
    validates :body
  end

  def get_list_image(width, height)
  unless list_image.attached?
    file_path = Rails.root.join('app/assets/images/no_image.jpg')
    list_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
    list_image.variant(resize_to_limit: [width, height]).processed
  end

end
