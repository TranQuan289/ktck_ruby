class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :ten144
      t.string :dacdiem144
      t.string :mausac144
      t.string :kichthuoc144
      t.string :taptinhsinhhoat144
      t.string :noisong144
      t.timestamps
    end
  end
end
