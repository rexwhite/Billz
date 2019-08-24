class ApplicationController < ActionController::Base

  def hello
    render html: "main page goes here!"
  end
end
