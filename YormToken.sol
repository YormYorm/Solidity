// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store token information
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    // Mapping to track token balances for each address
    mapping(address => uint256) public balances;

    // Constructor to initialize token details and set the initial supply
    constructor() {
        tokenName = "YormToken";         
        tokenAbbrv = "YTK";       
        totalSupply = 1000000;  
    
    }

    // Function to mint new tokens and increase total supply
    function mint(address _to, uint256 _value) public {
        require(_to != address(0), "Invalid address");  
        require(_value > 0, "Value must be greater than zero");  

        totalSupply += _value;      
        balances[_to] += _value;    
    }

    // Function to burn tokens and decrease total supply
    function burn(address _from, uint256 _value) public {
        require(_from != address(0), "Invalid address");  
        require(balances[_from] >= _value, "Insufficient balance");  // Ensure the source address has enough balance

        totalSupply -= _value;      // Decrease the total supply
        balances[_from] -= _value;  // Decrease the balance of the source address
    }
}