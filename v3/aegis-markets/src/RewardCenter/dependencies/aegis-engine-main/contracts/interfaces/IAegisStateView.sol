// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PoolId } from "@uniswap/v4-core/src/types/PoolId.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { BalanceDelta } from "@uniswap/v4-core/src/types/BalanceDelta.sol";
import { IAegisEngine } from "./IAegisEngine.sol";
import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import { ILimitOrderManager } from "./ILimitOrderManager.sol";
import { Market } from "../libraries/ae/market/Market.sol";
import { Vault } from "../libraries/ae/vault/Vault.sol";
import { NftRef } from "../types/AegisStructs.sol";

/// @title IAegisStateView
/// @notice Interface for the AegisStateView contract
/// @dev This interface provides view functions to read AegisEngine state offchain.
///      For onchain usage, use AegisStateLibrary directly.
interface IAegisStateView {
  // ========================================
  // MARKET STATE QUERIES
  // ========================================

  /// @notice Get the full market state for a pool
  /// @dev Corresponds to _markets[poolId]
  /// @param poolId The pool identifier
  /// @return state The complete market state including initialization, debt, equity, oracle, and key
  function getMarketState(PoolId poolId) external view returns (Market.State memory state);

  /// @notice Check if a market has been initialized in the engine
  /// @dev Corresponds to _markets[poolId].initialized
  /// @param poolId The pool identifier
  /// @return initialized True if the market has been initialized, false otherwise
  function isMarketInitialized(PoolId poolId) external view returns (bool initialized);

  /// @notice Get the borrow index for a market
  /// @dev Corresponds to _markets[poolId].borrowIndexWad
  ///      The borrow index tracks accumulated interest in WAD precision (1e18)
  /// @param poolId The pool identifier
  /// @return borrowIndexWad The borrow index in WAD precision
  function getMarketBorrowIndex(PoolId poolId) external view returns (uint256 borrowIndexWad);

  /// @notice Get the total equity for a market
  /// @dev Corresponds to _markets[poolId].equityLWad
  ///      Equity represents lender deposits + accumulated fees in L-units (WAD precision)
  /// @param poolId The pool identifier
  /// @return equityLWad The equity in L-units with WAD precision
  function getMarketEquity(PoolId poolId) external view returns (uint256 equityLWad);

  /// @notice Get the total debt borrowed from a market
  /// @dev Corresponds to _markets[poolId].totalRlBorrowed
  ///      Total debt in principal L-units (before applying borrow index)
  /// @param poolId The pool identifier
  /// @return totalRlBorrowed The total principal debt in L-units
  function getMarketTotalDebt(PoolId poolId) external view returns (uint128 totalRlBorrowed);

  /// @notice Get the last accrual timestamp for a market
  /// @dev Corresponds to _markets[poolId].lastAccrue
  ///      Timestamp of the last interest accrual event
  /// @param poolId The pool identifier
  /// @return lastAccrue The last accrual timestamp (uint40)
  function getMarketLastAccrue(PoolId poolId) external view returns (uint40 lastAccrue);

  /// @notice Get the protocol fee rate for a market
  /// @dev Corresponds to _markets[poolId].protocolFeePips
  ///      Protocol fee rate in pips (0-1000000 = 0%-100%)
  /// @param poolId The pool identifier
  /// @return protocolFeePips The protocol fee in pips
  function getMarketProtocolFee(PoolId poolId) external view returns (uint24 protocolFeePips);

  /// @notice Get the rate oracle and full utilization rate for a market
  /// @dev Corresponds to _markets[poolId].rateOracle and _markets[poolId].fullUtilizationRate
  ///      The rate oracle determines variable interest rates based on utilization
  /// @param poolId The pool identifier
  /// @return rateOracle The address of the rate oracle contract
  /// @return fullUtilRate The full utilization rate in WAD precision
  function getMarketRateOracle(PoolId poolId) external view returns (address rateOracle, uint64 fullUtilRate);

  /// @notice Get the per-market LTV thresholds for micro-liquidation
  /// @dev Corresponds to _markets[poolId].maxLtvPips and _markets[poolId].hardLtvPips
  ///      Thresholds are computed from pool fee at market initialization
  /// @param poolId The pool identifier
  /// @return maxLtvPips The MAX LTV threshold (micro-liq start, lock guard)
  /// @return hardLtvPips The HARD LTV threshold (full repay, max keeper fee)
  function getMarketLtvThresholds(PoolId poolId) external view returns (uint24 maxLtvPips, uint24 hardLtvPips);

  /// @notice Get the pool key for a market
  /// @dev Corresponds to _markets[poolId].key
  ///      PoolKey identifies the Uniswap V4 pool (currencies, fee, tickSpacing, hooks)
  /// @param poolId The pool identifier
  /// @return key The pool key struct
  function getMarketKey(PoolId poolId) external view returns (PoolKey memory key);

