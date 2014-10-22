class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requestor_email
      t.string :microchip_id
      t.timestamps
    end
  end
end
