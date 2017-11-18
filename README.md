#Converter 
This rails app allows you generate money string(russian words) by entering integer from 1 to 999999999. 
Changing result without requiring submit or a page refresh.

#Getting Started

    Using: 
    
    Ruby version 2.4.2
 
    Rails version 5.1.4
 
    Vuejs 
    
    Ajax
 
From Command Line:

 git clone https://github.com/valvolyk/converter1.git 
 
 cd converter1/
 
 bundle install
 
 rails s 
 
 localhost:3000/ on your browser

#Running the tests

From Command Line $ rspec spec/

See /spec/lib/complex_mapper_spec.rb.

Testing the behaviour of ComplexMapper class, which is main compiler.

See /lib/number_to_word_mapper/complex_mapper.rb  

