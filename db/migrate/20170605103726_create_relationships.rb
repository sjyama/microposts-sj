class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_talbe: :users }

      t.timestamps
      
      t.index [:user_id, :follow_id], unique: true
    end
  end
end
