class Dicker::Build
  def initialize(title)
    @project = title
  end

  def static
    output = system("git clone git@github.com:banksy89/curtiss.git #{@project}")
    return output
  end

  def dynamic
    output = system("git clone git@github.com:StormCreative/pegisis.git #{@project}")
    return output
  end
end