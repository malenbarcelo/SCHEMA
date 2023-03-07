const bcrypt = require('bcryptjs')

const array = []

for(let i=0;i<=19;i++){
    newToken = 'tokenid' + i 
    newTokenHashed = bcrypt.hashSync(newToken,10)
    
    array.push({'token' : newToken, 'tokenId' : newTokenHashed})
}

for (const token of array) {
    console.log(token.tokenId)
    
}
