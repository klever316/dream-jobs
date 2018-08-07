require 'spec_helper'
require './app/services/tijobs_service'

describe TijobsService do
  it 'successfully scrap' do
    VCR.use_cassette("web_scrap/jobs_tijobs") do
      jobs = subject.jobs
      expect(jobs).not_to be_nil
      expect(jobs.count).to eql(4)
    end
  end
end
