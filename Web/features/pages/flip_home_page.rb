class FlipHomepage < SitePrism::Page
  set_url '/'
  element :btn_bantuan, :xpath, "//a[contains(@class,'btn-grey-flip')][text()='Bantuan']"
  element :btn_karir, :xpath, "//a[contains(@class,'btn-grey-flip')][text()='Karir']"
  element :btn_biaya, :xpath, "//a[contains(@class,'btn-grey-flip')][text()='Biaya']"
  element :btn_masuk, :xpath, "//a[contains(@class,'btn-grey-flip')][text()='Masuk']"
end