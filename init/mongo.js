db = db.getSiblingDB('openrasp')

db.createUser({
    user: 'openrasp',
    pwd: 'zhimakaimen',
    roles: [
      {
        role: 'dbOwner',
      db: 'openrasp',
    },
  ],
});