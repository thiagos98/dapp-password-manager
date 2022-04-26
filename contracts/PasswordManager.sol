// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract PasswordManager {
    
    mapping(address => string[]) passwords;
    
    address[] listAddrPassword;

    // create a function to save a password inside a mapping array in solidity
    function savePassword(address addr, string memory password) public {
        if (passwords[addr].length > 3) {
            passwords[addr].push(password);
            saveAddress(addr);
        }
    }
    
    // create a function to get a password inside a mapping array in solidity
    function getPassword(address addr, uint index) public view returns (string memory) {
        return passwords[addr][index];
    }
    
    // create a function to get the number of passwords inside a mapping array in solidity
    function getNumPasswords(address addr) public view returns (uint) {
        return passwords[addr].length;
    }
    
    // create a function to save an address inside a mapping array in solidity
    function saveAddress(address addr) internal {
        listAddrPassword.push(addr);
    }
    
    // create a function to get an address inside a mapping array in solidity
    function getAddress(uint index) public view returns (address) {
        return listAddrPassword[index];
    }
    
    // create a function to get the number of addresses inside a mapping array in solidity
    function getNumAddresses() public view returns (uint) {
        return listAddrPassword.length;
    }
}