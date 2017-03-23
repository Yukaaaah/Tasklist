class CreateChildren < ActiveRecord::Migration
  def change
          create_table :children do |t|
            t.string   :status,       null: false, default: "opened"
            t.string   :description
            t.datetime :due_date
            t.integer  :parent_id
            t.integer  :user_id
            t.timestamps              null: false

            t.references :user, index: true, foreign_key: true
        end
  end
end
