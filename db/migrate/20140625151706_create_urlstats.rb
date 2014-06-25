class CreateUrlstats < ActiveRecord::Migration
  def change
    create_table :urlstats do |t|
      t.string :fullurlid
      t.string :ip

      t.timestamps
    end
  end
end
