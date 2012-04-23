FactoryGirl.define do
  sequence :name do |num|
    "Ruby Book #{num}"
  end

  factory :item do
    name
    description "Its hotness!"
  end
end
