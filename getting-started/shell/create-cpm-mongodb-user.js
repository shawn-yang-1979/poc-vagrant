use admin
db.createUser({user:"appAdmin",pwd:"appAdmin123",roles:[{role:"userAdminAnyDatabase",db:"admin"}]});
db.createUser({user:"cpmAdmin",pwd:"cpmAdmin123",roles:[{role:"dbOwner",db:"CPM"}]});
db.createUser({user:"mqttUser",pwd:"mqttUser",roles:[{role:"read",db:"CPM"}]});