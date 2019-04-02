class Banking
    attr_reader:name,:balance,:pin

    def initialize(name:,balance:0,pin:0000)
        @name = name 
        @balance = balance
        @pin = pin
    end

    
  private 
    def pin
        @pin = 0000
    end

  private 
    def pin_error
       return  "Access denied: incorrect PIN."
    end

  public 
    def display_balance (pin_number)
        if pin_number == pin 
           puts "Balance: $#{@balance}."
        else
           puts pin_error
        end
    end

  public
      def withdraw(pin_number, amount)
          if pin_number == pin
             if amount > @balance 
               puts "This withdrew amount:$#{amount} will overdrawing Your Checking Account :(,New balance: $#{@balance-amount}."
             else
             puts "Withdrew amount:$#{amount}. New balance: $#{@balance-amount}."
             end
          else 
             puts pin_error
          end
      end     
end 
#Create new client account
my_account = Banking.new(name:"Elise", balance:2000)
my_account.display_balance(0000)
my_account.withdraw(0000, 500)
my_account.withdraw(0000, 6000)

