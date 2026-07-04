// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IKycStore {
  function isOperable(address userAddress) external view returns (bool);
}
