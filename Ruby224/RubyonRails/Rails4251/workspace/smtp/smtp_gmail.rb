require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => "gmail.com",
            :user_name            => "#####",
            :password             => "********",
            :authentication       => "plain",
            :enable_starttls_auto => true }

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
  to "*****@gmail.com"
  from "#####@gmail.com"
  subject "Email using Ruby"
  body "Email using Ruby Hello World!"
end

puts "Email sent."