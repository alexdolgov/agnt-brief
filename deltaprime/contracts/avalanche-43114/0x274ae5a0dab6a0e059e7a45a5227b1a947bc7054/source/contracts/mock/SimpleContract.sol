// SPDX-License-Identifier: UNLICENSED
// Last deployed using commit: ;
pragma solidity ^0.6.6;

/**
 * @title SimpleContract
 * @dev A mock implementation of a SmartLoan to check if upgrade mechanism correctly update contract logic
 */
contract SimpleContract {
  function getHello() public view  returns (string memory) {
    return "Hello world";
  }
}
