// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "BETA";
    string public tokenAbbr = "TU";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;
    
    // mint function
    function mint (address _address, uint val) public {
        totalSupply += val;
        balances[_address] += val;
    }
    
    // burn function
    function burn (address _address, uint val) public {
        if( balances[_address] < val ) return;
        totalSupply -= val;
        balances[_address] -= val;
    }

}
