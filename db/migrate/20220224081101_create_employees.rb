class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :fName
      t.string :lName
      t.date :dob
      t.string :gender
      t.string :email
      t.string :mobile
      t.string :address
      t.string :country
      t.integer :salary
      t.string :socialAccount

      t.timestamps
    end
  end
end
