require 'open-uri'

class ProgramathorService

  def initialize(page='1')
    html = open('https://programathor.com.br/jobs/page' +"/#{page.to_s}")
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
  end

  def perform
    jobs = []
    @doc.css('html body div.wrapper-jobs-list div.container div.row div.col-md-9').each do |jobItem|
      
    end
    return jobs
  end
end
