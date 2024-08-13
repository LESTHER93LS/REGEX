def extraer_fechas(texto)

  patron_fechas = /(\d{2})[/-](\d{2})[/-](\d{4})|(\d{4})[/-](\d{2})[/-](\d{2})/

  fechas = texto.scan(patron_fechas)

  fechas_validas = fechas.map do |fecha|
    dia, mes, año = fecha.compact
    if dia && mes && año && fecha_valida?(dia, mes, año)
      Date.new(año.to_i, mes.to_i, dia.to_i)
    end
  end.compact

  return fechas_validas
end

def fecha_valida?(dia, mes, año)
  Date.valid_date?(año.to_i, mes.to_i, dia.to_i)
rescue ArgumentError
  false
end

texto = "Hoy es 15/03/2024 y mañana 16-03-2024. Las vacaciones fueron el 25/12/2023. También puede ser en formato 2023-12-25"

fechas_encontradas = extraer_fechas(texto)

fechas_encontradas.each do |fecha|
  puts "Fecha encontrada: #{fecha}"
end
