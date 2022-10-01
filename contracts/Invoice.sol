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

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(
        uint256 num,
        uint qty,
        uint amt,
        string memory acc
        ) public {
        number = num;
        quantity = qty;
        amount = amt;
        account_number = acc;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

}