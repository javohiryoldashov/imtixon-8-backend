const {fetchData} = require('../../utils/postgres')

const  branches = `
    SELECT * FROM branches
`

const Get_branches_id = `
    SELECT * FROM branches WHERE branches.company_id = $1
`
const Get_branches_one = `
    SELECT * FROM branches WHERE branch_id = $1
`

const post_branches = `
    INSERT INTO branches(branch_name, branch_addres,company_id) VALUES($1, $2, $3)
`
const delete_branch = `
    DELETE FROM  branches WHERE branch_id = $1
`

const Branches = () => fetchData(branches)
const Branches_post = (branch_name,branch_addres,company_id) => fetchData(post_branches,branch_name,branch_addres,company_id)
const Branches_Get_Id = (id) => fetchData(Get_branches_id,id)
const Branches_Get_one = (id) => fetchData(Get_branches_one,id)
const Delete_Branch = (id) => fetchData(delete_branch,id)
module.exports = {
    Branches,
    Branches_post,
    Branches_Get_Id,
    Branches_Get_one,
    Delete_Branch
}