def update_stock(store_id, product_id, quantity):
    try:
        conn = connect_to_node(store_id)
        conn.start_transaction()
        cursor = conn.cursor()
        cursor.execute(f"UPDATE Products SET Stock = Stock + {quantity} WHERE ProductID = {product_id}")
        conn.commit()
        print(f"Stock updated successfully at Node {store_id}.")
    except Exception as e:
        conn.rollback()
        print(f"Transaction failed at Node {store_id}: {e}")
    finally:
        conn.close()

if __name__ == "__main__":
    update_stock(1, 1, -3)  # Example: Reduce stock at Store 1
