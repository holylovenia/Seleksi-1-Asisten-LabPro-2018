#Author : Kurniandha Sukma Yunastrian (13516106)

#Function switch that return expression from input emoticon
def emoticon(x) :
    return {
        ':)' : 'senyum',
        ':(' : 'sedih',
        ':D' : 'tertawa',
        ":'(" : 'menangis',
        ':))' : 'ROTFL'
    }.get(x,'tidak diketahui')

#Main Program
x = input('Masukan emoticon: ')
print('Tuan Vin sedang '+emoticon(x))
