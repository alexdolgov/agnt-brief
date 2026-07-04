// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

interface IHelixConfig {
  function goList(address member) external view returns (bool);

  function getNumber(uint256 index) external view returns (uint256);

  function getAddress(uint256 index) external view returns (address);

  function getBoolean(uint256 index) external view returns (bool);

  function setAddress(uint256 index, address newAddress) external returns (address);

  function setNumber(uint256 index, uint256 newNumber) external returns (uint256);

  function setBoolean(uint256 index, bool newBoolean) external returns (bool);
}
