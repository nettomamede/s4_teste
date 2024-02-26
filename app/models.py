import mysql.connector
from mysql.connector import Error

class Product:
    def __init__(self, id=None, name=None, description=None, price=None):
        self.id = id
        self.name = name
        self.price = price
        self.description = description

    @staticmethod
    def get_db_connection():
        try:
            conn = mysql.connector.connect(
                host='localhost',
                database='s4_supplys',
                user='s4user',
                password='dev123*#@'
            )
            return conn
        except Error as e:
            print(f"Error connecting to MySQL Platform: {e}")
            return None

    def save(self):
        conn = self.get_db_connection()
        if conn is not None:
            cursor = conn.cursor()
            if self.id is None:
                cursor.execute(
                    "INSERT INTO Product (name, description, price) VALUES (%s, %s, %s)",
                    (self.name, self.description, self.price)
                )
                self.id = cursor.lastrowid
            else:
                cursor.execute(
                    "UPDATE Product SET name=%s, description=%s, price=%s WHERE id=%s",
                    (self.name, self.description, self.price, self.id)
                )
            conn.commit()
            cursor.close()
            conn.close()

    @classmethod
    def get_by_id(cls, id):
        conn = cls.get_db_connection()
        if conn is not None:
            cursor = conn.cursor()
            cursor.execute("SELECT id, name, description, price FROM Product WHERE id = %s", (id,))
            row = cursor.fetchone()
            cursor.close()
            conn.close()
            if row:
                return cls(id=row[0], name=row[1], description=row[2], price=row[3])
            return None

    @classmethod
    def get_all(cls):
        conn = cls.get_db_connection()
        if conn is not None:
            cursor = conn.cursor()
            cursor.execute("SELECT id, name, description, price FROM Product")
            products = [cls(id=row[0], name=row[1], description=row[2], price=row[3]) for row in cursor.fetchall()]
            cursor.close()
            conn.close()
            return products

    @classmethod
    def delete(cls, id):
        conn = cls.get_db_connection()
        cursor = conn.cursor()
        cursor.execute("DELETE FROM Product WHERE id = %s", (id,))
        conn.commit()
        cursor.close()
        conn.close()
