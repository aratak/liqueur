module Liqueur
  if defined?(Rails)
    class Engine < ::Rails::Engine
      require 'liqueur/engine'
    end
  end
end

require 'wiskey'
require File.join(File.dirname(__FILE__), "/liqueur/sass_extensions")
