require 'erb'

module Puppeteer
  module Screenplay
    attr_accessor :pp_name, :pp_config

    def self.erb(fylname)
      dir = File.dirname(File.expand_path(__FILE__))
      file_erb = File.join dir, 'templates', fylname
      template = File.open(file_erb, 'r').read
      ERB.new(template)
    end

    def self.default_manifest
      @pp_config ||= "# module :: #{@pp_name.split(/::/).join(' > ')}"
      manifest_dat = erb('manifests_pp.erb').result(binding)
      return manifest_dat
    end

    def self.create_pp(namespace, fylname)
      @pp_name = namespace
      fyldata = default_manifest
      File.open(fylname, 'w') {|fyl| fyl.write(fyldata) }
    end
  end
end
