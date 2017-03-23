class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :status,         null: false, default: "opened"
      t.string :description
      t.datetime :due_date
      t.timestamps null: false

      t.references :user, index: true, foreign_key: true
    end
  end
end
