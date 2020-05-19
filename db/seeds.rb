User.destroy_all
Symptom.destroy_all
Quarantine.destroy_all
UserSymptom.destroy_all


ali   = User.create(name: "Ali", lastname:"Bener", gender:"Male",age:43)
erhan = User.create(name: "Erhan", lastname:"Senlik", gender:"Male",age:38)
necati= User.create(name: "Necati", lastname:"Yilmaz", gender:"Male",age:44)
ayhan = User.create(name: "Ayhan", lastname:"Colak", gender:"Male",age:45)

s1 = Symptom.create(fever:3, cough:4, tiredness:5, user_id:ali.id)
s2 = Symptom.create(fever:4, cough:2, tiredness:3, user_id:erhan.id)
s3 = Symptom.create(fever:1, cough:2, tiredness:3, user_id:necati.id)
s4 = Symptom.create(fever:2, cough:2, tiredness:3, user_id:ayhan.id)

q1 = Quarantine.create(days:64, user_id:ali.id)
q2 = Quarantine.create(days:75, user_id:erhan.id)
q3 = Quarantine.create(days:64, user_id:necati.id)
q4 = Quarantine.create(days:64, user_id:ayhan.id)

u1 = UserSymptom.create(user_id:ali.id, symptom_id:s1.id)
u2 = UserSymptom.create(user_id:erhan.id, symptom_id:s2.id)
u3 = UserSymptom.create(user_id:necati.id, symptom_id:s3.id)
u4 = UserSymptom.create(user_id:ayhan.id, symptom_id:s4.id)



