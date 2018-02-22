pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Alfacoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Alfacoin(address _owner)  UpgradeableToken(_owner) {
    name = "Alfacoin";
    symbol = "AFC";
    totalSupply = 4200000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}