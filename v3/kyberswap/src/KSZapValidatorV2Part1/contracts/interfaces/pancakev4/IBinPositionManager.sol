// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IBinPoolManager} from './IBinPoolManager.sol';
import {IVault} from './IVault.sol';
import {BalanceDelta, CLPositionInfo, PoolKey} from './Types.sol';
import {IAllowanceTransfer} from 'contracts/interfaces/permit2/IAllowanceTransfer.sol';

interface IBinPositionManager {
  /// @notice Thrown when the block.timestamp exceeds the user-provided deadline
  error DeadlinePassed(uint256 deadline);

  /// @notice Thrown when calling transfer, subscribe, or unsubscribe on CLPositionManager
  /// or batchTransferFrom on BinPositionManager when the vault is locked.
  /// @dev This is to prevent hooks from being able to trigger actions or notifications at the same time the position is being modified.
  error VaultMustBeUnlocked();

  /// @notice Thrown when the token ID is bind to an unexisting pool
  error InvalidTokenID();

  /// @notice Unlocks Vault and batches actions for modifying liquidity
  /// @dev This is the standard entrypoint for the PositionManager
  /// @param payload is an encoding of actions, and parameters for those actions
  /// @param deadline is the deadline for the batched actions to be executed
  function modifyLiquidities(bytes calldata payload, uint256 deadline) external payable;

  /// @notice Batches actions for modifying liquidity without getting a lock from vault
  /// @dev This must be called by a contract that has already locked the vault
  /// @param actions the actions to perform
  /// @param params the parameters to provide for the actions
  function modifyLiquiditiesWithoutLock(bytes calldata actions, bytes[] calldata params)
    external
    payable;

  error IdOverflows(int256);
  error IdSlippageCaught(uint256 activeIdDesired, uint256 idSlippage, uint24 activeId);
  error AddLiquidityInputActiveIdMismatch();

  /// @notice BinAddLiquidityParams
  /// - amount0: Amount to send for token0
  /// - amount1: Amount to send for token1
  /// - amount0Max: Max amount to send for token0
  /// - amount1Max: Max amount to send for token1
  /// - activeIdDesired: Active id that user wants to add liquidity from
  /// - idSlippage: Number of id that are allowed to slip
  /// - deltaIds: List of delta ids to add liquidity (`deltaId = activeId - desiredId`)
  /// - distributionX: Distribution of tokenX with sum(distributionX) = 1e18 (100%) or 0 (0%)
  /// - distributionY: Distribution of tokenY with sum(distributionY) = 1e18 (100%) or 0 (0%)
  /// - to: Address of recipient
  /// - hookData: Data to pass to the hook
  struct BinAddLiquidityParams {
    PoolKey poolKey;
    uint128 amount0;
    uint128 amount1;
    uint128 amount0Max;
    uint128 amount1Max;
    uint256 activeIdDesired;
    uint256 idSlippage;
    int256[] deltaIds;
    uint256[] distributionX;
    uint256[] distributionY;
    address to;
    bytes hookData;
  }

  /// @notice BinRemoveLiquidityParams
  /// - amount0Min: Min amount to receive for token0
  /// - amount1Min: Min amount to receive for token1
  /// - ids: List of bin ids to remove liquidity
  /// - amounts: List of share amount to remove for each bin
  /// - from: Address of NFT holder to burn the NFT
  /// - hookData: Data to pass to the hook
  struct BinRemoveLiquidityParams {
    PoolKey poolKey;
    uint128 amount0Min;
    uint128 amount1Min;
    uint256[] ids;
    uint256[] amounts;
    address from;
    bytes hookData;
  }

  /// @notice BinAddLiquidityFromDeltasParams
  /// - amount0Max: Max amount to send for token0
  /// - amount1Max: Max amount to send for token1
  /// - activeIdDesired: Active id that user wants to add liquidity from
  /// - idSlippage: Number of id that are allowed to slip
  /// - deltaIds: List of delta ids to add liquidity (`deltaId = activeId - desiredId`)
  /// - distributionX: Distribution of tokenX with sum(distributionX) = 1e18 (100%) or 0 (0%)
  /// - distributionY: Distribution of tokenY with sum(distributionY) = 1e18 (100%) or 0 (0%)
  /// - to: Address of recipient
  /// - hookData: Data to pass to the hook
  struct BinAddLiquidityFromDeltasParams {
    PoolKey poolKey;
    uint128 amount0Max;
    uint128 amount1Max;
    uint256 activeIdDesired;
    uint256 idSlippage;
    int256[] deltaIds;
    uint256[] distributionX;
    uint256[] distributionY;
    address to;
    bytes hookData;
  }

  function binPoolManager() external view returns (IBinPoolManager);

  /// @notice Initialize a infinity PCS bin pool
  /// @dev If the pool is already initialized, this function will not revert
  /// @param key the PoolKey of the pool to initialize
  /// @param activeId the active bin id of the pool
  function initializePool(PoolKey memory key, uint24 activeId) external payable;

  /// @notice Return the position information associated with a given tokenId
  /// @dev Revert if non-existent tokenId
  /// @param tokenId Id of the token that represent position
  /// @return poolKey the pool key of the position
  /// @return binId the binId of the position
  function positions(uint256 tokenId) external view returns (PoolKey memory poolKey, uint24 binId);

  function permit2() external view returns (IAllowanceTransfer);

  function vault() external view returns (IVault);

  function approveForAll(address operator, bool approved) external;
}
