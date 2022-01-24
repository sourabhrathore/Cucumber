class Practice
  attr_reader :no_of_customers
    @@no_of_customers = 0

    def total_no_of_customers
       @@no_of_customers += 1
       puts "Total number of customers: #@@no_of_customers"
    end

    @no_of_customers = @@no_of_customers

end

#  Practice.new.total_no_of_customers
