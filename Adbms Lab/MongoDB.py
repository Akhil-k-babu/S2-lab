import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/")
db=conn["mydatabase"]
col=db["student"]
# value=[{"Name":"abc","age":18,"Ph No":1234567890},
#        {"_id":10,"Name":"def","age":18},
#        {"Name":"ghi","age":20,"Ph No":2345678901}]
# col.insert_many(value)

fd=col.find({},{"Name":1,"_id":0,"Ph No":1})
for i in fd:
    print(i)
