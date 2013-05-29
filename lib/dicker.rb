module Dicker
  def self.static(title, type="static")
    puts "--> Building #{type} project named: #{title}"
    build = Build.new(title)
    case type
    when 'static'
      output = build.static
    when 'dynamic'
      output = build.dynamic
    end
    if output
      puts "--> Build successful"
      system('cd #{title}')
    else
      puts "--> Build failed for unkown reason"
    end
  end

  def self.server
    commands = Commands.new
    commands.server
  end
end

require 'dicker/build'
require 'dicker/commands'
require 'dicker/version'