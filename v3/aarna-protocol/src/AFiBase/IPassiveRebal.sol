// SPDX-License-Identifier: Unlicensed
pragma solidity =0.8.0;

interface IPassiveRebal {
  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    address _aFiStorage,
    uint _strategyNumber,
    address[] memory _tokens
  ) external returns (uint[] memory proportions);

  function getPauseStatus() external returns (bool);

  function getRebalPeriod(address aFiContract) external returns (uint);

  function updateRebalPeriod(address aFiContract, uint _newRebalPeiod) external;

  function setPassiveRebalancedStatus(address aFiContract, bool status) external;

  function isAFiPassiveRebalanced(
    address aFiContract
  ) external returns (bool _isPassiveRebalanced);

  function getRebalStrategyNumber(address aFiContract) external returns (uint);

  function updateRebalStrategyNumber(
    address aFiContract,
    uint updatedStrategy
  ) external;
}
