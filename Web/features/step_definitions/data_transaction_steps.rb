Given 'user fetch data from database' do
  @data = connect_db.query("SELECT * FROM transaction")
end

When 'user access transaction web' do
  visit 'https://testqa123.tiiny.site'
  custom_wait.until { @app.data_transaction_page.has_table? }
end

Then 'user verify data in the table should match from database' do
  aggregate_failures('Verifying data in the table') do

    # get row value in transaction table
    result=@data.each do |value|
      puts value
    end
    expect(@app.data_transaction_page.transfer_table.rows.size).to eql result.size
    result.each_index do |index|
      expect(result[index]['ID']).to eql @app.data_transaction_page.transfer_table.rows[index][:id]
      expect(result[index]['username']).to eql @app.data_transaction_page.transfer_table.rows[index][:username]
      expect(result[index]['source_bank']).to eql @app.data_transaction_page.transfer_table.rows[index][:source_bank]
      expect(result[index]['destination_bank']).to eql @app.data_transaction_page.transfer_table.rows[index][:destination_bank]
      expect(result[index]['amount']).to eql parse_rp(@app.data_transaction_page.transfer_table.rows[index][:amount])
    end
  end
end