require 'rails_helper'

describe Address do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:description, :street, :city, :state, :zip) }
  end
end
