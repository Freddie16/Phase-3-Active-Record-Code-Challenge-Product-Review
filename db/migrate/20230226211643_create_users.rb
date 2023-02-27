class CreateUsers < ActiveRecord::Migration[6.1]
    def change
      create_table :users do |t|
        ## Database authenticatable
        t.string :name
      end
     end
    end