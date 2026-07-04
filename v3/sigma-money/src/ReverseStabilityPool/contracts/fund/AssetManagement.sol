// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { IStrategy } from "./IStrategy.sol";

abstract contract AssetManagement is AccessControlUpgradeable {
  using SafeERC20 for IERC20;

  /*************
   * Errors    *
   *************/

  /// @dev Thrown when managed amount + new deposit exceeds strategy capacity.
  error ErrorExceedsStrategyCapacity();

  /// @dev Thrown when no strategy is configured for the asset.
  error ErrorNoStrategyConfigured();

  /*************
   * Events    *
   *************/

  /// @notice Emitted when a strategy is allocated to an asset.
  event StrategyAllocated(address indexed asset, address indexed strategy, uint96 capacity);

  /// @notice Emitted when a strategy is killed and its allocation cleared.
  event StrategyKilled(address indexed asset, address indexed strategy);

  /// @notice Emitted when funds are deployed to a strategy.
  event AssetManaged(address indexed asset, uint256 amount);

  /*************
   * Constants *
   *************/

  bytes32 public constant ASSET_MANAGER_ROLE = keccak256("ASSET_MANAGER_ROLE");

  struct Allocation {
    address strategy;
    uint96 capacity;
  }

  mapping(address => Allocation) public allocations;

  /**
   * @dev This empty reserved space is put in place to allow future versions to add new
   * variables without shifting down storage in the inheritance chain.
   */
  uint256[49] private __gap;

  function kill(address asset) public onlyRole(DEFAULT_ADMIN_ROLE) {
    Allocation memory curAlloc = allocations[asset];
    if (curAlloc.strategy != address(0)) {
      address oldStrategy = curAlloc.strategy;
      IStrategy(oldStrategy).kill();
      curAlloc.strategy = address(0);
      curAlloc.capacity = 0;
      allocations[asset] = curAlloc;
      emit StrategyKilled(asset, oldStrategy);
    }
  }

  function alloc(address asset, address strategy, uint96 capacity) external onlyRole(DEFAULT_ADMIN_ROLE) {
    Allocation memory oldAlloc = allocations[asset];
    if (oldAlloc.strategy != address(0)) kill(asset);
    allocations[asset] = Allocation({ strategy: strategy, capacity: capacity });
    emit StrategyAllocated(asset, strategy, capacity);
  }

  function manage(address asset, uint256 amount) external onlyRole(ASSET_MANAGER_ROLE) {
    Allocation memory curAlloc = allocations[asset];
    uint256 managed = IStrategy(curAlloc.strategy).totalSupply();
    if (managed + amount > curAlloc.capacity) revert ErrorExceedsStrategyCapacity();
    IERC20(asset).safeTransfer(curAlloc.strategy, amount);
    IStrategy(curAlloc.strategy).deposit(amount);
    emit AssetManaged(asset, amount);
  }

  function _transferOut(address asset, uint256 amount, address receiver) internal {
    uint256 balance = IERC20(asset).balanceOf(address(this));
    if (balance >= amount) {
      IERC20(asset).safeTransfer(receiver, amount);
    } else {
      if (balance > 0) {
        IERC20(asset).safeTransfer(receiver, balance);
      }
      unchecked {
        uint256 diff = amount - balance;
        Allocation memory curAlloc = allocations[asset];
        if (curAlloc.strategy == address(0)) revert ErrorNoStrategyConfigured();
        IStrategy(curAlloc.strategy).withdraw(diff, receiver);
      }
    }
  }

  /// @dev Returns pool balance + strategy principal. Note: principal() is an accounting
  /// value and may exceed the strategy's actual withdrawable balance when funds have
  /// been deployed to an external treasury.
  function _balanceOf(address asset) internal view returns (uint256) {
    uint256 balance = IERC20(asset).balanceOf(address(this));
    address strategy = allocations[asset].strategy;
    if (strategy == address(0)) return balance;
    return balance + IStrategy(strategy).principal();
  }
}
