require 'sinatra'
class Numbero
 attr_accessor  :var1
  def initialize
 @var1 = 0
  end
  def add
  @var1 += 1
  end
end

obj = Numbero.new
get '/' do
 @number = obj.var1
  erb :home
  end


 post '/' do
  obj.add()
 redirect '/'
 end
