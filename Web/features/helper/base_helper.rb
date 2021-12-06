module BaseHelper
  def custom_wait(time_out = 30)
    Selenium::WebDriver::Wait.new(timeout: time_out, interval: 0.5, ignore: Selenium::WebDriver::Error::NoSuchElementError)
  end

  def parse_rp(string)
    string.gsub(/\D/, '').to_i
  end

  def connect_db
  	begin
      byebug
  		client = Mysql2::Client.new(:host => "sql6.freemysqlhosting.net", :port => "3306", :username => "sql6455768", :password => "GrwgCXTTHD", :database => "sql6455768")
  	rescue Exception => e
  		p 'Failed to connect db'
  		rescue Exception => e
  	else
  		client
  	end
  end
end
