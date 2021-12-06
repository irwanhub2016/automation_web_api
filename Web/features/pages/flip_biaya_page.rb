class FlipBiayaPage < SitePrism::Page
  element :page_title, '.biaya-title b'
  element :card_flip_reguler, :xpath, "//div[@class='header-biaya'][contains(text(), 'Flip Reguler')]"
  element :card_big_flip, :xpath, "//div[@class='header-biaya'][contains(text(), 'Big Flip')]"
  element :btn_register_flip_reguler, :xpath, "//a[contains(@class,'btn-flip')][text()='Daftar Flip Reguler']"
  element :btn_register_big_flip, :xpath, "//a[contains(@class,'btn-flip')][contains(text(),'Pelajari Big Flip')]"
end