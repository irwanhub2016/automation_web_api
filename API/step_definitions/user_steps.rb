When 'user try to create new user' do
	request_body = UsersModel.generate_new_user
	@response = ApiBaseHelper.post(@api_endpoint['user'], request_body)
end

When 'user try to get list user' do
	@response = ApiBaseHelper.get(@api_endpoint['user'])
	@user_list = @response.body
end

Then 'user verify the request users created successfully' do
	expect(@response.code.to_i).to eql 201
	expect(@response.body['name']).not_to eql nil
	expect(@response.body['job']).not_to eql nil
	expect(@response.body['id']).not_to eql nil
	expect(@response.body['createdAt']).not_to eql nil
end

Then 'user verify the request users returned successfully' do
	expect(@response.code.to_i).to eql 200
	expect(@response.body['total']).not_to eql nil
	expect(@response.body['data'].all? { |data| !data['id'].nil? }).to be true if @response.body['data'].size > 0
end
