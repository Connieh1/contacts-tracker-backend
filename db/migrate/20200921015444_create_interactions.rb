class CreateInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :interactions do |t|
      t.belongs_to :contact, null: false, foreign_key: true
      t.datetime :date
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
