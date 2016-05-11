class BankAccount
    def initialize(name, pin, balance)
        @n = name
        @p = pin
        @b = balance
    end
    def name(pin)
        if check_pin(pin)
            puts @n
        else
            error
        end
    end
    def balance(pin)
        if check_pin(pin)
            puts @b
        else
            error
        end
    end
    def error
        puts "Wrong pin!"
    end

    private
    def check_pin(pin)
        if pin == @p
            true
        else
            false
        end
    end
end
a101 = BankAccount.new('Charley', 3454, 1000)
 a101.name(3445) #runs error
 a101.balance(3454)
