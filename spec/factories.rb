FactoryGirl.define do
  factory :contact do
    name "my contact"
    avatar { File.open(Rails.root.join('spec', 'support', 'cat.jpg')) }
  end
end