require 'watir'
describe 'Shoe Store' do
  let(:browser) { Watir::Browser.new }

  before { browser.goto('http://localhost:3000') }

  context 'Monthly Shoes' do
    it 'has shoes for each month' do
      months = %w(January February March April May June July August September October November December)

      all_months_have_shoes = true
      months.each do |month|
        if !browser.li(text: month).present?
          all_months_have_shoes = false
        else
          all_months_have_shoes = true
        end
      end
      expect(all_months_have_shoes).to be_truthy
    end

    it 'has a blurb for each shoe listed on each month' do
    end

    it 'has a price for each shoe listed on each month' do
    end

    it "has a 'notify me' option for shoes listed in future months" do
    end

  end

  context 'All Shoes' do
    it 'has a blurb for each shoe listed' do
    end

    it 'has a price for each shoe listed' do
    end

    it "has a 'notify me' option for shoes listed in future months" do
    end
  end
end


