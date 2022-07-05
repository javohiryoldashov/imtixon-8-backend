const {fetchData} = require('../../utils/postgres')

const Company = `
    SELECT * FROM company
`

const Get_Company_id = `
    SELECT * FROM company WHERE company_id = $1
`
const Company_post = `
    INSERT INTO company(company_name, company_img) VALUES($1,'https://www.mbc.uz/includes/images/new_layout/logo.svg')
`
const Company_delete = `
    DELETE FROM company WHERE company_id = $1
`

const CompanyGet = () => fetchData(Company)
const CompanyPost = (company_name) =>fetchData(Company_post, company_name)
const GetCompany_id = (id) => fetchData(Get_Company_id,id)
const Delete_comp = (id)=> fetchData(Company_delete, id)
module.exports = {
    CompanyGet,
    CompanyPost,
    GetCompany_id,
    Delete_comp
}