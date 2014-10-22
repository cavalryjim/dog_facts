# == Schema Information
#
# Table name: requests
#
#  id                :integer          not null, primary key
#  requestor_email   :string(255)
#  microchip_id      :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  requestor_name    :string(255)
#  requestor_phone   :string(255)
#  requestee_name    :string(255)
#  requestee_email   :string(255)
#  requestee_phone   :string(255)
#  requestee_website :string(255)
#  requestee_type    :string(255)
#  animal_name       :string(255)
#  animal_species    :string(255)
#  animal_breed      :string(255)
#

require 'rails_helper'

RSpec.describe Request, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
