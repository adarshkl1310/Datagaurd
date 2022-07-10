require 'rails_helper'

describe Team, type: :model do
    subject {
      described_class.new(name: 'A team')
    }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'it not valid without a team name' do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it 'it not valid without a restaurant name' do
        subject.restaurant_name = nil
        expect(subject).to_not be_valid
    end

    it 'it not valid without a leader name' do
      subject.employee = nil
      expect(subject).to_not be_valid
    end

end
