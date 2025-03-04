print('Start MongoDB Initialization #################################################################');

db = db.getSiblingDB('merrve');

db.createUser({
  user: 'Slush4950',
  pwd: 'concert-diagnosis-drew',
  roles: [
    {
      role: 'readWrite',
      db: 'merrve'
    },
    {
      role: 'dbAdmin',
      db: 'merrve'
    }
  ]
});

// Create some initial collections to ensure database is created
db.createCollection('users');
db.createCollection('matches');
db.createCollection('messages');

print('END MongoDB Initialization #################################################################'); 