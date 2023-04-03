// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    string public name="Tofiq";
  function getName() public view returns (string memory) {
    return name;
  }
}
