class Article < ApplicationRecord
  validates :name, presence: true
  validates :status, presence: true
  validates :image_link, presence: true
  validates :alt_image, presence: true
  validates :article_type, presence: true
  validates :age_group, presence: true
  validates :color, presence: true
  validates :gender, presence: true
  validates :condition, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :user_id, presence: true

  belongs_to :user

  enum status: {
    unavailable: 0,
    available:   1,
    pending:     2
  }

  enum article_type: {
    tops:       0,
    pants:      1,
    activewear: 2,
    formal:     3,
    onesies:    4,
    other:      5
  }

  enum age_group: {
    baby:       0,
    toddler:    1,
    little_kid: 2,
    big_kid:    3
  }

  enum gender: {
    unisex: 0,
    boy:    1,
    girl:   2
  }

  enum condition: {
    fair:    0,
    good:    1,
    great:   2,
    perfect: 3
  }
end
