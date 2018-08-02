require 'open-uri'
require 'nokogiri'

class VagasService
  def initialize
    @domain_name = 'https://www.vagas.com.br'
    html = open(@domain_name +'/vagas-de-c#-java-ruby-delphi-php')
    @doc = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
  end
  def jobs
    list = []
    @doc.css('.grupoDeVagas').xpath('div/ul/li').each do |job|
      categories = []
      
      informacoes_header = job.css('.informacoes-header').xpath('h2/a')
      title = informacoes_header.attr('title')
      link = informacoes_header.first['href']
      address = job.xpath('footer/span').first.content.strip

      html = open(@domain_name + link)
      detail = Nokogiri::HTML(html, nil, Encoding::UTF_8.to_s)
      description = detail.css('.vaga').xpath('div').first.content
      list.push(title: title, link: link, categories: categories, description: description, address: address)
    end
    list
  end
end
