require 'spec_helper'
require 'cancan/matchers'

module Iuris

	describe User do
		
		it 'non admin user only can read dashboard' do
			user = FactoryGirl.create(:user)
			ability = Iuris::Ability.new(user)

			expect(ability).to be_able_to(:read, :dashboard)
			expect(ability).to_not be_able_to(:manage, :dashboard)
			expect(ability).to_not be_able_to(:manage, :all)
		end

		it 'admin user can manage all' do
			admin = FactoryGirl.create(:admin)
			ability = Iuris::Ability.new(admin)

			expect(ability).to be_able_to(:manage, :all)
			expect(ability).to be_able_to(:read, :dashboard)
		end

	end
	
end