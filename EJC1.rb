def validar_email?(email)
    # Expresión regular más robusta para validar direcciones de correo electrónico
    regex = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  
    email.match?(regex)
  end
  
  email1 = "Buenejmplo1234@ebueno.com"
  email2 = "invalid_email"
  email3 = "lesther.fajardo-123@unanleon.edu.ni"  
  puts validar_email?(email1)  # Imprimria true
  puts validar_email?(email2)  # Imprimiria false
  puts validar_email?(email3)  # Imprimiria true
  