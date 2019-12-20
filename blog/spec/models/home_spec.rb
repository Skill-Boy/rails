require 'rails_helper'

RSpec.describe Home, type: :model do
  let(:home) { FactoryBot.build(:home) }
  
  describe 'Associations' do
    it { should belong_to :owner }
    it { should have_many :rents }
  end
  
  describe 'Validations' do
    it { should validate_presence_of :price }
    it { should validate_presence_of :extra_service }
    it { should validate_presence_of :total_amount }
    it { Home::STATUS.sample }
  end
 
  context "When valid" do
    it { is_expected.to be_mongoid_document }
    it { expect(home).to be_valid }

    it "when save is successful" do
      expect(home.save).to be(true)
    end
  end    
end