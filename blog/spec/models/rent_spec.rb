require 'rails_helper'

RSpec.describe Rent, type: :model do
  let(:rent) { FactoryBot.build(:rent) }

  describe 'Associations' do
    it { should belong_to :user }
    it { should belong_to :home }
  end

  describe 'Validations' do
    it { Rent::STATUS.sample }
  end

  context "When valid" do
    it { expect(rent).to be_valid } 

    it "when save is successful" do
      expect(rent.save).to be(true)
    end
  end
end