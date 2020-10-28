class CashRegister
    attr_accessor :total, :discount, :previous_total, :items
    def initialize(discount = nil)
        @total = 0
        @discount = discount
    end
    def total
        @total
    end
    def add_item(title, price, quantity = 1)
        @previous_total = @total
        @total = @total + (price * quantity)
        @items = [] if @items == nil
        quantity.times {@items << title}
    end
    def apply_discount
        if @discount == nil 
            "There is no discount to apply."
        else
            @total = @total - (@total * ((@discount.to_f) / 100))
            "After the discount, the total comes to $#{total.to_i}."
        end
    end
    def void_last_transaction
        @total = @previous_total 
    end
end
