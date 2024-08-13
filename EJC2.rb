# extractor
# formatos validos
text = """
Este es un texto con varios números de teléfono:
123-456-7890
+1 123-456-7890
(123) 456-7890
123.456.7890
+55 11 91234-5678
555-1212
"""
phone_pattern = /\+?\(?\d{2,3}\)?[-.\s]?\d{2,3}[-.\s]?\d{4}/

# Encontrar coincidencias
phone_numbers = text.scan(phone_pattern)

puts "Números de teléfono encontrados:"
phone_numbers.each do |phone_number|
  puts phone_number
end
