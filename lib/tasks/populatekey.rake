namespace :db do
  desc "Fill database with sample data "
  task populate: :environment do

    250.times do
      company = Faker::Company.name
      description = Faker::Lorem.paragraph
      number = Faker::Number.number(5)
      checkout = Faker::Date.between(2.days.ago, Date.today)
      checkin = Faker::Date.between(2.days.ago, Date.today)

      Key.create!(Company: company, Description: description, Number: number,
          Checkout: checkout, Checkin: checkin)
    end

  end
end
