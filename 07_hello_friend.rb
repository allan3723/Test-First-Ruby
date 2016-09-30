class Friend
  def greeting(name=NIL)
    name == NIL ? "Hello!" : "Hello, #{name}!"
  end
end
