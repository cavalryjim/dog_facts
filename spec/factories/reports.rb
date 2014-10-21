# == Schema Information
#
# Table name: reports
#
#  id              :integer          not null, primary key
#  requestor_email :string(255)
#  microchip_id    :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
  end
end
