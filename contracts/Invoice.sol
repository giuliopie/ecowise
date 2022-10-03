// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Invoice
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Invoice {

    uint256 number;
    uint quantity;
    uint amount;
    string account_number;
    string pdr_number;
    string user;
    string hash_document;
    string current_date;
    enum energy_type { ELECTRICITY, GAS, WATER }
    enum meter_code { kw, smc, l }
    uint credit_balance;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(
        uint256 num,
        uint qty,
        uint amt,
        string memory acc,
        string memory pdr,
        string memory hash_doc,
        string memory today,
        energy_type energy,
        meter_code meter,
        uint balance
        ) public {
        number = num;
        quantity = qty;
        amount = amt;
        user = string.concat(acc, '-', pdr);
        hash_document = hash_doc;
        current_date = today;
        energy = energy;
        meter = meter;
        credit_balance = balance;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

}