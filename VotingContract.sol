  pragma solidity ^0.4.0;

  contract Voting {
    struct Option {
      string name;
      uint voteCount;  
    }

    Option[] public options;

    function voteForOption(uint optionIndex) public {
      options[optionIndex].voteCount += 1;
    }
  }