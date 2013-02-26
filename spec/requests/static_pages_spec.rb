require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Home') }
    #it { should have_selector('title', text: full_title('')) }
    #it { should_not have_selector 'title', text: '| Hello World' }
  end

  describe "Prospect page" do
    before { visit prospects_path }

    it { should have_selector('h1',    text: 'Prospects') }
    #it { should have_selector('title', text: full_title('Prospects')) }
  end

  describe "Agents page" do
    before { visit agents_path }

    it { should have_selector('h1',    text: 'Agents') }
    #it { should have_selector('title', text: full_title('Agents')) }
  end

  describe "Backoffice page" do
    before { visit backoffice_path }

    it { should have_selector('h1',    text: 'Backoffice') }
    #it { should have_selector('title', text: full_title('Backoffice')) }
  end
end


