require 'spec_helper'

describe Item do
 it "validates uniqueness of name" do
    create(:item)
    should validate_uniqueness_of(:name)
  end

 it { should validate_presence_of(:name) }
end
