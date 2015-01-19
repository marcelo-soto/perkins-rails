require 'rails/generators'

module Perkins
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Perkins to Asset Pipeline"

      def add_init
        perkins_init = "app/assets/stylesheets/perkins_init.less"

        unless File.exist?(perkins_init)
          copy_file "perkins_init.less", perkins_init
        end
      end
    end
  end
end