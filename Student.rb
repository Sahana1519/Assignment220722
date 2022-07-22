class Student
   
    def get_details
        @marks={}
        puts "Enter Student Name: "
        @name = gets.to_s
        puts "Enter Student Rollno: "
        @rollno = gets.to_i
        puts "Enter Number of Subjects "
        @subject = gets.to_i
        for i in 0..@subject-1
            puts "Enter Marks Subject " + (i+1).to_s
            @marks[i] = gets.to_i
        end
     end

     def calculate_marks
        @total =0
        count = @marks.length()
        for i in 0..count-1
            @total = @total + @marks[i]
        end
        
     end
     def show_details
        puts("Rollno = #{@rollno} Name = #{@name} Total = #{@total}")
    end
end
 
obj =Student.new
obj.get_details
obj.calculate_marks
obj.show_details
