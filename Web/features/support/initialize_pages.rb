class InitializePages
  def flip_biaya_page
  	@flip_biaya_page ||= FlipBiayaPage.new
  end

  def flip_help_page
  	@flip_help_page ||= FlipHelpPage.new
  end

  def flip_karir_page
  	@flip_karir_page ||= FlipKarirPage.new
  end

  def flip_login_page
  	@flip_login_page ||= FlipLoginPage.new
  end

  def flip_home_page
  	@flip_home_page ||= FlipHomepage.new
  end

  def data_transaction_page
  	@data_transaction_page ||= DataTransactionPage.new
  end
end
