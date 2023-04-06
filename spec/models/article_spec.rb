require 'rails_helper'

RSpec.describe Article, type: :model do 
  it {should belong_to(:user)}

  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:status)}
  it { should validate_presence_of(:image_link)}
  it { should validate_presence_of(:alt_image)}
  it { should validate_presence_of(:article_type)}
  it { should validate_presence_of(:age_group)}
  it { should validate_presence_of(:color)}
  it { should validate_presence_of(:gender)}
  it { should validate_presence_of(:condition)}
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:price)}
  it { should validate_presence_of(:user_id)}
end
