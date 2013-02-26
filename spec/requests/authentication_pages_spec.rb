require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "login page" do
    before { visit login_path }

    it { should have_selector('legend', text: 'Login') }
    #it { should have_selector('title', text: 'Login') }
  end

  describe "login" do
    before { visit login_path }

    describe "with invalid information" do
      before { click_button "Login" }

      it { should have_selector('legend', text: 'Login') }
      it { should have_selector('div.alert.alert-error', text: 'email') }

      describe "after visiting another page" do
        before { visit home_path }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "session[email]",    with: user.email.upcase
        fill_in "session[password]", with: user.password
        click_button "Login"
      end

      #it { should have_selector('title', text: user.name) }
      #it { should have_link('Logout', href: logout_path) }
      #it { should_not have_link('Login', href: login_path) }

      describe "followed by signout" do
        before { click_link "Logout" }
        it { should have_selector('legend', text: 'Login') }
      end
    end
  end

  describe "authorization" do

    describe "for non-signed-in users" do
      let(:user) { FactoryGirl.create(:user) }

      describe "in the pages controller" do

        describe "visiting the prospects page" do
          before { visit prospects_path }
          it { should have_selector('legend', text: 'Login') }
        end
      end
    end
  end
end

