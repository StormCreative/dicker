class Dicker::Commands
  def server
    # Ensure the correct PHP version is loaded
    system('source ~/.bash_profile')
    system('php -S localhost:9292') 
  end
end