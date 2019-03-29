def hello_world(name = "")
  if name.empty?
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end

  #   return name.empty? ? "Hello, World!" : "Hello, #{name}!"
  # ^^^ refactored verstion of above ^^^
end
