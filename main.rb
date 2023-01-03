require './app'

def main
  app = App.new
  app.load_data
  app.welcome
end

main
