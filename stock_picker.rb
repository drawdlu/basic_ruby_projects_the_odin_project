def stock_picker(stock_arr)
  best_price = 0
  best_arr = [0, 0]

  stock_arr.each_with_index do |buy_price, buy_index|
    stock_arr.each_with_index do |sell_price, sell_index|

      if sell_index <= buy_index
        next
      end

      profit = sell_price - buy_price
      if profit > best_price
        best_arr = [buy_index, sell_index]
        best_price = profit
      end
      
    end
  end

  best_arr
end

stock_prices = [17, 3, 5, 9, 15, 8, 6, 1, 10]

p stock_picker(stock_prices) # [1, 4]


stock_prices_extra = [19, 3, 4, 2, 18, 17, 3, 20, 27, 9]

p stock_picker(stock_prices_extra) # [3, 8]

