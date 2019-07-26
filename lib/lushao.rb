require File.expand_path(File.join(File.dirname(__FILE__), 'lushao/api'))
require File.expand_path(File.join(File.dirname(__FILE__), 'lushao/version'))

module Lushao
  extend self

  def new(key)
    Api.new(key)
  end
end
