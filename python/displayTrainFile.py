import csv

def	printFile(filename):

	fields = []
	rows = []

	with open(filename, 'r') as csvfile:

		csvreader = csv.reader(csvfile)

		fields = next(csvreader)

		for row in csvreader:
			rows.append(row)

		print('Field names are: ' + ', '.join(field for field in fields))

		print('\nFirst 5 rows are: \n')

		for row in rows[:5]:
			for col in row:
				print("%10.10s"%col, end =" ");
			print('\n')

filename = 'train.csv'

printFile(filename)
