require 'spec_helper'
require './app/services/programathor_service'

describe ProgramathorService do
  it 'successfully scrap' do
    VCR.use_cassette("web_scrap/jobs_programathor") do
      jobs = subject.jobs
      expect(jobs).not_to be_nil
      expect(jobs.count).to eql(10)
    end
  end
end
