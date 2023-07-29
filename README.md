# Token creation on Hrdhat Network

This is a simple Ethereum smart contract written in Solidity that allows the creation and management of custom tokens on a local HardHat network. 
here in this contract you can mint tokens to a provided address, and any user can burn and mint tokens.

## Features
### mint(address _address, uint256 _data)
This function allows the contract owner to mint new tokens and assign them to the specified address. 
The total supply and the balance of the target address will increase by the specified amount.

### burn(address _address, uint256 _data)
Any user can burn their tokens by calling this function with their address and the amount of tokens they want to burn. 
The total supply and the balance of the target address will decrease by the specified amount.

### function Tokentransfer(address _reciever, uint256 _amount)
Any user can transfer transfer of tokens from the sender's address to the receiver's address by calling this function.
### tokName
This is a public variable representing the name of the token. 

### Constructor
The constructor sets the owner of the contract to the address that deployed the contract.

### Modifier onlyOwner
This modifier is used to restrict access to certain functions only to the contract owner. Functions using this modifier will only be executed if the caller is the contract owner.

### Asymbol
This is a public variable representing the symbol of the token. 

### totalSupply
This is a public variable representing the total supply of tokens in circulation.

### amount
This is a mapping that tracks the balance of each address. It allows users to check their token balance.

## Steps to connect local hardhat network with remix

Install all require dependencies using npm install command.

### 1.Go to your projects terminal and compile the program using  npx hardhat node command.
### 2.Open other terminal in same directory and run remixd command.
### 3.Open remix on your web browser and connect to localhost workspace and then compile contract.
### 4.And then interact with the Contract using Remix with Hardhat Provider