  /// @notice Get the residue balances for a market
  /// @dev Corresponds to _markets[poolId].residues
  ///      Residues are one-sided fee accumulations not yet minted as equity
  /// @param poolId The pool identifier
  /// @return residues The balance delta representing residues
  function getMarketResidues(PoolId poolId) external view returns (BalanceDelta residues);

  /// @notice Get the borrowed liquidity in WAD-scaled L units (rL * indexWad)
  /// @param poolId The pool identifier
  /// @return borrowedLWad The borrowed L in WAD precision
  function getMarketBorrowedLWad(PoolId poolId) external view returns (uint256 borrowedLWad);

  /// @notice Get current market utilization in pips
  /// @param poolId The pool identifier
  /// @return utilPips Utilization in pips (0..1_000_000)
  function getMarketUtilizationPips(PoolId poolId) external view returns (uint256 utilPips);

  /// @notice Get the borrowed liquidity in WAD-scaled L using previewed borrow index
  /// @param poolId The pool identifier
  /// @return borrowedLWadLatest Borrowed L in WAD precision using previewed index
  function getMarketBorrowedLWadLatest(PoolId poolId) external view returns (uint256 borrowedLWadLatest);

  /// @notice Get the per-share price in WAD (equityLWad / totalShares)
  /// @param poolId The pool identifier
  /// @return sharePriceWad Share price in WAD precision
  function getMarketSharePriceWad(PoolId poolId) external view returns (uint256 sharePriceWad);

  /// @notice Get the per-share price in WAD using previewed equity/index
  /// @param poolId The pool identifier
  /// @return sharePriceWadLatest Share price in WAD precision using previewed accrual
  function getMarketSharePriceWadLatest(PoolId poolId) external view returns (uint256 sharePriceWadLatest);

  /// @notice Get previewed utilization in pips using previewed index/equity
  /// @param poolId The pool identifier
  /// @return utilPipsLatest Utilization in pips using previewed accrual
  function getMarketUtilizationPipsLatest(PoolId poolId) external view returns (uint256 utilPipsLatest);

  /// @notice Preview what accrue() would produce if applied now (interest only; no fee-mint from residues)
  /// @dev Simulates interest accrual without modifying state
  /// @param poolId The pool identifier
  /// @return borrowIndexWadLatest The borrow index after applying interest for deltaTime
  /// @return equityLWadLatest The equity after adding accrued interest
  /// @return fullUtilRateLatest The updated cached full-utilization rate
  function previewMarketAccrual(PoolId poolId)
    external
    view
    returns (uint256 borrowIndexWadLatest, uint256 equityLWadLatest, uint64 fullUtilRateLatest);

  // ========================================
  // VAULT STATE QUERIES
  // ========================================

  /// @notice Get the full vault state
  /// @dev Corresponds to _vaults[vaultId]
  ///      Note: positions array is read separately, not included in this batch read
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return state The complete vault state including pool binding, idle balances, and debt
  function getVaultState(uint256 vaultId) external view returns (Vault.State memory state);

  /// @notice Get the full vault state including positions
  /// @dev Reads _vaults[vaultId] base fields and the positions array in a single call
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return state The complete vault state including positions
  function getVaultStateWithPositions(uint256 vaultId) external view returns (Vault.State memory state);

  /// @notice Get the pool ID that a vault is bound to
  /// @dev Corresponds to _vaults[vaultId].poolId
  ///      Each vault is bound to a single pool
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return poolId The pool identifier
  function getVaultPoolId(uint256 vaultId) external view returns (PoolId poolId);

  /// @notice Get the idle balances for a vault
  /// @dev Corresponds to _vaults[vaultId].idleBalances
  ///      Idle balances are tokens not deployed in positions
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return idleBalances The balance delta of idle tokens
  function getVaultIdleBalances(uint256 vaultId) external view returns (BalanceDelta idleBalances);

  /// @notice Get the idle token amounts for a vault as raw uint128 amounts
  /// @dev Converts BalanceDelta idle balances to raw token amounts
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return idle0 Idle amount of token0 (wei)
  /// @return idle1 Idle amount of token1 (wei)
  function getVaultIdleAmounts(uint256 vaultId) external view returns (uint128 idle0, uint128 idle1);

  /// @notice Get the debt principal for a vault
  /// @dev Corresponds to _vaults[vaultId].rL
  ///      Debt in principal L-units (multiply by borrow index to get actual debt)
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return rL The principal debt in L-units
  function getVaultDebt(uint256 vaultId) external view returns (uint128 rL);

