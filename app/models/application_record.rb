class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details
      t.booelan :completed, default: 0

      t.timestamps
    end
  end
end
