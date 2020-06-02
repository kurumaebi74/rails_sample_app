class CreateMicroposts < ActiveRecord::Migration[6.0]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :micropost, [:user_id,:create_at]
    #Ex:- add_index("admin_users", "username")
  end
end
