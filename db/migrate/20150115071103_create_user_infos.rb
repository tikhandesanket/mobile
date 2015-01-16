class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :e_mail
      t.string :company_name
      t.string :position
      t.string :education
      t.integer :mark

      t.timestamps
    end
  end
end
