FactoryGirl.define do
  factory :post do
    description 'Some awesome snap'
    picture Rails.root.join('spec/images/old-man1.jpg').open
  end
end