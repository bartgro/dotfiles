Pry.config.prompt_name = defined?(Rails) ? Rails.application.class.parent_name : File.basename(Dir.pwd)
