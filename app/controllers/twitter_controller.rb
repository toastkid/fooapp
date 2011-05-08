class TwitterController < ApplicationController
#  respond_to :js

  def index
  
  end
  
  def update
    @client = Twitter::Client.new
    begin
      @client.update(params[:tweet])
      @successful = true
    rescue 
      @message = $!.message
      ldb "Exception: #{$!.message}"
    end
    respond_to do |format|
      format.js do 
        render :update do |page|
          if @successful
            page.replace "tweets", :partial => "twitter/tweets", :object => Twitter.home_timeline[0..4]
          else
            page.alert "Post failed: #{@message}"
          end
        end  
      end
    end
  end
  
end
