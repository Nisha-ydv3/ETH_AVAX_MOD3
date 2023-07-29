// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "hardhat/console.sol";


// write a smart contract to create your own token on a local HardHat network. Once you have your contract, 
// you should be able to use remix to interact with it. 
// From remix, the contract owner should be able to mint tokens to a provided address. 
// Any user should be able to burn and mint tokens.


contract Token{
    string public tokName="Nisha";
    string public Asymbol="Yadav";
    uint256 public totalSupply=0;
    


     // mapping variable here
    mapping (address=> uint256) public amount;
    // Contract owner's address
    address public owner; 

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    // Constructor to set the contract owner's address
    constructor() {
        owner = msg.sender;
    }

    
    // burn function
    function Tokenburn( address _address,uint256 _data) public {
        if( amount[_address] >= _data){
            totalSupply -= _data;
            amount[_address] -= _data;
        }
        
    }
 
     // mint function - can only be called by the owner
    function Tokenmint(address _address, uint256 _data) public onlyOwner {
        totalSupply += _data;
        amount[_address] += _data;
    }

    //transfer function
    function Tokentransfer(address _reciever, uint256 _amount) public {
        require(amount[msg.sender] >= _amount, "Balance is not sufficient");
        amount[msg.sender] -= _amount;
        amount[_reciever] += _amount;
    }


    

}


