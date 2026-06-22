// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


interface ISynth {
  function initialize(string memory name, string memory symbol, address _oracle, address lz0Endpoint, address _savingPoolLogic) external;
  function transferOwnership(address newOwner) external;
  function mint(address _recipient, uint256 _amount) external;
  function burn(address _recipient, uint256 _amount) external;
  function getPrice() external view returns (uint);
  function getSavingsYield() external returns (uint);
  function collectSavingsIncome(address asset, uint amount) external;
}