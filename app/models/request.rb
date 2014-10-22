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

class Request < ActiveRecord::Base
  include ActiveModel::Validations
  
  validates_presence_of :microchip_id
end
