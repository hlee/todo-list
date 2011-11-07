class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.integer :bg_status
      t.integer :priority

      t.timestamps
    end
  end
end
