import firebase_admin
from firebase_admin import credentials

cred = credentials.Certificate("svc_key.json")
firebase_admin.initialize_app(cred)

from google.cloud import firestore

db = firestore.Client()

# Example: Get all users older than 18
users_ref = db.collection("users")
query = users_ref.where("age", ">", 18)

results = query.stream()

for doc in results:
    print(doc.id, doc.to_dict())
