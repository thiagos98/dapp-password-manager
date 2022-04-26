// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract PasswordManager {
    
    mapping(address => string[]) passwords;
    
    address[] listAddrPassword;

    function savePassword(address addr, string memory password) public {
        if (passwords[addr].length > 3) {
            passwords[addr].push(password);
            saveAddress(addr);
        }
    }
    
    function getPassword(address addr, uint index) public view returns (string memory) {
        return passwords[addr][index];
    }
    
    function getNumPasswords(address addr) public view returns (uint) {
        return passwords[addr].length;
    }
    
    function saveAddress(address addr) internal {
        listAddrPassword.push(addr);
    }
    
    function getAddress(uint index) public view returns (address) {
        return listAddrPassword[index];
    }
    
    function getNumAddresses() public view returns (uint) {
        return listAddrPassword.length;
    }
}