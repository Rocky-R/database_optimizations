class ReportsController < ApplicationController
  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []

    if @assembly.nil?
      render nothing: true
    else
      @assembly.sequences.each do |s|
        s.genes.each do |g|
          g.hits.each do |h|
            @hits << h
          end
        end
        @hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
      end
    end
  end
end
