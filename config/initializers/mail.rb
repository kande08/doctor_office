mail = "#{Rails.root}/config/mail.yml"
YAML.load_file(mail).each {|key, value| ENV[key] ||ENV[key] = value.to_s} if File.exists? mail
