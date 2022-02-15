def stock_picker(arr)
    max = -1
    max_buy = -1
    max_sell = -1
    arr.each_with_index do |buy_day, index_buy|
        arr[(index_buy + 1)..-1].each_with_index do |sell_day, index_sell|
            if sell_day - buy_day >= max
                max = sell_day - buy_day
                max_buy = index_buy
                max_sell = index_sell + index_buy + 1
            end
        end
    end
    return [max_buy, max_sell]
end

puts stock_picker([17,3,6,9,10,8,6,15,10])