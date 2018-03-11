class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.float :ds53_growth
      t.float :ds40_growth
      t.integer :ds53_ct_id
      t.integer :user_id
      t.float :itl_in_53
      t.float :dc_in_conv
      t.integer :non_ttx_adds
      t.string :name
      t.float :cars_required
      t.boolean :cars_req_greater_0
      t.integer :ds53_idle

      t.timestamps

    end
  end
end
