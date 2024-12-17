import time

def performance_test():
    start_time = time.time()
    global_stock_check(1)
    print(f"Execution Time: {time.time() - start_time:.2f} seconds")

if __name__ == "__main__":
    performance_test()
