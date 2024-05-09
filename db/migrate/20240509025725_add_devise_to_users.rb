# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def self.up
    # Don't add anything here
  end

  def self.down
    change_table :users do |t|
      ## Remove the columns added by Devise's migration
      t.remove :reset_password_token, :reset_password_sent_at, :remember_created_at
    end

    remove_index :users, :email
    remove_index :users, :reset_password_token
  end
end