!pip install pandas scikit-learn numpy matplotlib


import pandas as pd
from sklearn import preprocessing

train = pd.read_csv('train.csv')

train.head(20)


le = preprocessing.LabelEncoder()

le.fit(train.store_nbr)
print(le.classes_)


train.isnull().sum()


from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
import numpy as np
from matplotlib import pyplot as plt
from sklearn import preprocessing
from datetime import datetime as dt


def getDFDateSales(file, column, rowToFind):
    le = preprocessing.LabelEncoder()
    rows = le.fit(file[column]).classes_
    mydf = pd.DataFrame(columns = ['date', 'sales'])
    df = file[file.store_nbr == 1]
    for row in rows:
        if row == rowToFind:
            df = df[df[column] == row]
            le.fit(file.date)
            x = 0
            for date in le.classes_:
                mydf.loc[len(mydf.index)] = [date, df['sales'].loc[df.index[x]]]
                #dfTmp = pd.DataFrame({'date' : [date], 'sales' : [tmp.sales] })
                #mydf = pd.concat([mydf, dfTmp])
                x += 1
    return mydf

mydf = getDFDateSales(train, 'family', 'BREAD/BAKERY')


mydf.head()
