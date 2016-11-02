class CreateJoinTableJobShip < ActiveRecord::Migration[5.0]
  def change
    create_join_table :jobs, :ships do |t|
      # t.index [:job_id, :ship_id]
      # t.index [:ship_id, :job_id]
    end
  end
end
