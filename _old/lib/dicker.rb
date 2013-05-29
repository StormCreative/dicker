class Dicker
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
end

require 'dicker/build'