class DummyUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :password
    end
  end
end
