
import pymysql
import pandas as pd
import tushare as ts

# 获取今日股票信息
df = ts.get_today_all()
# 保存到csv
df.to_csv(r"F:\workplace\today.csv", encoding="gbk")

data = pd.read_csv(r"F:\workplace\today.csv", encoding='gbk', usecols=[1, 2, 3, 4, 5, 6, 7, 9, 11])
print(data.head(10))

# 打开数据库连接
conn = pymysql.connect(host="localhost", database="hello", user="root", password="123456789")
# 自动确认commit True
conn.autocommit(1)
# 设置光标
cursor = conn.cursor()

# 一个根据pandas自动识别type来设定table的type
def make_table_sql(df):
    columns = df.columns.tolist()
    print(columns)
    types = df.ftypes
    # 添加id 制动递增主键模式
    make_table = []
    for item in columns:
        if 'int' in types[item]:
            char = item + ' INT'
        elif 'float' in types[item]:
            char = item + ' FLOAT'
        elif 'object' in types[item]:
            char = item + ' VARCHAR(255)'
        elif 'datetime' in types[item]:
            char = item + ' DATETIME'
        make_table.append(char)
    return ','.join(make_table)

# csv 格式输入 mysql 中
def csv2mysql(table_name, df):
    # 选择连接database
    # conn.select_db(db_name)
    # 第一次调用时使用，创建table
    # cursor.execute('DROP TABLE IF EXISTS {}'.format(table_name))
    # cursor.execute('CREATE TABLE {}({})'.format(table_name, make_table_sql(df)))
    # 需要爬取日期时使用
    # df['日期'] = df['日期'].astype('str')
    values = df.values.tolist()
    # 根据columns个数
    s = ','.join(['%s' for _ in range(len(df.columns))])
    # executemany批量操作 插入数据 批量操作比逐个操作速度快很多
    cursor.executemany('INSERT INTO {} VALUES ({})'.format(table_name, s), values)

csv2mysql(table_name='stock_info', df=data)
# 光标关闭
cursor.close()
# 连接关闭
conn.close()