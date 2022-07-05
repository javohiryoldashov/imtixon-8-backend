const Connect = require('./modal')
module.exports = {
    Get_Branches : async (req, res) =>{
        try{
            res.json(await Connect.Branches())
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Branches_Id : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Branches_Get_Id(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Branches_One : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Branches_Get_one(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Post_Branches : async (req, res)=>{
        const {branch_name, branch_addres,company_id} = req.body
        try{
            res.json(await Connect.Branches_post(branch_name,branch_addres,company_id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Delete_branch : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Delete_Branch(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    }
}