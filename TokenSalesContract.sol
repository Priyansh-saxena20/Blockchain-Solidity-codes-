  pragma solidity ^0.4.0;

  contract TokenSale {
    mapping(address => uint) public balances;
    uint public totalSupply;
    uint public totalRaised;

    function buyTokens() public payable {
      uint amount = msg.value; 
      balances[msg.sender] += amount;
      totalRaised += amount; 
    }
  }