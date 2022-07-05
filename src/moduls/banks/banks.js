const Connect = require('./modal')

module.exports ={
    Get_Banks: async (req, res)=>{
        try{
            res.json(await Connect.Get_Banks())
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Banks_Money: async (req, res)=>{
        const {money} = req.params
        try{
            res.json(await Connect.Get_Banks_many(money))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Post_Banks : async (req, res)=>{
        const {bank_name,bank_many,bank_durection,bank_start_payment,bank_service} = req.body
        try{
            res.json(await Connect.post_Banks(bank_name,bank_many,bank_durection,bank_start_payment,bank_service))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    }, 
    Delete_Bank : async (req, res)=>{
        const {id} = req.params
        try{
            res.json(await Connect.Delete_bankk(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    }
}