require "puppeteer/version"
require "puppeteer/screenplay"

module Puppeteer

  def self.module_structure
    ['files', 'lib', 'spec','templates', 'tests']
  end

  def self.module(namespace,
      module_path = File.expand_path(File.dirname __FILE__),
      dir_struct  = module_structure
    )
    dirs = []
    dirs << File.join(module_path, namespace.split(/::/)[0])
    dirs << File.join(dirs[0], 'manifests')
    namespace.split(/::/)[1..-2].each_with_index do |nam, idx|
      dirs << File.join(dirs[idx+1], nam)
    end
    dirs.each {|dir| Dir.mkdir dir unless File.directory?(dir) }
    dir_struct.each {|mdir|
      dir = File.join(dirs[0], mdir)
      Dir.mkdir dir unless File.directory?(dir)
    }

    unless namespace.match(/::/)
      init_pp = File.join dirs[-1], 'init.pp'
    else
      puts File.join(dirs[-1], namespace.split(/::/)[-1])
      init_pp = "#{File.join dirs[-1], namespace.split(/::/)[-1]}.pp"
    end

    Screenplay.create_pp namespace, init_pp
  end
end
