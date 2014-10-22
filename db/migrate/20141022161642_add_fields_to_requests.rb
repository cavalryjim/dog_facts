class AddFieldsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :requestor_name, :string
    add_column :requests, :requestor_phone, :string
    add_column :requests, :requestee_name, :string
    add_column :requests, :requestee_email, :string
    add_column :requests, :requestee_phone, :string
    add_column :requests, :requestee_website, :string
    add_column :requests, :requestee_type, :string
    add_column :requests, :animal_name, :string
    add_column :requests, :animal_species, :string
    add_column :requests, :animal_breed, :string
  end
  
end
