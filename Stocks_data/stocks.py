# -*- coding: utf-8 -*-
"""
Created on Thu Mar  7 20:28:59 2019

@author: 56871
"""

import tushare as ts

df = ts.get_today_all()

df.to_csv("C:/Users/56871/Desktop/研究生/Software Reuse/today.csv",encoding = "gbk")