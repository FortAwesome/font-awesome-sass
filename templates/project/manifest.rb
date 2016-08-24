description 'FontAwesome for Sass'

# Stylesheet importing font-awesome
stylesheet 'styles.sass'

# Copy fonts
manifest = Pathname.new(File.dirname(__FILE__))
assets   = File.expand_path('../../assets', manifest)

fonts = Pathname.new(assets).join('fonts')
Dir.glob fonts.join('**', '*.*') do |path|
  path = Pathname.new(path)
  font path.relative_path_from(manifest).to_s, :to => path.relative_path_from(fonts).to_s
end
