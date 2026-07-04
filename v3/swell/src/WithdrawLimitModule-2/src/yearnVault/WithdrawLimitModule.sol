// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import "src/yearnVault/interfaces/IVault.sol";
import "src/tokenisedStrategy/interfaces/IStrategy.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

contract WithdrawLimitModule {
  address public withdrawManager;
  address public owner;
  address public pendingOwner;
  uint256 private constant MAX_BPS = 10_000;

  event WithdrawManagerSet(address indexed withdrawManager);
  event PendingOwnerSet(address indexed pendingOwner);
  event OwnerSet(address indexed owner);

  /// @notice Initializes the contract with the owner and withdraw manager
  /// @param _owner The address of the owner
  /// @param _withdrawManager The address of the withdraw manager
  constructor(address _owner, address _withdrawManager) {
    require(_owner != address(0), "ZeroAddress");
    withdrawManager = _withdrawManager;
    owner = _owner;
    emit WithdrawManagerSet(_withdrawManager);
    emit OwnerSet(_owner);
  }

  /// @notice Modifier to restrict access to only the owner
  modifier onlyOwner() {
    require(msg.sender == owner, "!owner");
    _;
  }

  /// @notice Calculates the available withdraw limit
  /// @param _owner The address of the owner
  /// @param maxLoss The maximum allowable loss
  /// @return The available withdraw limit
  function available_withdraw_limit(
    address _owner,
    uint256 maxLoss,
    address[] calldata
  ) external view returns (uint256) {
    if (_owner != withdrawManager) return 0;
    IVault swellVault = IVault(msg.sender);
    uint256 maxAssets = swellVault.convertToAssets(swellVault.balanceOf(_owner));

    uint256 currentIdle = swellVault.totalIdle();
    if (maxAssets > currentIdle) {
      uint256 have = currentIdle;
      address[] memory defaultQueue = swellVault.get_default_queue();
      if (defaultQueue.length == 0) return have;
      address strategy = defaultQueue[0];

      IVault.StrategyParams memory stratParam = swellVault.strategies(strategy);

      require(stratParam.activation != 0, "Inactive strategy");

      uint256 toWithdraw = Math.min(maxAssets - have, stratParam.current_debt);

      uint256 unrealisedLoss = swellVault.assess_share_of_unrealised_losses(strategy, toWithdraw);

      uint256 strategyLimit = IStrategy(strategy).convertToAssets(IStrategy(strategy).maxRedeem(address(swellVault)));

      uint256 realizableWithdraw = toWithdraw - unrealisedLoss;
      if (strategyLimit < realizableWithdraw) {
        if (unrealisedLoss != 0) {
          unrealisedLoss = (unrealisedLoss * strategyLimit) / realizableWithdraw;
        }
        toWithdraw = strategyLimit + unrealisedLoss;
      }

      if (unrealisedLoss > 0 && maxLoss < MAX_BPS) {
        if (unrealisedLoss > ((have + toWithdraw) * maxLoss) / MAX_BPS) {
          return have;
        }
      }

      return have + toWithdraw;
    }

    return maxAssets;
  }

  /// @notice Sets the withdraw manager
  /// @param _withdrawManager The address of the new withdraw manager
  /// @dev Can only be called by the owner
  function setWithdrawManager(address _withdrawManager) external onlyOwner {
    withdrawManager = _withdrawManager;
    emit WithdrawManagerSet(_withdrawManager);
  }

  /// @notice Transfers ownership to a new pending owner
  /// @param _pendingOwner The address of the new pending owner
  /// @dev Can only be called by the owner
  function transferOwnership(address _pendingOwner) external onlyOwner {
    require(_pendingOwner != address(0), "ZeroAddress");
    pendingOwner = _pendingOwner;
    emit PendingOwnerSet(_pendingOwner);
  }

  /// @notice Accepts ownership by the pending owner
  /// @dev Can only be called by the pending owner
  function acceptOwnership() external {
    address _pendingOwner = pendingOwner;
    require(msg.sender == _pendingOwner, "!PendingOwner");
    owner = _pendingOwner;
    pendingOwner = address(0);
    emit OwnerSet(_pendingOwner);
  }
}
