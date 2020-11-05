
class CashRegister

    attr_accessor :total, :discount, :items, :price

    def initialize(discount=0)

        @total = 0
        @discount = discount
        @items = []
        @price = []
    end 

    def add_item(item, price, quantity=1)

        @price << price * quantity

        @total += price * quantity

        quantity.times do 
            @items << item 
        end 

    end

    def apply_discount

        if @discount == 0
        "There is no discount to apply."

        else 
       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
       "After the discount, the total comes to $#{self.total}."

        end 

    end 

    def void_last_transaction

        self.total -= self.price[-1]

        if self.items == []
            self.total = 0.0
        end

    end 
end 