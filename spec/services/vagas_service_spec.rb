require 'spec_helper'
require './app/services/vagas_service'

describe VagasService do
  it 'successfully scrap' do
    VCR.use_cassette("web_scrap/jobs") do
      jobs = subject.jobs
      expect(jobs).not_to be_nil
      expect(jobs.count).to eql(40)
    end
  end
end
