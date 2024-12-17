def global_stock_check(product_id):
    total_stock = 0
    for node_id in range(1, 4):
        try:
            conn = connect_to_node(node_id)
            cursor = conn.cursor()
            cursor.execute(f"SELECT Stock FROM Products WHERE ProductID = {product_id}")
            stock = cursor.fetchone()
            if stock:
                total_stock += stock[0]
            conn.close()
        except:
            print(f"Node {node_id} failed!")
    print(f"Total stock for Product {product_id}: {total_stock}")

if __name__ == "__main__":
    global_stock_check(1)
