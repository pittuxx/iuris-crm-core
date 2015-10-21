require 'spec_helper'

module Iuris
	module Admin
		describe UsersController do
			set_engine_routes

			context 'admin' do
				login_admin

				it 'shoud get /admin/users' do
					get :index
					expect(response).to be_success
				end

			end

			context 'user' do
				login_user
				render_views
				
				it 'should not get /admin/users' do
					get :index
					expect(response).to_not be_success 
				end

				it 'should get error msg' do
					get :index
					expect(response).to render_template 'static/403.html'
				end

				it 'should see cancan msg: No Can Do!' do
					get :index
					expect(response.body).to eq('No Can Do!')
				end

			end

			context 'no login' do
				it 'should be redirected'do
					get :index
					expect(response).to redirect_to(new_user_session_path)
				end
			end

		end
	end
end