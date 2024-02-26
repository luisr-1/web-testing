module PageInitialization
  def home_page
    @home_page ||= HomePage.new
  end
end
