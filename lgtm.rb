require 'sinatra'
require 'haml'

LGTM_URLS = IO.readlines('data/lgtm_urls.txt').map(&:strip)

get '/' do
  haml :index, locals: { urls: LGTM_URLS }
end
