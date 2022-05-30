def function(*args, **kwargs)
 puts args.class 
 args.each { |x| print x,  " "}
 puts 
 puts kwargs.class
 kwargs.each { |name, value | print "#{value}" }
 puts 
end

# Note Pythoncd "E:\Working\Ruby\TODO\args-kwargs" difference
function("Hello", " ", hsh = { :w => "World", :e => "!" })
#function(h = "Hello", space = " ", hsh = { :w => "World", :e => "!" })