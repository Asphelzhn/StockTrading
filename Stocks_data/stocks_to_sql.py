import csv
import pymysql

csv_file = csv.reader(open("today.csv","r"))

# 打开数据库连接
db = pymysql.connect("localhost","hello","root","123456789" )

for stock in csv_file:
    #print(stock)
    code = stock[1]
    name = stock[2]
    trade = stock[4]
    open_price = stock[5]
    high = stock[6]
    low = stock[7]
    sql = "insert into stock_info values(%s,%s,%s)".format(code,name)
    
    

 
# 使用cursor()方法获取操作游标 
cursor = db.cursor()
 
# SQL 插入语句
sql = """INSERT INTO EMPLOYEE(FIRST_NAME,
         LAST_NAME, AGE, SEX, INCOME)
         VALUES ('Mac', 'Mohan', 20, 'M', 2000)"""
try:
   # 执行sql语句
   cursor.execute(sql)
   # 提交到数据库执行
   db.commit()
except:
   # 如果发生错误则回滚
   db.rollback()
 
# 关闭数据库连接
db.close()
    