class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :requestor_email
      t.string :microchip_id
      t.timestamps
    end
  end
end
