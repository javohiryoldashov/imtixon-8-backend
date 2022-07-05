const {fetchData} = require('../../utils/postgres')

const rooms = `
    SELECT * FROM rooms
`
const Get_rooms_id = `
    SELECT * FROM rooms WHERE rooms.branches_id = $1
`
const Get_roooms_one = `
SELECT * FROM rooms WHERE room_id = $1
`

const post_rooms = `
    INSERT INTO rooms(room_name, room_ametr_price,room_meter,branches_id) VALUES($1,$2,$3,$4);
`
const Delete_rooms = `
    DELETE FROM rooms WHERE  room_id = $1
`

const Rooms = ()=> fetchData(rooms)
const Post_Rooms = (room_name,room_ametr_price,room_meter,branches_id)=> fetchData(post_rooms,room_name,room_ametr_price,room_meter,branches_id)
const Rooms_Get_Id = (id) => fetchData(Get_rooms_id,id)
const Rooms_Get_one = (id) => fetchData(Get_roooms_one,id)
const Room_delete = (id) => fetchData(Delete_rooms,id)
module.exports ={
    Rooms,
    Post_Rooms,
    Rooms_Get_Id,
    Rooms_Get_one,
    Room_delete
}