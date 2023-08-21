db = db.getSiblingDB('openrasp')


db.createUser({
    user: 'openrasp',
    pwd: 'openrasp',
    roles: [
      {
        role: 'dbOwner',
      db: 'openrasp',
    },
  ],
});