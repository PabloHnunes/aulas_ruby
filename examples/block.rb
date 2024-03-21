def foo
  if block_given?
    yield
  else
    puts "Sem parâmetro do tipo bloco."
  end

end


foo {puts "Exec the block"}


def foo(name, &block)
    @name = name
    block.call
end

foo('Pablo') {puts "Hello #{@name}"}
