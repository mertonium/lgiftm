require 'sinatra'
require 'haml'

LGTM_URLS = IO.readlines('data/lgtm_urls.txt').map(&:strip).uniq

get '/' do
  urls = LGTM_URLS.shuffle.take(21)
  haml :index, locals: { urls: urls }
end
