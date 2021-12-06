class FlipLoginPage < SitePrism::Page
  set_url '/login'

  element :page_title, 'h1'
  element :input_email, "input[name='email']"
  element :input_password, "input[name='password']"
  element :btn_login, "button[type='submit']"
  element :btn_forgot_password, :xpath, "//a[text()='Lupa password?']"
end