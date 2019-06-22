class StaticPagesController < ApplicationController
  def home

    @visitor_view_desc = "Welcome to Techweb.  This application catalogues all computer system hardware and software at Herga Home.
You can also log service issues and request troubleshooting.  Solutions to past technical issues are stored and made available for
future use."

    @notice_of_access_request= "To request access, please contact the systems administrator by email (herga.a@outlook.com) "
  end
end
