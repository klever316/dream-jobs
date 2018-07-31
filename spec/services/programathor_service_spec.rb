require 'spec_helper'

describe ProgramathorService do
  it 'successfully scrap' do
    VCR.use_cassette("web_scrap/jobs") do
      jobs = subject.jobs
      expect(jobs).not_to be_nil
      expect(jobs.count).to eql(10)
    end
  end
end
