# == Schema Information
#
# Table name: requests
#
#  id              :integer          not null, primary key
#  requestor_email :string(255)
#  microchip_id    :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe Request, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
