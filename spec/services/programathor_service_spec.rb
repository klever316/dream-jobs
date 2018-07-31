require 'spec_helper'
require './app/services/programathor_service'

describe 'Test Scraping Programathor' do
  it 'successfully scrap' do
    jobs = Programathor.new().perform
    expect(jobs).to exist
    expect(jobs.count).to eql(3)
  end
end
