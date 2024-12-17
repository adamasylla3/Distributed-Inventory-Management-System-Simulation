import mysql.connector

# Connect to a node (simulating different stores)
def connect_to_node(node_id):
    connections = {
        1: {"host": "localhost", "user": "root", "password": "#Gwagwalada2024", "database": "InventorySystem"},
        2: {"host": "localhost", "user": "root", "password": "#Gwagwalada2024", "database": "InventorySystem"},
        3: {"host": "localhost", "user": "root", "password": "#Gwagwalada2024", "database": "InventorySystem"}
    }
    return mysql.connector.connect(**connections[node_id])

# Fetch Products from a node
def fetch_products(node_id):
    conn = connect_to_node(node_id)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM Products")
    print(f"Data from Node {node_id}:")
    for row in cursor.fetchall():
        print(row)
    conn.close()

# Simulate fetching data from nodes
if __name__ == "__main__":
    for node in range(1, 4):
        fetch_products(node)
