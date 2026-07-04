// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.0;

import {SafeERC20} from "./SafeERC20.sol";
import "./Ownable.sol";
import "./IERC20.sol";


interface IAFiManager {
  function _distributeProfitShare(
    address aFiStorage,
    address aFiContract,
    uint profit,
    address oToken
  ) external returns (uint totalProfitShare);

  function updateUTokenProportion(address aFiContract,address aFiStorage) external returns(uint256[] memory);
  function intializeData(address aFiContract,address[] memory underlyingTokens,uint[] memory underlyingProportion) external;

}

contract AFiPassiveRebalanceStrategies is Ownable {
  using SafeERC20 for IERC20;
  address internal afiManager;
  bool internal paused;
  mapping(address => bool) internal isPassiveRebalanced;
  mapping(address => uint) internal strategyNumber;

  /**
   * @param account Address of the account that paused the contract.
   */
  event Paused(address account);
  /**
   * @param account Address of the account that unpaused the contract.
   */
  event Unpaused(address account);
  event UpdateRebalStrategyNumberByOwner(address indexed aFiContract, uint updatedStrategy);
  event SetPassiveRebalancedStatusByOwner(address indexed aFiContract, bool status);
  event SetPassiveRebalancedStatus(address indexed aFiContract, bool status);
  event UpdateRebalPeriodByOwner(address indexed aFiContract, uint _newRebalPeiod);

  modifier contractUnpaused() {
    require(!paused);
    _;
  }

  modifier contractPaused() {
    require(paused);
    _;
  }

  modifier onlySpecificAddress(address _addr) {
    require(msg.sender == _addr, "AFPR: Not authorized"); //solhint-disable-line reason-string
    _;
  }
  mapping(address => uint) internal rebalPeriod;

  /**
   * @notice To pause the contract.
   * @dev Requirements: It can only be invoked by owner.
   */
  function pause() external contractUnpaused onlyOwner {
    paused = true;
    emit Paused(msg.sender);
  }

  /**
   * @notice To resume/unpause the contract.
   * @dev Requirements: It can only be invoked by the owner.
   */
  function unPause() external contractPaused onlyOwner {
    paused = false;
    emit Unpaused(msg.sender);
  }

  /**
   * @notice Returns a new proportions according to the strategy
   * @param _aFiContract afi Contract.
   * @param _strategyNumber strategy number to apply.
   * @param _tokens underlying tokens.
   * @return proportions i.e. a new proportions array according to the strategy.
   */
  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    address _aFiStorage,
    uint _strategyNumber,
    address[] memory _tokens
  ) external contractUnpaused onlySpecificAddress(_aFiContract) returns(uint[] memory proportions) {
    uint[] memory uTokenProportions = new uint[](_tokens.length);
    if (_strategyNumber == 1) {
      uTokenProportions =  IAFiManager(_aFiManager).updateUTokenProportion(_aFiContract, _aFiStorage);
    }
    return uTokenProportions;
  }

  /**
   * @notice Returns the pause status of the contract.
   * @return bool pause status of the contract.
   */
  function getPauseStatus() external view returns (bool) {
    return paused;
  }

  /**
   * @notice Returns the Rebalance Period.
   * @return uint256 Rebalance Period.
   */
  function getRebalPeriod(address aFiContract) external view returns (uint) {
    return rebalPeriod[aFiContract];
  }

  /**
   * @notice To update the rebalance Period, this comes in handy during rebalancing.
   * @dev The contract must not be paused. It can only be invoked by the owner of the contract.
   * @param aFiContract address of the afi contract.
   * @param _newRebalPeiod new Rebalance Period to set.
   */
  function updateRebalPeriodByOwner(address aFiContract, uint _newRebalPeiod)
    external
    onlyOwner
    contractUnpaused
  {
    rebalPeriod[aFiContract] = _newRebalPeiod;
    emit UpdateRebalPeriodByOwner(aFiContract, _newRebalPeiod);
  }

  /**
   * @notice Desables/Enables passive rebalance status of an afi contract.
   * @dev The contract must not be paused. It can only be invoked by the afi contract itself.
   * @param aFiContract afi Contract.
   * @param status boolean to be applied.
   */
  function setPassiveRebalancedStatus(address aFiContract, bool status)
    external
    contractUnpaused
    onlySpecificAddress(aFiContract)
  {
    isPassiveRebalanced[aFiContract] = status;
    emit SetPassiveRebalancedStatus(aFiContract, status);
  }

  /**
   * @notice Desables/Enables passive rebalance status of an afi contract.
   * @dev The contract must not be paused. It can only be invoked by owner of the contract.
   * @param aFiContract afi Contract.
   * @param status boolean to be applied.
   */
  function setPassiveRebalancedStatusByOwner(address aFiContract, bool status)
    external
    contractUnpaused
   onlyOwner
  {
    isPassiveRebalanced[aFiContract] = status;
    emit SetPassiveRebalancedStatusByOwner(aFiContract, status);
  }

  /**
   * @notice Returns the passive rebalance of the afi contract.
   * @param aFiContract afi Contract.
   * @return _isPassiveRebalanced boolean status.
   */
  function isAFiPassiveRebalanced(address aFiContract)
    external
    view
    returns (bool _isPassiveRebalanced)
  {
    _isPassiveRebalanced = isPassiveRebalanced[aFiContract];
  }

  /**
   * @notice Returns current enabled strategy for passive rebalance.
   * @param aFiContract afi Contract.
   * @return uint strategy number.
   */
  function getRebalStrategyNumber(address aFiContract) external view returns (uint) {
    return strategyNumber[aFiContract];
  }

  /**
   * @notice Updates the current enabled strategy for passive rebalance for an afi contract.
   * @dev The contract must not be paused. It can only be invoked by owner of the contract.
   * @param aFiContract afi Contract.
   * @param updatedStrategy uint new strategy numebr to update.
   */
  function updateRebalStrategyNumberByOwner(address aFiContract, uint updatedStrategy)
    external
    contractUnpaused
    onlyOwner
  {
    strategyNumber[aFiContract] = updatedStrategy;
    emit UpdateRebalStrategyNumberByOwner(aFiContract, updatedStrategy);
  }
}