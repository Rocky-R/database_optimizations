class ReportsController < ApplicationController
  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []

    if @assembly.nil?
      render plain: "Please specify Assembly name in the paramters."
    else
      @hits = @assembly.hits.to_a
    end
    @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
  end
end
