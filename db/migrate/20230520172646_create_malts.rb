# frozen_string_literal: true

class CreateMalts < ActiveRecord::Migration[7.0]
  def change
    create_table :malts do |t|
      t.string :name, null: false, index: { unique: true }
      t.decimal :amount, null: false
      t.string :provider
      t.string :classification, null: false, default: 'brew_malts'

      t.timestamps
    end
  end
end
