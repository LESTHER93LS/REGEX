def reemplazar_etiquetas_a(html)
  patron = /<a.*?>(.*?)<\/a>/m

  # Reemplazar las etiquetas <a> por el texto del ancla
  html.gsub!(patron, '\1')
  return html
end

original = "<p>Este es un <a href='https://www.ejemplillo.com'>enlace</a> a un sitio web.</p>"
html_nuevo = reemplazar_etiquetas_a(original)
puts html_nuevo
