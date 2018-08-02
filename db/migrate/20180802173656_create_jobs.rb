class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.text :description
      t.text :url

      t.timestamps
    end
  end
end
