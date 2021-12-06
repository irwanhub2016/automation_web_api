class DataTransactionPage < SitePrism::Page
  extend SitePrism::Table
  table :transfer_table, 'table' do
    column :id
    column :username
    column :source_bank
    column :destination_bank
    column :amount
  end
end