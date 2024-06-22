# Project Title

My Token

## Description

This program is about creating a smart contract named Mytoken in solidity proramming language.
Deadly Coin (DC) Token Smart Contract This Solidity smart contract implements the Deadly Coin (DC) token as an ERC-20 standard token on the Ethereum blockchain.

# Code Description:

1). We have 3 variable for storing in details of our coin

  ```
string public tokenName = "BETA";
  string public tokenAbbr = "TU";
  uint public totalSupply = 0;
```

2). Then we create a mapping from address to uint to store the balance for specific addresses:

 ```
 mapping(address => uint) public balances;
```

3). Then our mint function which takes in two parameters of type (address, uint). which adds the value(uint) to the passed address:
and to the totalSupply variable

  ```
function mint (address _address, uint val) public {
        totalSupply += val;
        balances[_address] += val;
  }
```

4). The burn function is similar to the mint function except it deducts the value from the balances and if the balance of the
passed address is less that the amount to be deducted it return:

  ```
function burn (address _address, uint val) public {
        if( balances[_address] < val ) return;
        totalSupply -= val;
        balances[_address] -= val;
    }
```
    


