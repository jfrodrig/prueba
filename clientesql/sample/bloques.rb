def change_table( variable, &block )
  puts 'Esto es dentro del metodo : "' + variable + '" antes de invocar el bloque'
  yield( 'Hola "' + variable + '"' )
  puts 'Esto es dentro del metodo despues de invocar el bloque'
end

puts ''
puts 'Running Test No. 1 :'

change_table( 'Jhon' ) do |x|
  puts 'Esto es dentro del bloque : ' + x
end

puts ''
puts 'Running Test No. 2 :'

change_table( 'Fredy' ) { |x|
  puts 'Esto es dentro del bloque : ' + x
}
