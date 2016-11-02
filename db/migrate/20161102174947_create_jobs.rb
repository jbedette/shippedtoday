class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :jobDescription
      t.string :jobOrigin
      t.string :jobDestination
      t.float :jobCost
      t.integer :jobContainersAmount

      t.timestamps
    end
  end
end
