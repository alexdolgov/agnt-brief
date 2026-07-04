// SPDX-License-Identifier: MIT

//** Decubate WalletStore Contract */
//** Author Vipin & Aaron : Decubate Walletstore 2021.6 */
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./interfaces/IDecubateWalletStore.sol";

contract DecubateWalletStore is Context, IDecubateWalletStore, Ownable {
  mapping(address => bool) public override isVerified;
  mapping(address => uint256) public arrayIndex;
  mapping(address => uint256) public lastAccessTime;

  uint256 public waitTime;

  address[] private verifiedList;

  constructor(uint256 _waitTime) {
    waitTime = _waitTime;
  }

  modifier hasWaited(address _address) {
    require(
      block.timestamp >= lastAccessTime[_address] + waitTime,
      "User must wait before changing wallet again"
    );
    _;
  }

  function addUser(address _address) public override onlyOwner returns (bool) {
    require(!isVerified[_address], "user is already verified");

    verifiedList.push(_address);
    isVerified[_address] = true;
    arrayIndex[_address] = verifiedList.length - 1;

    return true;
  }

  function batchAddUser(address[] memory users)
    external
    onlyOwner
    returns (bool)
  {
    for (uint256 i = 0; i < users.length; i++) {
      addUser(users[i]);
    }
    return true;
  }

  function replaceUser(address oldAddress, address newAddress)
    external
    override
    hasWaited(oldAddress)
    returns (bool)
  {
    require(
      msg.sender == oldAddress || msg.sender == owner(),
      "user does not have correct permission"
    );
    require(!isVerified[newAddress], "new address is already verified");

    isVerified[oldAddress] = false;
    isVerified[newAddress] = true;

    uint256 idx = arrayIndex[oldAddress];
    verifiedList[idx] = newAddress;

    lastAccessTime[newAddress] = block.timestamp;

    return true;
  }

  function getVerifiedUsers()
    external
    view
    override
    returns (address[] memory)
  {
    return verifiedList;
  }
}
