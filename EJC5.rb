def contraseña_segura?(contraseña)
  # Expresión regular para validar contraseñas seguras
  patron = /\A(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}\z/

  # Verificamos si la contraseña coincide con el patrón
  contraseña =~ patron
end

# Ejemplos de uso
contraseña1 = "Contra123@*"
contraseña2 = "contrasena"

puts contraseña_segura?(contraseña1)  
puts contraseña_segura?(contraseña2)  
