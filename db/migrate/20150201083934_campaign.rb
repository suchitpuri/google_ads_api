class Campaign < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :campaign_state
      t.string :campaign
      t.decimal :budget,:precision => 63, :scale => 2
      t.string :status
      t.string :campaign_type
      t.string :campaign_subtype
      t.integer :clicks
      t.integer :impressions
      t.decimal :ctr,:precision => 4, :scale => 2
      t.decimal :avg_cpc,:precision => 10, :scale => 2
      t.decimal :cost,:precision => 63, :scale => 2
      t.decimal :avg_position,:precision => 2, :scale => 1      
      t.integer :conversions
      t.decimal :cost_conv,:precision => 63, :scale => 2
      t.decimal :conversion_rate,:precision => 4, :scale => 2
      t.integer :view_through_conversions
      t.string :labels
      t.integer :est_total_conversions
      t.integer :unique_cookies
      t.decimal :avg_impr_freq_per_cookie
      t.string :campaign_id
      t.string :bid_strategy_type
      t.string :bid_strategy_id
      t.string :bid_startegy_name
      t.decimal :avg_cpm,:precision => 63, :scale => 2
      t.decimal :total_cost,:precision => 63, :scale => 2
      t.integer :invalid_clicks
      t.decimal :invalid_click_rate,:precision => 63, :scale => 2
      t.decimal :cost_est_total_conv,:precision => 63, :scale => 2
      t.decimal :est_total_conv_rate,:precision => 63, :scale => 2
      t.decimal :est_total_conv_value,:precision => 63, :scale => 2
      t.decimal :est_total_conv_value_cost,:precision => 63, :scale => 2
      t.decimal :value_est_total_conv,:precision => 63, :scale => 2
      t.decimal :est_total_conv_value_click,:precision => 63, :scale => 2
      t.decimal :est_cross_device_conv,:precision => 63, :scale => 2
      t.integer :converted_clicks
      t.decimal :cost_converted_click,:precision => 63, :scale => 2
      t.decimal :click_conversion_rate,:precision => 63, :scale => 2
      t.decimal :total_conv_value,:precision => 63, :scale => 1
      t.decimal :conv_value_cost,:precision => 63, :scale => 1
      t.decimal :conv_value_click,:precision => 63, :scale => 1
      t.decimal :value_converted_click,:precision => 63, :scale => 1
      t.decimal :value_conv,:precision => 63, :scale => 1
      t.integer :conv_opt
      t.decimal :total_conv_value_opt,:precision => 63, :scale => 1
      t.decimal :cost_conv_opt,:precision => 63, :scale => 2
      t.decimal :conv_rate_opt,:precision => 63, :scale => 2
      t.decimal :conv_value_cost_opt,:precision => 63, :scale => 1
      t.decimal :conv_value_click_opt,:precision => 63, :scale => 1
      t.decimal :value_conv_opt,:precision => 63, :scale => 1
      t.decimal :phone_call_conv,:precision => 63, :scale => 1
      t.timestamps null: false
    end
  end
end
