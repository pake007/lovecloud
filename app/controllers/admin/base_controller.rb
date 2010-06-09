class Admin::BaseController < ApplicationController

  def set_content_type
    headers['Content-Type'] ||= 'text/html; charset=utf-8'
  end
end
