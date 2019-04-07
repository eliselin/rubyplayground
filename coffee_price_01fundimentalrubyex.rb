#set defult value for extra_shots and serve as hot
def coffee_price (type,size,extra_shots: 0,cold: false)
   #type of coffee 
    case type 
    when :drip
     price = 1.50
    when :latte
     price = 3.70
    when :cappuccino
     price = 3.20
    else 
     puts "Invalid coffee type #{type}"
     return
    end

    #drink size
    case size
    when :tall
      price *= 1.0
    when :grande
      price *= 1.3
    when :venti
      price *= 1.6
    else 
     puts "Invalid coffee size #{size}"
     return
    end
    #charge for extra-shots
    price += extra_shots * 0.5
    #charge for serve as cold drink
    if cold
      price +=1
    end

    return price 
  end

   price = coffee_price(:drip,:venti)
   puts "Your total is #{price} dollars"