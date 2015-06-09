class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :provider
        t.string :uid
        t.string :email
        #t.string :full_name
        #t.string :company_name
        #t.string :time_zone
        #t.string :vat
        #t.string :language
      t.timestamps null: false
    end
  end
end
