FactoryGirl.define do
  factory :user do
    username              FFaker::Internet.user_name
    first_name            FFaker::Name.first_name
    last_name             FFaker::Name.last_name
    email                 FFaker::Internet.email
    password              "password"
    password_confirmation "password"
    confirmed_at Date.today
  end

    factory :user_wrong_pw, parent: :user do |u|
      u.password_confirmation "wrong_pw"
    end

    factory :user_invalid_username, parent: :user do |u|
      u.username nil
    end

    factory :user_invalid_email, parent: :user do |u|
      u.email nil
    end
end
