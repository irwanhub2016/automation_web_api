
When 'user able to click on {string} button' do |button_name|
  @button_name = button_name
  object_button = eval("@app.flip_home_page.btn_#{@button_name.downcase}")
  expect(object_button.visible?).to be true
  object_button.click
end

Then 'user should redirect to the correct page' do
  case @button_name
    when 'Bantuan'
      custom_wait.until { @app.flip_help_page.has_page_title? }
      aggregate_failures('Verify bantuan page') do
        expect(@app.flip_help_page.loaded?).to be true
        expect(@app.flip_help_page.page_title.visible?).to be true
        expect(@app.flip_help_page.btn_informasi_umum.visible?).to be true
        expect(@app.flip_help_page.btn_flip.visible?).to be true
        expect(@app.flip_help_page.btn_big_flip.visible?).to be true
      end
    when 'Karir'
      custom_wait.until { @app.flip_karir_page.has_page_title? }
      aggregate_failures('Verify karir page') do
        expect(@app.flip_karir_page.loaded?).to be true
        expect(@app.flip_karir_page.page_title.visible?).to be true
        expect(@app.flip_karir_page.txt_open_positions.visible?).to be true
        expect(@app.flip_karir_page.search_jobs.visible?).to be true
        expect(@app.flip_karir_page.page_title.text.downcase).to eql 'Flip Careers'.downcase        
      end
    when 'Biaya'
      custom_wait.until { @app.flip_biaya_page.has_page_title? }
      aggregate_failures('Verify biaya page') do
        expect(@app.flip_biaya_page.loaded?).to be true
        expect(@app.flip_biaya_page.page_title.visible?).to be true
        expect(@app.flip_biaya_page.card_flip_reguler.visible?).to be true
        expect(@app.flip_biaya_page.card_big_flip.visible?).to be true
        expect(@app.flip_biaya_page.btn_register_flip_reguler.visible?).to be true
        expect(@app.flip_biaya_page.btn_register_big_flip.visible?).to be true
        expect(@app.flip_biaya_page.page_title.text.downcase).to eql 'Pilih Layanan Flip yang Sesuai Kebutuhanmu'.downcase        
      end
    when 'Masuk'
      custom_wait.until { @app.flip_login_page.has_page_title? }
      aggregate_failures('Verify login page') do
        expect(@app.flip_login_page.loaded?).to be true
        expect(@app.flip_login_page.page_title.visible?).to be true
        expect(@app.flip_login_page.input_email.visible?).to be true
        expect(@app.flip_login_page.input_password.visible?).to be true
        expect(@app.flip_login_page.btn_login.visible?).to be true
        expect(@app.flip_login_page.btn_forgot_password.visible?).to be true
        expect(@app.flip_login_page.page_title.text.downcase).to include 'Silakan masuk'.downcase
      end
    end
end