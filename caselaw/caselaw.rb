Bundler.require
Dotenv.load

key = ENV['CASELAWKEY']

conn = Faraday.new(
  url: 'https://api.case.law',
  headers:  {'Authorization' => "Token #{key}"}
)

response = conn.get('/v1/cases/3383405/') do |req|
  req.params['full_case'] = 'true'
end

binding.pry
