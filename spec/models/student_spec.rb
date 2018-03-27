require 'rails_helper'

describe Student do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
