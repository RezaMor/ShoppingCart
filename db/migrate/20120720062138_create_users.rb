class CreateUsers < ActiveRecord::Migration
  def change
    create_table  :users do |t|
      t.string    :user_name,            :limit => 50,  :null => false
      t.string    :user_password_digest, :null  => false
      t.string    :user_email,           :null  => false
      t.string    :user_first_name,      :limit => 50,  :null => false
      t.string    :user_last_name,       :limit => 50,  :null => false
      t.string    :user_phone,           :limit => 32,  :null => false, :default => ''
      t.string    :user_city,            :limit => 100, :null => false, :default => ''
      t.string    :user_state,           :limit => 32,  :null => false, :default => ''
      t.string    :user_postal_code,     :limit => 10,  :null => false, :default => ''
      t.timestamp :user_regdate,         :null  => false
      t.timestamp :user_last_login,      :null  => false

      t.timestamps
    end
  end
end
