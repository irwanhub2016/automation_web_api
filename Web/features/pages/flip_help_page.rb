class FlipHelpPage < SitePrism::Page
  element :page_title, 'header span'
  element :btn_informasi_umum, :xpath, "//span[contains(@class,'blocks-item-title')][text()='Informasi Umum']"
  element :btn_flip, :xpath, "//span[contains(@class,'blocks-item-title')][text()='Flip']"
  element :btn_big_flip, :xpath, "//span[contains(@class,'blocks-item-title')][text()='Big Flip']"
end