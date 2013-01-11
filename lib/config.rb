# Use utf-8 wherever possible
set :default_encoding, 'utf-8'

# Use erb templates for markdown rendering
set :markdown, layout_engine: :erb

# Define available locales
set :locales, %w[en de]
set :default_locale, "de"