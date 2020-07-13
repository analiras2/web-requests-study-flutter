const app = require('express')()
const bodyParser = require('body-parser')
const PORT = 8080
import { posts } from './database'
import { users } from './database'

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}))

app.get('/posts', (req, res) => {
    console.log('Sending Posts');
    setTimeout(() => {
        res.send(posts);
    }, 2000)
    
})

app.get('/user', (req, res) => {
    res.send(users[0])
})

app.listen(PORT, () => {
    console.log(`Running RadCode server on ${PORT}`)
})