// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

interface IDecubateNFT {
  function walletOfOwner(address _owner) external view returns (uint256[] memory);
}
