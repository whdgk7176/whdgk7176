import mysql.connector
from faker import Faker
import random
db_connection = mysql.connector.connect(
    host = 'localhost',
    user='root',
    password='jjong1241',
    database='bbk'
)

cursor = db_connection.cursor()
fake = Faker()

for _ in range(100):
    username = fake.user_name()  
    email = fake.email()
    sql = "insert into users(username, email) values(%s, %s)"
    values = (username,email)
    cursor.execute(sql, values)
# db_connection.commit()
# cursor.close()
# db_connection.close()

cursor.execute("select user_id from users ")
valid_user_id = [row[0] for row in cursor.fetchall()]

for _ in range(100):
    user_id = random.choice(valid_user_id)
    product_name = fake.word()
    quantity = random.randint(1, 10)

    try:

        sql = "insert into orders(user_id, product_name, quantity) values(%s, %s, %s)"
        values = (user_id,product_name,quantity)
        cursor.execute(sql, values)

    except:
        pass
db_connection.commit()
cursor.close()
db_connection.close()
