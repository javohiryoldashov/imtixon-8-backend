const Connect = require('./modal')

module.exports ={
    Get_Rooms : async (req, res) =>{
        try{
            res.json(await Connect.Rooms())
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Rooms_Id : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Rooms_Get_Id(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Rooms_One : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Rooms_Get_one(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Post_Rooms : async (req, res)=>{
        const {room_name,room_ametr_price,room_meter,branches_id} = req.body
        try{
            res.json(await Connect.Post_Rooms(room_name,room_ametr_price,room_meter,branches_id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Delete_room : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Room_delete(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    }
}