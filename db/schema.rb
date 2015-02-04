# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150201083934) do

  create_table "campaigns", force: :cascade do |t|
    t.string   "campaign_state",             limit: 255
    t.string   "campaign",                   limit: 255
    t.decimal  "budget",                                 precision: 63, scale: 2
    t.string   "status",                     limit: 255
    t.string   "campaign_type",              limit: 255
    t.string   "campaign_subtype",           limit: 255
    t.integer  "clicks",                     limit: 4
    t.integer  "impressions",                limit: 4
    t.decimal  "ctr",                                    precision: 4,  scale: 2
    t.decimal  "avg_cpc",                                precision: 10, scale: 2
    t.decimal  "cost",                                   precision: 63, scale: 2
    t.decimal  "avg_position",                           precision: 2,  scale: 1
    t.integer  "conversions",                limit: 4
    t.decimal  "cost_conv",                              precision: 63, scale: 2
    t.decimal  "conversion_rate",                        precision: 4,  scale: 2
    t.integer  "view_through_conversions",   limit: 4
    t.string   "labels",                     limit: 255
    t.integer  "est_total_conversions",      limit: 4
    t.integer  "unique_cookies",             limit: 4
    t.decimal  "avg_impr_freq_per_cookie",               precision: 10
    t.string   "campaign_id",                limit: 255
    t.string   "bid_strategy_type",          limit: 255
    t.string   "bid_strategy_id",            limit: 255
    t.string   "bid_startegy_name",          limit: 255
    t.decimal  "avg_cpm",                                precision: 63, scale: 2
    t.decimal  "total_cost",                             precision: 63, scale: 2
    t.integer  "invalid_clicks",             limit: 4
    t.decimal  "invalid_click_rate",                     precision: 63, scale: 2
    t.decimal  "cost_est_total_conv",                    precision: 63, scale: 2
    t.decimal  "est_total_conv_rate",                    precision: 63, scale: 2
    t.decimal  "est_total_conv_value",                   precision: 63, scale: 2
    t.decimal  "est_total_conv_value_cost",              precision: 63, scale: 2
    t.decimal  "value_est_total_conv",                   precision: 63, scale: 2
    t.decimal  "est_total_conv_value_click",             precision: 63, scale: 2
    t.decimal  "est_cross_device_conv",                  precision: 63, scale: 2
    t.integer  "converted_clicks",           limit: 4
    t.decimal  "cost_converted_click",                   precision: 63, scale: 2
    t.decimal  "click_conversion_rate",                  precision: 63, scale: 2
    t.decimal  "total_conv_value",                       precision: 63, scale: 1
    t.decimal  "conv_value_cost",                        precision: 63, scale: 1
    t.decimal  "conv_value_click",                       precision: 63, scale: 1
    t.decimal  "value_converted_click",                  precision: 63, scale: 1
    t.decimal  "value_conv",                             precision: 63, scale: 1
    t.integer  "conv_opt",                   limit: 4
    t.decimal  "total_conv_value_opt",                   precision: 63, scale: 1
    t.decimal  "cost_conv_opt",                          precision: 63, scale: 2
    t.decimal  "conv_rate_opt",                          precision: 63, scale: 2
    t.decimal  "conv_value_cost_opt",                    precision: 63, scale: 1
    t.decimal  "conv_value_click_opt",                   precision: 63, scale: 1
    t.decimal  "value_conv_opt",                         precision: 63, scale: 1
    t.decimal  "phone_call_conv",                        precision: 63, scale: 1
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

end
