class CreateServiceProvider < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.references :enrollment
      t.string :name, limit: 200
      t.string :facility_name, limit: 200
      t.string :provider_name, limit: 200
      t.string :npi, limit: 200
      t.string :tax_id, limit: 200
      t.string :address, limit: 200
      t.string :city, limit: 200
      t.string :state, limit: 200
      t.string :zip, limit: 200
      t.string :ptan, limit: 200
      t.string :payer_id, limit: 200
    end
  end
end
