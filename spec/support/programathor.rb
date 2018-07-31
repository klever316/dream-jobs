RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /programathor.com.br/ )
      .with(headers: {
        'Accept'=>'*/*'
      }).to_return(status: 200, body: '<h1>Olá Mundo</h1>', headers: {})
  end
end
