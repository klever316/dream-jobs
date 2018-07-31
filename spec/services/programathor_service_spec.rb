require 'spec_helper'
require './app/services/programathor_service'

describe 'Test Scraping Programathor' do
  it 'successfully scrap' do
    jobs = ProgramathorService.new().perform
    expect(jobs).not_to be_nil
    expect(jobs.count).to eql(3)
  end
end
