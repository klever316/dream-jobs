require 'open-uri'
require 'nokogiri'

class ProgramathorService
  def initialize(page='1')
    html = open("https://programathor.com.br/jobs/page/#{page}")
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
  end
  
  def jobs
    list = []
    @doc.css('.cell-list').each do |job|
      categories = []
      title = job.css('.cell-list-content').xpath('h3').first.content
      link = job.xpath('a').first['href']
      job.css('.tag-list').each {|category| categories.push(category: category.children.first.text)}

      html = open("https://programathor.com.br#{link}")
      detail = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
      description = detail.css('.wrapper-content-job-show').xpath('div[2]').text
      address = detail.css('.wrapper-details-job-show').xpath('p[4]/a').text
      list.push(title: title, link: link, categories: categories, description: description, address: address)
    end
    list
  end
end
