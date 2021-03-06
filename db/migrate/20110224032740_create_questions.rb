class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.references :poll
      t.string :name
      t.integer :votes, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
