const {fetchData} = require('../../utils/postgres')

const banks = `
    SELECT * FROM banks
`
const Get_banks = `
    SELECT * FROM banks where banks.bank_many > $1 order by bank_many ASC  limit 1;
`
const post_banks = `
    INSERT INTO banks(bank_name, bank_many,bank_durection,bank_start_payment,bank_service) VALUES($1,$2,$3,$4,$5);
`
const delete_banks = `
    DELETE FROM banks WHERE bank_id = $1
`
const Get_Banks =()=> fetchData(banks)
const Get_Banks_many =(money) => fetchData(Get_banks,money)
const post_Banks = (bank_name,bank_many,bank_durection,bank_start_payment,bank_service)=>fetchData(post_banks,bank_name,bank_many,bank_durection,bank_start_payment,bank_service)                 
const Delete_bankk = (id) => fetchData(delete_banks,id)

module.exports = {
    Get_Banks,
    post_Banks,
    Delete_bankk,
    Get_Banks_many
}