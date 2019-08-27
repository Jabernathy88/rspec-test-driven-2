require 'rails_helper'

RSpec.describe Console, type: :model do
  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        console = described_class.new
        expect(console).to_not be_valid
      end
  end  

end
