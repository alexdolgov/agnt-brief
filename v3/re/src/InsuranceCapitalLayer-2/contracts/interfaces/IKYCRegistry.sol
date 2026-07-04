//SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

interface IKYCRegistry {
  // function isKYCUser(
  //   bytes32[] calldata proof,
  //   bytes32 leaf
  // ) external view returns (bool);

  function isKYCApproved(address user) external view returns (bool);
}
