require 'open-uri'
require 'nokogiri'

class TijobsService
  def initialize
    @domain_name = 'https://www.tijobs.com.br/'
    html = open(@domain_name +'/lista-de-vagas/')
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
  end

  def jobs
    list = []
    @doc.css('.job-item').xpath('div[2]').css('.col-md-10').each do |job|
      categories = []

      title = job.xpath('h3/a').first.content
      link = job.xpath('h3/a').first['href']
      address = job.xpath('h5/span').first.content

      html = open(link)
      detail = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)

      description = ''
      detail.css('.box-item-details').xpath('p').each do |line|
        description += "#{line.text}\n"
      end

      list.push(title: title, link: link, categories: categories, description: description, address: address)
    end
    list
  end
end
