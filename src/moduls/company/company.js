const Connect = require('./model')

module.exports = {
    Get_Company : async (req, res)=>{
        try{
            res.json(await Connect.CompanyGet())
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Get_Company_Id : async (req, res) =>{
        const {id} = req.params
        if(!id){
            res.sendStatus(404)
        }else{ 
        try{
            res.json(await Connect.GetCompany_id(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }}
    },
    Post_Company : async (req, res) =>{
        const {company_name} = req.body
        try{
            res.json(await Connect.CompanyPost(company_name))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    },
    Delete_company : async (req, res) =>{
        const {id} = req.params
        try{
            res.json(await Connect.Delete_comp(id))
        }catch(error){
            res.sendStatus(500)
            console.log(error);
        }
    }
}