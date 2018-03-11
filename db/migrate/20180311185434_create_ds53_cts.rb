class CreateDs53Cts < ActiveRecord::Migration
  def change
    create_table :ds53_cts do |t|
      t.float :jan
      t.float :feb
      t.float :mar
      t.float :apr
      t.float :may
      t.float :jun
      t.float :jul
      t.float :aug
      t.float :sep
      t.float :oct
      t.float :nov
      t.float :dec
      t.string :name
      t.integer :user_id

      t.timestamps

    end
  end
end
