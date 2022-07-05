const express = require('express')
const router = express.Router()

const company = require('./company/company')
const branches = require('./branches/branches')
const rooms = require('./rooms/rooms')
const banks = require('./banks/banks')
router
    .get('/company', company.Get_Company)
    .get('/company/:id', company.Get_Company_Id)
    .post('/company', company.Post_Company)
    .delete('/company/:id', company.Delete_company)
    // branches
    .get('/branches', branches.Get_Branches)
    .get('/branches/:id',branches.Get_Branches_Id)
    .get('/branches/one/:id', branches.Get_Branches_One)
    .post('/branches', branches.Post_Branches)
    .delete('/branches/:id', branches.Delete_branch)
    // rooms
    .get('/rooms', rooms.Get_Rooms)
    .get('/rooms/:id',rooms.Get_Rooms_Id)
    .get('/rooms/one/:id', rooms.Get_Rooms_One)
    .post('/rooms',rooms.Post_Rooms)
    .delete('/rooms/:id', rooms.Delete_room)
    // banks
    .get('/banks', banks.Get_Banks)
    .get('/banks/:money', banks.Get_Banks_Money)
    .post('/banks', banks.Post_Banks)
    .delete('/banks/:id', banks.Delete_Bank)

module.exports = router  