#Pandas

import pandas as pd

csv_path = 'file1.csv'
df1 = pd.read_csv(csv_path)
df1.head()

#Dataframes: rows -> columns
row = 1
col = 2
df1.iloc[row, col]

#Exel file
xlsx_path = 'file1.xlsx'
df2 = pd.read_excel(xlsx_path)
df2.head()

#select data from dataframe
#loc
df1.loc[0, 'Artist']:'Michael Jackson'
#iloc - int based
df1.loc[0,0]:'Michael Jackson'

#Slicing using loc
z = df1.iloc[0:2, 0:3]

#Unique element
df1['Released'].unique()
df1['Released']>= 1890
df3 = df1[df1['Released']>=1980]
df3.to_csv('new_songes.csv')
