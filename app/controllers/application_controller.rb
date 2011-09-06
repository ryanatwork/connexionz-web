class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def connexionz
    @client = Connexionz::Client.new({:endpoint => "http://businfo.santa-clarita.com/"})
  end

end
