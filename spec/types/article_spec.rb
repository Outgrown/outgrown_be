require 'rails_helper'

describe Types::ArticleType, type: :graphql do
  subject { described_class }
  it { is_expected.to have_field(:id).of_type('ID!') }
  it { is_expected.to have_field(:name).of_type('String') }
  it { is_expected.to have_field(:status).of_type('String') }
  it { is_expected.to have_field(:image_link).of_type('String') }
  it { is_expected.to have_field(:alt_image).of_type('String') }
  it { is_expected.to have_field(:article_type).of_type('String') }
  it { is_expected.to have_field(:age_group).of_type('String') }
  it { is_expected.to have_field(:color).of_type('String') }
  it { is_expected.to have_field(:gender).of_type('String') }
  it { is_expected.to have_field(:condition).of_type('String') }
  it { is_expected.to have_field(:description).of_type('String') }
  it { is_expected.to have_field(:price).of_type('Int') }
  it { is_expected.to have_field(:user_id).of_type('Int') }
end
