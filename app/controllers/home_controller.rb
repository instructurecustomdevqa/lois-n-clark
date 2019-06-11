class HomeController < ApplicationController
  def index
    @res = Report.get_list_of_reports
  end
end
