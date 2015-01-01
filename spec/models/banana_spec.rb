require 'rails_helper'

RSpec.describe Banana, :type => :model do
  describe '#initialize' do
    it 'does not raise error' do
      expect { Banana.new }.to_not raise_error
    end
  end
end
