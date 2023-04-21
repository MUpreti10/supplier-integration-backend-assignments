def coin_exchange(coins, amount):
    min_coins = [float('inf')] * (amount + 1)
    min_coins[0] = 0

    for i in range(1, amount + 1):
        for coin in coins:
            if i >= coin:
                min_coins[i] = min(min_coins[i], 1 + min_coins[i - coin])

    return min_coins[amount] if min_coins[amount] != float('inf') else -1

coins = [1, 5, 7, 9, 11]
money = 25
print(coin_exchange(coins, money))  # expected output: 3

coins = [1, 5, 7, 9, 11]
money = 14
print(coin_exchange(coins, money))  # expected output: 2

coins = [7, 9]
money = 20
print(coin_exchange(coins, money))  # expected output: -1
