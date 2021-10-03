#!/usr/bin/env ruby

require "net/http"

class Curlr
  def self.get(url)
    new(url).get
  end

  def self.post(url)
    new(url).post
  end

  def initialize(url)
    @uri = URI.parse url
  end

  def get
    resp = Net::HTTP.get_response @uri
    resp.body
  end

  def post
    params = CGI.parse URI.parse(@uri).query
    resp = Net::HTTP.post_form @uri, params
    resp.body
  end
end

def resolve(method:, url:)
  case method
  when :get
    Curlr.get  url
  when :post
    Curlr.post url
  when :put
    raise "Not implemented, sorry :)"
  when :delete
    raise "Not implemented, sorry :)"
  end
end

def main
  method = "get"
  url    = ARGV[0]
  if ["get", "post"].include? ARGV[0]
    method = ARGV[0]
    url    = ARGV[1]
  end
  method = method.to_sym
  raise "UrlNotPassedError - please specify an url" unless url

  resolve method: method, url: url
end

puts main
