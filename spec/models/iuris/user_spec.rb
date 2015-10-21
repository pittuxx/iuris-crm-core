require 'spec_helper'

module Iuris

	describe User do
		it 'has a valid factory' do
			expect(FactoryGirl.build(:user)).to be_valid
		end

		it 'is invalid without an email' do
			expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
		end

		it 'is invalid without a password' do
			expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
		end

		it 'is invalid with different password and password_confirmation' do
			expect(FactoryGirl.build(:user, password: '123', password_confirmation: '456')).to_not be_valid
		end

		it "common user doesn't have admin attributes" do
			user = FactoryGirl.create(:user)
			expect(user.admin?).to be false
		end

		it 'has a valid admin' do
			expect(FactoryGirl.build(:admin)).to be_valid
		end

		it 'admin user has admin attributes' do
			admin = FactoryGirl.create(:admin)
			expect(admin.admin?).to be true	
		end
	end


end