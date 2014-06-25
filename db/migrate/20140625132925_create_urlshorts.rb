class CreateUrlshorts < ActiveRecord::Migration
  def change
    create_table :urlshorts do |t|
      t.string :fullurl
      t.text :desc

      t.timestamps
    end
  end
end
