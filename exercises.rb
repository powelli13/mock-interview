require 'date'

class Shop
    def initialize(shop_id, shop_name)
        @id = shop_id
        @name = shop_name
    end

    def id
        @id
    end

    def name 
        @name
    end
end

class Order
    def initialize(shop_id, dollar_amount, order_date, fulfilled)
        @shop_id = shop_id
        @amount = dollar_amount
        @order_date = order_date
        @fulfilled = fulfilled
    end

    def shop_id
        @shop_id
    end

    def amount
        @amount
    end

    def order_date
        @order_date
    end

    def fulfilled
        @fulfilled
    end
end

all_shops = [
    Shop.new(1, "Atlantis"),
    Shop.new(2, "Rustic Range"),
    Shop.new(3, "Golden Apple"),
    Shop.new(4, "Cascade Corner")
]

all_orders = [
    Order.new(1, 230, Date.new(2021, 5, 13), true),
    Order.new(1, 145, Date.new(2021, 5, 17), true),
    Order.new(1, 600, Date.new(2021, 6, 12), false)
]

# Your employer has multiple shops with associated orders.
# In order to get better insights into their sales operations
# you have been tasked with getting some reporting statistics
# from their sales data.

# Put your code here
# 1. Display the name of the shop that has the highest sum of fulfilled orders

# 2. Display the sum of order amounts for the shop above

# 3. Display the name of the shop that has the most outstanding orders

# 4. Display the name of the shop that had the least orders in April of 2021

for s in all_shops do
    print s.name
    print "\n"
end

for o in all_orders do
    print o.amount
    print o.fulfilled
    print "\n"
end
