import mysql.connector

def create_database():
    """
    Connects to a MySQL server and creates the 'alx_book_store' database if it doesn't exist.
    """
    try:
        # Establish a connection to the MySQL server
        # You'll need to replace the placeholders with your actual database credentials
        cnx = mysql.connector.connect(
            host="localhost",
            user="your_username",
            password="your_password"
        )
        cursor = cnx.cursor()

        # SQL query to create the database if it doesn't exist
        create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"

        # Execute the query
        cursor.execute(create_db_query)

        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        # Handle errors during connection or query execution
        print(f"Error: Failed to connect to the database. {err}")
    finally:
        # Close the cursor and connection
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'cnx' in locals() and cnx.is_connected():
            cnx.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()