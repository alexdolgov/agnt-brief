// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISettingsStore {
  function isAdmin(address subject) external view returns (bool);
  function isRegistered(address subject, string calldata resource) external view returns (bool);
  function isPermittedTo(address subject, string calldata resource, string calldata action) external view returns(bool);

  function resolve(string calldata name) external view returns (address);
}
