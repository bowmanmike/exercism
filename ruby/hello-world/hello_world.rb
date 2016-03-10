class HelloWorld
  def self.hello(name = nil)
    if name != nil
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end
end
