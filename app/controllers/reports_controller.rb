class ReportsController < ApplicationController

  def email_notification
  end

  def all_data
    @assembly = Assembly.find_by_name(params[:name])
    @hits = []

    render plain: 'Please specify Assembly name in
        the paramters.' if @assembly.nil?
    @hits = @assembly.hits.to_a
    @hits.sort! { |a, b| b.percent_similarity <=> a.percent_similarity }
  end

  def send_mail
    SendMailer.confirmation(params[:address]).deliver_now
    redirect_to root_url
  end
end
