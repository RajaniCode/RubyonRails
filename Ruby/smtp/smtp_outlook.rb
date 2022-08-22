require 'mail'

options = { :address              => "smtp.live.com",
            :port                 => 587,
            :domain               => "outlook.com",
            :user_name            => "#####@outlook.com",
            :password             => "********",
            :authentication       => "plain",
            :enable_starttls_auto => true }

Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
  to "*****@gmail.com"
  from "#####@outlook.com"
  subject "Email using Ruby"
  body "Email using Ruby Hello World!"
end

puts "Email sent."