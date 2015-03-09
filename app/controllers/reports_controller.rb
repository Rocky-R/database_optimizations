class ReportsController < ApplicationController
  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []
    
    render plain: "Please specify Assembly name in the paramters." if @assembly.nil?
    @hits = @assembly.hits.to_a
    @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
  end
end
