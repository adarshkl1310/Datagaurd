require 'rails_helper'

describe Employee, type: :model do
    subject {
      described_class.new(name: 'A employee name')
    }

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'it not valid without a employee name' do
        subject.name = nil
        expect(subject).to_not be_valid
    end
end
    