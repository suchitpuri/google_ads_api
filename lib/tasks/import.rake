require 'nokogiri'

namespace :import do
  desc "Import Campaign Data From Xml"
  task campaign: :environment do
    
    file = File.read("./raw/campaign_report.xml")
    xml = Nokogiri::XML(file)
    rows = xml.xpath("//row")

    rows.each do |row|
        invalid_click_rate = row["invalidClickRate"].gsub('%','').to_f

        campaign = Campaign.new({
         campaign_state: row["campaignState"],
         campaign: row["campaign"],
         budget: row["budget"].to_f,
         status: row["status"],
         campaign_type: row["campaignType"],
         campaign_subtype: row["campaingSubtype"],
         clicks: row["clicks"].to_i,
         impressions: row,
         ctr: row["ctr"].to_f,
         avg_cpc: row["avgCPC"].to_f,
         cost: row["cost"].gsub(",","").to_f,
         avg_position: row["avgPosition"].to_f,
         conversions: row["conversions"].to_i,
         cost_conv: row["costConv"].to_f,
         conversion_rate: row["convRate"].to_f,
         view_through_conversions: row['view_through_conversions'].to_i,
         labels: row["labels"],
         est_total_conversions: row["estTotalConv"].to_i,
         unique_cookies: row["uniqueCookies"],
         avg_impr_freq_per_cookie: row["avgImprFreqPerCookie"].to_f,
         campaign_id: row["campaignID"],
         bid_strategy_type: row["bidStrategyType"],
         bid_strategy_id: row["bidStrategyID"],
         bid_startegy_name: row["bidStartegyName"],
         avg_cpm: row["avgCPM"].to_f,
         total_cost: row["totalCost"].gsub(",","").to_f,
         invalid_clicks: row["invalidClicks"].to_i,
         invalid_click_rate: invalid_click_rate,
         cost_est_total_conv: row["costEstTotalConv"].to_f,
         est_total_conv_rate: row["estTotalConvRate"].gsub("%","").to_f,
         est_total_conv_value: row["estTotalConvValue"].to_f,
         est_total_conv_value_cost: row["estTotalConvValueCost"].to_f,
         value_est_total_conv: row["valueEstTotalConv"].to_f,
         est_total_conv_value_click: row["estTotalConvValueClick"].to_f,
         est_cross_device_conv: row["estCrossDeviceConv"].to_f,
         converted_clicks: row["convertedClicks"].to_i,
         cost_converted_click: row["costConvertedClick"].to_f,
         click_conversion_rate: row["clickConversionRate"].gsub("%","").to_f,
         total_conv_value: row["totalConvValue"].to_f,
         conv_value_cost: row["convValueCost"].to_f,
         conv_value_click: row["convValueClick"].to_f,
         value_converted_click: row["valueConvertedClick"].to_f,
         value_conv: row["valueConv"].to_f,
         conv_opt: row["convOpt"].to_i,
         total_conv_value_opt: row["totalConvValueOpt"].to_f,
         cost_conv_opt: row["costConvOpt"].to_f,
         conv_rate_opt: row["convRateOpt"].gsub("%","").to_f,
         conv_value_cost_opt: row["convValueCostOpt"].to_f,
         conv_value_click_opt: row["convValueClickOpt"].to_f,
         value_conv_opt: row["valueConvOpt"].to_f,
         phone_call_conv: row["phoneCallConv"].to_i

        })
        campaign.save
    end
    # require "pry"; binding.pry
    p "total Campaings  #{Campaign.all.size}"
  end

end
