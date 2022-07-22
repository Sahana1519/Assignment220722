class Electricity
    def get_userdetails
        puts "Enter Customer Name"
        @name =gets.to_s
        puts "Enter Total Consumption Units"
        @units =gets.to_i
    end
    def calculate_amount
        @total_amount = 0;
        @amount = 0;
        if(@units <= 50)
            @total_amount = 50;
        elsif(@units <= 100)
            @total_amount = @units * 6
        elsif(@units > 100 and @units < 300)
            @total_amount = @units * 11
        else
            @total_amount = @units * 15
        end
        if(@units > 300)
            @amount = @total_amount + (15*@total_amount)/100
        else
            @amount = @total_amount + (5*@total_amount)/100  
        end 
    end
    def display_details
        puts("Name = #{@name} Total Units = #{@units} Total Amount = #{@amount}")
    end
end

obj = Electricity.new
obj.get_userdetails
obj.calculate_amount
obj.display_details
