require 'rails_helper'

describe Types::UserType, type: :graphql do
  subject { described_class }

  it { is_expected.to have_field(:id) }
  describe 'id' do
    subject { Types::UserType.fields['id'] }

    it { is_expected.to be_of_type('ID!') }
    it { is_expected.not_to be_of_type('Float!') }
  end
  it { is_expected.to have_field(:name) }
  describe 'name' do
    subject { Types::UserType.fields['name'] }

    it { is_expected.to be_of_type('String') }
    it { is_expected.not_to be_of_type('Float!') }
  end
end
