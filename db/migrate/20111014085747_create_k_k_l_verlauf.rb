class CreateKKLVerlauf < ActiveRecord::Migration
  def self.up
    create_table(:KKLVerlauf, :index => false) do |t|
      # Kontonummer PS1, FS
      t.integer :ktoNr, :null => false, :limit => 5
      # KKLAblaufDatum PS2
      t.date :kklAbDatum, :null => false
      # KKL
      t.string :kkl, :null => false, :uniqueness => true, :limit => 1
    end
  end

  def self.down
    drop_table :KKLVerlauf
  end
end