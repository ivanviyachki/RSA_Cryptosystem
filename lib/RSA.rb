require 'prime'


class RSA
   def initialize n, e, d
        @n = n.to_i
        @e = e.to_i
        @d = d.to_i
   end
   
   def n
      return @n
   end
   
   def e 
      return @e
   end
   
   def d
      return @d
   end
   
   def new_key
        
        begin
         
            begin    
                p_ = 10.times.map{rand(10)}.join.to_i
             
            end while !Prime.prime?(p_)
            
            begin         
                 q_ = 10.times.map{rand(10)}.join.to_i
             
            end while !Prime.prime?(q_)
            
       end while p_ == q_ 
       
       n_ = p_ * q_  
       k = (p-1) * (q-1)

     while
              
         e_ = rand(1...k)
         a = k, b = e_, gcd = 0;
         
         while b != 0 do
                   
             gcd = b
             b = a % b
             a = gcd
         end    
        
     end while gcd != 1 
     
     while (e_ * d_) % k != 1 do
    
        d_ = d_ + 1
     end    
     
     keys = Arrey.new
     keys[0] = n_
     keys[1] = e_
     keys[2] = d_
     
     return keys
   end
   
   def encrypt message
      return message.chars.map { |ch| ch.ord.to_i ** @e % @n}
      
   end
   
   def decrypt message
     return message.map { |ch| (ch ** @d % @n).chr } .join('')
     
     
   end 
end
