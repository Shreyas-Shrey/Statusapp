class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :message
      t.references :user, index: true

      t.timestamps
    end
  end
end
