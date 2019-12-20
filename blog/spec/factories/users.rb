FactoryBot.define do  
  factory :user do
    email { FFaker::Internet.email }
    name { FFaker::NameMX.first_name }
    last_name { FFaker::NameMX.last_name }
    work_place { FFaker::Company.name }
    mobile_phone { FFaker::PhoneNumberMX.international_mobile_phone_number }  
  end
end