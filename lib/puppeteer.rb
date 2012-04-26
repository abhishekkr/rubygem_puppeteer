require "puppeteer/version"
require "puppeteer/screenplay"

module Puppeteer

  def self.module(namespace, module_path = File.expand_path(File.dirname __FILE__))
    dirs = []
    dirs << File.join(module_path, namespace.split(/::/)[0])
    dirs << File.join(dirs[0], 'manifests')
    namespace.split(/::/)[1..-2].each_with_index do |nam, idx|
      dirs << File.join(dirs[idx], nam)
    end
    dirs.each {|dir| Dir.mkdir dir }
    if dirs.size < 3
      init_pp = File.join dirs[-1], 'init.pp'
    else
      init_pp = File.join dirs[-1], namespace.split(/::/)[-1]
    end
    Screenplay.create_pp init_pp
  end
end