  /// @notice Get the number of positions attached to a vault
  /// @dev Corresponds to _vaults[vaultId].positions.length
  ///      Returns the count of NFT positions (CL and LO) attached to this vault
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return length The number of attached positions
  function getVaultPositionsLength(uint256 vaultId) external view returns (uint256 length);

  /// @notice Get a specific position from a vault's positions array
  /// @dev Corresponds to _vaults[vaultId].positions[index]
  ///      Each position is an NFT reference (kind + tokenId)
  /// @param vaultId The vault identifier (NFT token ID)
  /// @param index The index in the positions array
  /// @return ref The NFT reference at the specified index
  function getVaultPosition(uint256 vaultId, uint256 index) external view returns (NftRef memory ref);

  /// @notice Get all positions attached to a vault
  /// @dev Batch reads all elements from _vaults[vaultId].positions array
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return positions Array of NftRef describing attached positions
  function getVaultPositions(uint256 vaultId) external view returns (NftRef[] memory positions);

  /// @notice Compute current LTV for a vault in pips
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return ltvPips Loan-to-value in pips (0..1_000_000)
  function getVaultLtvPips(uint256 vaultId) external view returns (uint256 ltvPips);

  /// @notice Compute preview LTV for a vault in pips using previewed borrow index
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return ltvPipsLatest Loan-to-value in pips using previewed accrual
  function getVaultLtvPipsLatest(uint256 vaultId) external view returns (uint256 ltvPipsLatest);

  /// @notice Compute the vault's collateral floor c_min in √K (liquidity) units
  /// @dev Uses current idle balances and positions with CollateralFloorMath
  /// @param vaultId The vault identifier (NFT token ID)
  /// @return cMinL The conservative collateral floor in √K units
  function getVaultCollateralFloor(uint256 vaultId) external view returns (uint256 cMinL);

  // ========================================
  // CONFIGURATION QUERIES
  // ========================================

  /// @notice Get the default rate oracle and full utilization rate
  /// @dev Corresponds to _defaultRateOracle and _defaultFullUtilizationRate
  ///      These are fallback values used when initializing new markets
  /// @return rateOracle The address of the default rate oracle
  /// @return fullUtilRate The default full utilization rate in WAD precision
  function getDefaultRateOracle() external view returns (address rateOracle, uint64 fullUtilRate);

  /// @notice Get the owner of the AegisEngine
  /// @dev Corresponds to _owner
  ///      The owner can configure protocol parameters and authorize hooks
  /// @return owner The owner address
  function getOwner() external view returns (address owner);

  /// @notice Check if a hook is authorized
  /// @dev Corresponds to _authorizedHooks[hook]
  ///      Authorized hooks can be used in pool keys
  /// @param hook The hook address to check
  /// @return authorized True if the hook is authorized, false otherwise
  function isHookAuthorized(address hook) external view returns (bool authorized);

  /// @notice Get the immutable AegisEngine contract
  /// @return The AegisEngine contract
  // forge-lint: disable-next-line(mixed-case-function) -- immutable getter follows SCREAMING_SNAKE_CASE convention
  function AEGIS_ENGINE() external view returns (IAegisEngine);

  /// @notice Get the immutable Uniswap V4 PositionManager
  /// @return The IPositionManager contract
  // forge-lint: disable-next-line(mixed-case-function) -- immutable getter follows SCREAMING_SNAKE_CASE convention
  function POSITION_MANAGER() external view returns (IPositionManager);

  /// @notice Get the immutable LimitOrderManager
  /// @return The ILimitOrderManager contract
  // forge-lint: disable-next-line(mixed-case-function) -- immutable getter follows SCREAMING_SNAKE_CASE convention
  function LIMIT_ORDER_MANAGER() external view returns (ILimitOrderManager);

  // ========================================
  // ERC6909 QUERIES
  // ========================================

  /// @notice Get the total supply of a specific ERC6909 token (market shares)
  /// @dev Corresponds to _totalSupply[tokenId]
  ///      For market shares, tokenId = uint256(PoolId.unwrap(poolId))
  /// @param tokenId The ERC6909 token identifier
  /// @return totalSupply The total supply of this token
  function getTotalSupply(uint256 tokenId) external view returns (uint256 totalSupply);

  // ========================================
  // UTILITY FUNCTIONS
  // ========================================

  /// @notice Decode a BalanceDelta (int256) into its component amounts
  /// @dev Utility function for offchain use (e.g., decoding event data in block explorers)
  ///      BalanceDelta packs two int128 values: amount0 (upper 128 bits) and amount1 (lower 128 bits)
  /// @param delta The packed BalanceDelta value (int256)
  /// @return amount0 The amount of token0 (int128)
  /// @return amount1 The amount of token1 (int128)
  function decodeBalanceDelta(int256 delta) external pure returns (int128 amount0, int128 amount1);
}
