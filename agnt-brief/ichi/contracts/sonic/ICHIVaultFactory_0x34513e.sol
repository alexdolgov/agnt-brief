// ============================================================
// FILE: @cryptoalgebra/integral-base-plugin/contracts/base/AlgebraFeeConfiguration.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @notice coefficients for sigmoids: α / (1 + e^( (β-x) / γ))
/// @dev alpha1 + alpha2 + baseFee must be <= type(uint16).max
struct AlgebraFeeConfiguration {
  uint16 alpha1; // max value of the first sigmoid
  uint16 alpha2; // max value of the second sigmoid
  uint32 beta1; // shift along the x-axis for the first sigmoid
  uint32 beta2; // shift along the x-axis for the second sigmoid
  uint16 gamma1; // horizontal stretch factor for the first sigmoid
  uint16 gamma2; // horizontal stretch factor for the second sigmoid
  uint16 baseFee; // minimum possible fee
}

// ============================================================
// FILE: @cryptoalgebra/integral-base-plugin/contracts/interfaces/IBasePluginV1Factory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import '@cryptoalgebra/integral-core/contracts/interfaces/plugin/IAlgebraPluginFactory.sol';

import '../base/AlgebraFeeConfiguration.sol';

/// @title The interface for the BasePluginV1Factory
/// @notice This contract creates Algebra default plugins for Algebra liquidity pools
interface IBasePluginV1Factory is IAlgebraPluginFactory {
  /// @notice Emitted when the default fee configuration is changed
  /// @param newConfig The structure with dynamic fee parameters
  /// @dev See the AdaptiveFee library for more details
  event DefaultFeeConfiguration(AlgebraFeeConfiguration newConfig);

  /// @notice Emitted when the farming address is changed
  /// @param newFarmingAddress The farming address after the address was changed
  event FarmingAddress(address newFarmingAddress);

  /// @notice Emitted when the entrypoint address is changed
  /// @param newModifyLiquidityEntrypoint The entrypoint address after the address was changed
  event ModifyLiquidityEntrypoint(address newModifyLiquidityEntrypoint);

  /// @notice The hash of 'ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR' used as role
  /// @dev allows to change settings of BasePluginV1Factory
  function ALGEBRA_BASE_PLUGIN_FACTORY_ADMINISTRATOR() external pure returns (bytes32);

  /// @notice Returns the address of AlgebraFactory
  /// @return The AlgebraFactory contract address
  function algebraFactory() external view returns (address);

  /// @notice Returns the address of entrypoint contract
  /// @return The modifyLiquidityEntrypoint contract address
  function modifyLiquidityEntrypoint() external view returns (address);

  /// @notice Current default dynamic fee configuration
  /// @dev See the AdaptiveFee struct for more details about params.
  /// This value is set by default in new plugins
  function defaultFeeConfiguration()
    external
    view
    returns (uint16 alpha1, uint16 alpha2, uint32 beta1, uint32 beta2, uint16 gamma1, uint16 gamma2, uint16 baseFee);

  /// @notice Returns current farming address
  /// @return The farming contract address
  function farmingAddress() external view returns (address);

  /// @notice Returns address of plugin created for given AlgebraPool
  /// @param pool The address of AlgebraPool
  /// @return The address of corresponding plugin
  function pluginByPool(address pool) external view returns (address);

  /// @notice Create plugin for already existing pool
  /// @param token0 The address of first token in pool
  /// @param token1 The address of second token in pool
  /// @return The address of created plugin
  function createPluginForExistingPool(address token0, address token1) external returns (address);

  /// @notice Changes initial fee configuration for new pools
  /// @dev changes coefficients for sigmoids: α / (1 + e^( (β-x) / γ))
  /// alpha1 + alpha2 + baseFee (max possible fee) must be <= type(uint16).max and gammas must be > 0
  /// @param newConfig new default fee configuration. See the #AdaptiveFee.sol library for details
  function setDefaultFeeConfiguration(AlgebraFeeConfiguration calldata newConfig) external;

  /// @dev updates farmings manager address on the factory
  /// @param newFarmingAddress The new tokenomics contract address
  function setFarmingAddress(address newFarmingAddress) external;

  /// @dev updates entrypoint address on the plugin factory
  /// @param newModifyLiquidityEntrypoint The new entrypoint address
  function setModifyLiquidityEntrypoint(address newModifyLiquidityEntrypoint) external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-base-plugin/contracts/interfaces/plugins/IVolatilityOracle.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra volatility oracle
/// @dev This contract stores timepoints and calculates statistical averages
interface IVolatilityOracle {
  /// @notice Returns data belonging to a certain timepoint
  /// @param index The index of timepoint in the array
  /// @dev There is more convenient function to fetch a timepoint: getTimepoints(). Which requires not an index but seconds
  /// @return initialized Whether the timepoint has been initialized and the values are safe to use
  /// @return blockTimestamp The timestamp of the timepoint
  /// @return tickCumulative The tick multiplied by seconds elapsed for the life of the pool as of the timepoint timestamp
  /// @return volatilityCumulative Cumulative standard deviation for the life of the pool as of the timepoint timestamp
  /// @return tick The tick at blockTimestamp
  /// @return averageTick Time-weighted average tick
  /// @return windowStartIndex Index of closest timepoint >= WINDOW seconds ago
  function timepoints(
    uint256 index
  )
    external
    view
    returns (
      bool initialized,
      uint32 blockTimestamp,
      int56 tickCumulative,
      uint88 volatilityCumulative,
      int24 tick,
      int24 averageTick,
      uint16 windowStartIndex
    );

  /// @notice Returns the index of the last timepoint that was written.
  /// @return index of the last timepoint written
  function timepointIndex() external view returns (uint16);

  /// @notice Returns the timestamp of the last timepoint that was written.
  /// @return timestamp of the last timepoint
  function lastTimepointTimestamp() external view returns (uint32);

  /// @notice Returns information about whether oracle is initialized
  /// @return true if oracle is initialized, otherwise false
  function isInitialized() external view returns (bool);

  /// @dev Reverts if a timepoint at or before the desired timepoint timestamp does not exist.
  /// 0 may be passed as `secondsAgo' to return the current cumulative values.
  /// If called with a timestamp falling between two timepoints, returns the counterfactual accumulator values
  /// at exactly the timestamp between the two timepoints.
  /// @dev `volatilityCumulative` values for timestamps after the last timepoint _should not_ be compared because they may differ due to interpolation errors
  /// @param secondsAgo The amount of time to look back, in seconds, at which point to return a timepoint
  /// @return tickCumulative The cumulative tick since the pool was first initialized, as of `secondsAgo`
  /// @return volatilityCumulative The cumulative volatility value since the pool was first initialized, as of `secondsAgo`
  function getSingleTimepoint(uint32 secondsAgo) external view returns (int56 tickCumulative, uint88 volatilityCumulative);

  /// @notice Returns the accumulator values as of each time seconds ago from the given time in the array of `secondsAgos`
  /// @dev Reverts if `secondsAgos` > oldest timepoint
  /// @dev `volatilityCumulative` values for timestamps after the last timepoint _should not_ be compared because they may differ due to interpolation errors
  /// @param secondsAgos Each amount of time to look back, in seconds, at which point to return a timepoint
  /// @return tickCumulatives The cumulative tick since the pool was first initialized, as of each `secondsAgo`
  /// @return volatilityCumulatives The cumulative volatility values since the pool was first initialized, as of each `secondsAgo`
  function getTimepoints(uint32[] memory secondsAgos) external view returns (int56[] memory tickCumulatives, uint88[] memory volatilityCumulatives);

  /// @notice Fills uninitialized timepoints with nonzero value
  /// @dev Can be used to reduce the gas cost of future swaps
  /// @param startIndex The start index, must be not initialized
  /// @param amount of slots to fill, startIndex + amount must be <= type(uint16).max
  function prepayTimepointsStorageSlots(uint16 startIndex, uint16 amount) external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/callback/IAlgebraSwapCallback.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Callback for IAlgebraPoolActions#swap
/// @notice Any contract that calls IAlgebraPoolActions#swap must implement this interface
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraSwapCallback {
  /// @notice Called to `msg.sender` after executing a swap via IAlgebraPool#swap.
  /// @dev In the implementation you must pay the pool tokens owed for the swap.
  /// The caller of this method _must_ be checked to be a AlgebraPool deployed by the canonical AlgebraFactory.
  /// amount0Delta and amount1Delta can both be 0 if no tokens were swapped.
  /// @param amount0Delta The amount of token0 that was sent (negative) or must be received (positive) by the pool by
  /// the end of the swap. If positive, the callback must send that amount of token0 to the pool.
  /// @param amount1Delta The amount of token1 that was sent (negative) or must be received (positive) by the pool by
  /// the end of the swap. If positive, the callback must send that amount of token1 to the pool.
  /// @param data Any data passed through by the caller via the IAlgebraPoolActions#swap call
  function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/IAlgebraFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;
pragma abicoder v2;

import './plugin/IAlgebraPluginFactory.sol';
import './vault/IAlgebraVaultFactory.sol';

/// @title The interface for the Algebra Factory
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraFactory {
  /// @notice Emitted when a process of ownership renounce is started
  /// @param timestamp The timestamp of event
  /// @param finishTimestamp The timestamp when ownership renounce will be possible to finish
  event RenounceOwnershipStart(uint256 timestamp, uint256 finishTimestamp);

  /// @notice Emitted when a process of ownership renounce cancelled
  /// @param timestamp The timestamp of event
  event RenounceOwnershipStop(uint256 timestamp);

  /// @notice Emitted when a process of ownership renounce finished
  /// @param timestamp The timestamp of ownership renouncement
  event RenounceOwnershipFinish(uint256 timestamp);

  /// @notice Emitted when a pool is created
  /// @param token0 The first token of the pool by address sort order
  /// @param token1 The second token of the pool by address sort order
  /// @param pool The address of the created pool
  event Pool(address indexed token0, address indexed token1, address pool);

  /// @notice Emitted when the default community fee is changed
  /// @param newDefaultCommunityFee The new default community fee value
  event DefaultCommunityFee(uint16 newDefaultCommunityFee);

  /// @notice Emitted when the default tickspacing is changed
  /// @param newDefaultTickspacing The new default tickspacing value
  event DefaultTickspacing(int24 newDefaultTickspacing);

  /// @notice Emitted when the default fee is changed
  /// @param newDefaultFee The new default fee value
  event DefaultFee(uint16 newDefaultFee);

  /// @notice Emitted when the defaultPluginFactory address is changed
  /// @param defaultPluginFactoryAddress The new defaultPluginFactory address
  event DefaultPluginFactory(address defaultPluginFactoryAddress);

  /// @notice Emitted when the vaultFactory address is changed
  /// @param newVaultFactory The new vaultFactory address
  event VaultFactory(address newVaultFactory);

  /// @notice role that can change communityFee and tickspacing in pools
  /// @return The hash corresponding to this role
  function POOLS_ADMINISTRATOR_ROLE() external view returns (bytes32);

  /// @notice Returns `true` if `account` has been granted `role` or `account` is owner.
  /// @param role The hash corresponding to the role
  /// @param account The address for which the role is checked
  /// @return bool Whether the address has this role or the owner role or not
  function hasRoleOrOwner(bytes32 role, address account) external view returns (bool);

  /// @notice Returns the current owner of the factory
  /// @dev Can be changed by the current owner via transferOwnership(address newOwner)
  /// @return The address of the factory owner
  function owner() external view returns (address);

  /// @notice Returns the current poolDeployerAddress
  /// @return The address of the poolDeployer
  function poolDeployer() external view returns (address);

  /// @notice Returns the default community fee
  /// @return Fee which will be set at the creation of the pool
  function defaultCommunityFee() external view returns (uint16);

  /// @notice Returns the default fee
  /// @return Fee which will be set at the creation of the pool
  function defaultFee() external view returns (uint16);

  /// @notice Returns the default tickspacing
  /// @return Tickspacing which will be set at the creation of the pool
  function defaultTickspacing() external view returns (int24);

  /// @notice Return the current pluginFactory address
  /// @dev This contract is used to automatically set a plugin address in new liquidity pools
  /// @return Algebra plugin factory
  function defaultPluginFactory() external view returns (IAlgebraPluginFactory);

  /// @notice Return the current vaultFactory address
  /// @dev This contract is used to automatically set a vault address in new liquidity pools
  /// @return Algebra vault factory
  function vaultFactory() external view returns (IAlgebraVaultFactory);

  /// @notice Returns the default communityFee, tickspacing, fee and communityFeeVault for pool
  /// @param pool the address of liquidity pool
  /// @return communityFee which will be set at the creation of the pool
  /// @return tickSpacing which will be set at the creation of the pool
  /// @return fee which will be set at the creation of the pool
  /// @return communityFeeVault the address of communityFeeVault
  function defaultConfigurationForPool(
    address pool
  ) external view returns (uint16 communityFee, int24 tickSpacing, uint16 fee, address communityFeeVault);

  /// @notice Deterministically computes the pool address given the token0 and token1
  /// @dev The method does not check if such a pool has been created
  /// @param token0 first token
  /// @param token1 second token
  /// @return pool The contract address of the Algebra pool
  function computePoolAddress(address token0, address token1) external view returns (address pool);

  /// @notice Returns the pool address for a given pair of tokens, or address 0 if it does not exist
  /// @dev tokenA and tokenB may be passed in either token0/token1 or token1/token0 order
  /// @param tokenA The contract address of either token0 or token1
  /// @param tokenB The contract address of the other token
  /// @return pool The pool address
  function poolByPair(address tokenA, address tokenB) external view returns (address pool);

  /// @notice returns keccak256 of AlgebraPool init bytecode.
  /// @dev the hash value changes with any change in the pool bytecode
  /// @return Keccak256 hash of AlgebraPool contract init bytecode
  function POOL_INIT_CODE_HASH() external view returns (bytes32);

  /// @return timestamp The timestamp of the beginning of the renounceOwnership process
  function renounceOwnershipStartTimestamp() external view returns (uint256 timestamp);

  /// @notice Creates a pool for the given two tokens
  /// @param tokenA One of the two tokens in the desired pool
  /// @param tokenB The other of the two tokens in the desired pool
  /// @dev tokenA and tokenB may be passed in either order: token0/token1 or token1/token0.
  /// The call will revert if the pool already exists or the token arguments are invalid.
  /// @return pool The address of the newly created pool
  function createPool(address tokenA, address tokenB) external returns (address pool);

  /// @dev updates default community fee for new pools
  /// @param newDefaultCommunityFee The new community fee, _must_ be <= MAX_COMMUNITY_FEE
  function setDefaultCommunityFee(uint16 newDefaultCommunityFee) external;

  /// @dev updates default fee for new pools
  /// @param newDefaultFee The new  fee, _must_ be <= MAX_DEFAULT_FEE
  function setDefaultFee(uint16 newDefaultFee) external;

  /// @dev updates default tickspacing for new pools
  /// @param newDefaultTickspacing The new tickspacing, _must_ be <= MAX_TICK_SPACING and >= MIN_TICK_SPACING
  function setDefaultTickspacing(int24 newDefaultTickspacing) external;

  /// @dev updates pluginFactory address
  /// @param newDefaultPluginFactory address of new plugin factory
  function setDefaultPluginFactory(address newDefaultPluginFactory) external;

  /// @dev updates vaultFactory address
  /// @param newVaultFactory address of new vault factory
  function setVaultFactory(address newVaultFactory) external;

  /// @notice Starts process of renounceOwnership. After that, a certain period
  /// of time must pass before the ownership renounce can be completed.
  function startRenounceOwnership() external;

  /// @notice Stops process of renounceOwnership and removes timer.
  function stopRenounceOwnership() external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

import './pool/IAlgebraPoolImmutables.sol';
import './pool/IAlgebraPoolState.sol';
import './pool/IAlgebraPoolActions.sol';
import './pool/IAlgebraPoolPermissionedActions.sol';
import './pool/IAlgebraPoolEvents.sol';
import './pool/IAlgebraPoolErrors.sol';

/// @title The interface for a Algebra Pool
/// @dev The pool interface is broken up into many smaller pieces.
/// This interface includes custom error definitions and cannot be used in older versions of Solidity.
/// For older versions of Solidity use #IAlgebraPoolLegacy
/// Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPool is
  IAlgebraPoolImmutables,
  IAlgebraPoolState,
  IAlgebraPoolActions,
  IAlgebraPoolPermissionedActions,
  IAlgebraPoolEvents,
  IAlgebraPoolErrors
{
  // used only for combining interfaces
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/plugin/IAlgebraPluginFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title An interface for a contract that is capable of deploying Algebra plugins
/// @dev Such a factory is needed if the plugin should be automatically created and connected to each new pool
interface IAlgebraPluginFactory {
  /// @notice Deploys new plugin contract for pool
  /// @param pool The address of the pool for which the new plugin will be created
  /// @param token0 First token of the pool
  /// @param token1 Second token of the pool
  /// @return New plugin address
  function createPlugin(address pool, address token0, address token1) external returns (address);
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolActions.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Permissionless pool actions
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolActions {
  /// @notice Sets the initial price for the pool
  /// @dev Price is represented as a sqrt(amountToken1/amountToken0) Q64.96 value
  /// @dev Initialization should be done in one transaction with pool creation to avoid front-running
  /// @param initialPrice The initial sqrt price of the pool as a Q64.96
  function initialize(uint160 initialPrice) external;

  /// @notice Adds liquidity for the given recipient/bottomTick/topTick position
  /// @dev The caller of this method receives a callback in the form of IAlgebraMintCallback#algebraMintCallback
  /// in which they must pay any token0 or token1 owed for the liquidity. The amount of token0/token1 due depends
  /// on bottomTick, topTick, the amount of liquidity, and the current price.
  /// @param leftoversRecipient The address which will receive potential surplus of paid tokens
  /// @param recipient The address for which the liquidity will be created
  /// @param bottomTick The lower tick of the position in which to add liquidity
  /// @param topTick The upper tick of the position in which to add liquidity
  /// @param liquidityDesired The desired amount of liquidity to mint
  /// @param data Any data that should be passed through to the callback
  /// @return amount0 The amount of token0 that was paid to mint the given amount of liquidity. Matches the value in the callback
  /// @return amount1 The amount of token1 that was paid to mint the given amount of liquidity. Matches the value in the callback
  /// @return liquidityActual The actual minted amount of liquidity
  function mint(
    address leftoversRecipient,
    address recipient,
    int24 bottomTick,
    int24 topTick,
    uint128 liquidityDesired,
    bytes calldata data
  ) external returns (uint256 amount0, uint256 amount1, uint128 liquidityActual);

  /// @notice Collects tokens owed to a position
  /// @dev Does not recompute fees earned, which must be done either via mint or burn of any amount of liquidity.
  /// Collect must be called by the position owner. To withdraw only token0 or only token1, amount0Requested or
  /// amount1Requested may be set to zero. To withdraw all tokens owed, caller may pass any value greater than the
  /// actual tokens owed, e.g. type(uint128).max. Tokens owed may be from accumulated swap fees or burned liquidity.
  /// @param recipient The address which should receive the fees collected
  /// @param bottomTick The lower tick of the position for which to collect fees
  /// @param topTick The upper tick of the position for which to collect fees
  /// @param amount0Requested How much token0 should be withdrawn from the fees owed
  /// @param amount1Requested How much token1 should be withdrawn from the fees owed
  /// @return amount0 The amount of fees collected in token0
  /// @return amount1 The amount of fees collected in token1
  function collect(
    address recipient,
    int24 bottomTick,
    int24 topTick,
    uint128 amount0Requested,
    uint128 amount1Requested
  ) external returns (uint128 amount0, uint128 amount1);

  /// @notice Burn liquidity from the sender and account tokens owed for the liquidity to the position
  /// @dev Can be used to trigger a recalculation of fees owed to a position by calling with an amount of 0
  /// @dev Fees must be collected separately via a call to #collect
  /// @param bottomTick The lower tick of the position for which to burn liquidity
  /// @param topTick The upper tick of the position for which to burn liquidity
  /// @param amount How much liquidity to burn
  /// @param data Any data that should be passed through to the plugin
  /// @return amount0 The amount of token0 sent to the recipient
  /// @return amount1 The amount of token1 sent to the recipient
  function burn(int24 bottomTick, int24 topTick, uint128 amount, bytes calldata data) external returns (uint256 amount0, uint256 amount1);

  /// @notice Swap token0 for token1, or token1 for token0
  /// @dev The caller of this method receives a callback in the form of IAlgebraSwapCallback#algebraSwapCallback
  /// @param recipient The address to receive the output of the swap
  /// @param zeroToOne The direction of the swap, true for token0 to token1, false for token1 to token0
  /// @param amountRequired The amount of the swap, which implicitly configures the swap as exact input (positive), or exact output (negative)
  /// @param limitSqrtPrice The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
  /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
  /// @param data Any data to be passed through to the callback. If using the Router it should contain SwapRouter#SwapCallbackData
  /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
  /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
  function swap(
    address recipient,
    bool zeroToOne,
    int256 amountRequired,
    uint160 limitSqrtPrice,
    bytes calldata data
  ) external returns (int256 amount0, int256 amount1);

  /// @notice Swap token0 for token1, or token1 for token0 with prepayment
  /// @dev The caller of this method receives a callback in the form of IAlgebraSwapCallback#algebraSwapCallback
  /// caller must send tokens in callback before swap calculation
  /// the actually sent amount of tokens is used for further calculations
  /// @param leftoversRecipient The address which will receive potential surplus of paid tokens
  /// @param recipient The address to receive the output of the swap
  /// @param zeroToOne The direction of the swap, true for token0 to token1, false for token1 to token0
  /// @param amountToSell The amount of the swap, only positive (exact input) amount allowed
  /// @param limitSqrtPrice The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
  /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
  /// @param data Any data to be passed through to the callback. If using the Router it should contain SwapRouter#SwapCallbackData
  /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
  /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
  function swapWithPaymentInAdvance(
    address leftoversRecipient,
    address recipient,
    bool zeroToOne,
    int256 amountToSell,
    uint160 limitSqrtPrice,
    bytes calldata data
  ) external returns (int256 amount0, int256 amount1);

  /// @notice Receive token0 and/or token1 and pay it back, plus a fee, in the callback
  /// @dev The caller of this method receives a callback in the form of IAlgebraFlashCallback#algebraFlashCallback
  /// @dev All excess tokens paid in the callback are distributed to currently in-range liquidity providers as an additional fee.
  /// If there are no in-range liquidity providers, the fee will be transferred to the first active provider in the future
  /// @param recipient The address which will receive the token0 and token1 amounts
  /// @param amount0 The amount of token0 to send
  /// @param amount1 The amount of token1 to send
  /// @param data Any data to be passed through to the callback
  function flash(address recipient, uint256 amount0, uint256 amount1, bytes calldata data) external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolErrors.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

/// @title Errors emitted by a pool
/// @notice Contains custom errors emitted by the pool
/// @dev Custom errors are separated from the common pool interface for compatibility with older versions of Solidity
interface IAlgebraPoolErrors {
  // ####  pool errors  ####

  /// @notice Emitted by the reentrancy guard
  error locked();

  /// @notice Emitted if arithmetic error occurred
  error arithmeticError();

  /// @notice Emitted if an attempt is made to initialize the pool twice
  error alreadyInitialized();

  /// @notice Emitted if an attempt is made to mint or swap in uninitialized pool
  error notInitialized();

  /// @notice Emitted if 0 is passed as amountRequired to swap function
  error zeroAmountRequired();

  /// @notice Emitted if invalid amount is passed as amountRequired to swap function
  error invalidAmountRequired();

  /// @notice Emitted if the pool received fewer tokens than it should have
  error insufficientInputAmount();

  /// @notice Emitted if there was an attempt to mint zero liquidity
  error zeroLiquidityDesired();
  /// @notice Emitted if actual amount of liquidity is zero (due to insufficient amount of tokens received)
  error zeroLiquidityActual();

  /// @notice Emitted if the pool received fewer tokens0 after flash than it should have
  error flashInsufficientPaid0();
  /// @notice Emitted if the pool received fewer tokens1 after flash than it should have
  error flashInsufficientPaid1();

  /// @notice Emitted if limitSqrtPrice param is incorrect
  error invalidLimitSqrtPrice();

  /// @notice Tick must be divisible by tickspacing
  error tickIsNotSpaced();

  /// @notice Emitted if a method is called that is accessible only to the factory owner or dedicated role
  error notAllowed();

  /// @notice Emitted if new tick spacing exceeds max allowed value
  error invalidNewTickSpacing();
  /// @notice Emitted if new community fee exceeds max allowed value
  error invalidNewCommunityFee();

  /// @notice Emitted if an attempt is made to manually change the fee value, but dynamic fee is enabled
  error dynamicFeeActive();
  /// @notice Emitted if an attempt is made by plugin to change the fee value, but dynamic fee is disabled
  error dynamicFeeDisabled();
  /// @notice Emitted if an attempt is made to change the plugin configuration, but the plugin is not connected
  error pluginIsNotConnected();
  /// @notice Emitted if a plugin returns invalid selector after hook call
  /// @param expectedSelector The expected selector
  error invalidHookResponse(bytes4 expectedSelector);

  // ####  LiquidityMath errors  ####

  /// @notice Emitted if liquidity underflows
  error liquiditySub();
  /// @notice Emitted if liquidity overflows
  error liquidityAdd();

  // ####  TickManagement errors  ####

  /// @notice Emitted if the topTick param not greater then the bottomTick param
  error topTickLowerOrEqBottomTick();
  /// @notice Emitted if the bottomTick param is lower than min allowed value
  error bottomTickLowerThanMIN();
  /// @notice Emitted if the topTick param is greater than max allowed value
  error topTickAboveMAX();
  /// @notice Emitted if the liquidity value associated with the tick exceeds MAX_LIQUIDITY_PER_TICK
  error liquidityOverflow();
  /// @notice Emitted if an attempt is made to interact with an uninitialized tick
  error tickIsNotInitialized();
  /// @notice Emitted if there is an attempt to insert a new tick into the list of ticks with incorrect indexes of the previous and next ticks
  error tickInvalidLinks();

  // ####  SafeTransfer errors  ####

  /// @notice Emitted if token transfer failed internally
  error transferFailed();

  // ####  TickMath errors  ####

  /// @notice Emitted if tick is greater than the maximum or less than the minimum allowed value
  error tickOutOfRange();
  /// @notice Emitted if price is greater than the maximum or less than the minimum allowed value
  error priceOutOfRange();
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolEvents.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Events emitted by a pool
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolEvents {
  /// @notice Emitted exactly once by a pool when #initialize is first called on the pool
  /// @dev Mint/Burn/Swaps cannot be emitted by the pool before Initialize
  /// @param price The initial sqrt price of the pool, as a Q64.96
  /// @param tick The initial tick of the pool, i.e. log base 1.0001 of the starting price of the pool
  event Initialize(uint160 price, int24 tick);

  /// @notice Emitted when liquidity is minted for a given position
  /// @param sender The address that minted the liquidity
  /// @param owner The owner of the position and recipient of any minted liquidity
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param liquidityAmount The amount of liquidity minted to the position range
  /// @param amount0 How much token0 was required for the minted liquidity
  /// @param amount1 How much token1 was required for the minted liquidity
  event Mint(
    address sender,
    address indexed owner,
    int24 indexed bottomTick,
    int24 indexed topTick,
    uint128 liquidityAmount,
    uint256 amount0,
    uint256 amount1
  );

  /// @notice Emitted when fees are collected by the owner of a position
  /// @param owner The owner of the position for which fees are collected
  /// @param recipient The address that received fees
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param amount0 The amount of token0 fees collected
  /// @param amount1 The amount of token1 fees collected
  event Collect(address indexed owner, address recipient, int24 indexed bottomTick, int24 indexed topTick, uint128 amount0, uint128 amount1);

  /// @notice Emitted when a position's liquidity is removed
  /// @dev Does not withdraw any fees earned by the liquidity position, which must be withdrawn via #collect
  /// @param owner The owner of the position for which liquidity is removed
  /// @param bottomTick The lower tick of the position
  /// @param topTick The upper tick of the position
  /// @param liquidityAmount The amount of liquidity to remove
  /// @param amount0 The amount of token0 withdrawn
  /// @param amount1 The amount of token1 withdrawn
  event Burn(address indexed owner, int24 indexed bottomTick, int24 indexed topTick, uint128 liquidityAmount, uint256 amount0, uint256 amount1);

  /// @notice Emitted by the pool for any swaps between token0 and token1
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param recipient The address that received the output of the swap
  /// @param amount0 The delta of the token0 balance of the pool
  /// @param amount1 The delta of the token1 balance of the pool
  /// @param price The sqrt(price) of the pool after the swap, as a Q64.96
  /// @param liquidity The liquidity of the pool after the swap
  /// @param tick The log base 1.0001 of price of the pool after the swap
  event Swap(address indexed sender, address indexed recipient, int256 amount0, int256 amount1, uint160 price, uint128 liquidity, int24 tick);

  /// @notice Emitted by the pool for any flashes of token0/token1
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param recipient The address that received the tokens from flash
  /// @param amount0 The amount of token0 that was flashed
  /// @param amount1 The amount of token1 that was flashed
  /// @param paid0 The amount of token0 paid for the flash, which can exceed the amount0 plus the fee
  /// @param paid1 The amount of token1 paid for the flash, which can exceed the amount1 plus the fee
  event Flash(address indexed sender, address indexed recipient, uint256 amount0, uint256 amount1, uint256 paid0, uint256 paid1);

  /// @notice Emitted when the community fee is changed by the pool
  /// @param communityFeeNew The updated value of the community fee in thousandths (1e-3)
  event CommunityFee(uint16 communityFeeNew);

  /// @notice Emitted when the tick spacing changes
  /// @param newTickSpacing The updated value of the new tick spacing
  event TickSpacing(int24 newTickSpacing);

  /// @notice Emitted when the plugin address changes
  /// @param newPluginAddress New plugin address
  event Plugin(address newPluginAddress);

  /// @notice Emitted when the plugin config changes
  /// @param newPluginConfig New plugin config
  event PluginConfig(uint8 newPluginConfig);

  /// @notice Emitted when the fee changes inside the pool
  /// @param fee The current fee in hundredths of a bip, i.e. 1e-6
  event Fee(uint16 fee);

  event CommunityVault(address newCommunityVault);
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolImmutables.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Pool state that never changes
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolImmutables {
  /// @notice The Algebra factory contract, which must adhere to the IAlgebraFactory interface
  /// @return The contract address
  function factory() external view returns (address);

  /// @notice The first of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token0() external view returns (address);

  /// @notice The second of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token1() external view returns (address);

  /// @notice The maximum amount of position liquidity that can use any tick in the range
  /// @dev This parameter is enforced per tick to prevent liquidity from overflowing a uint128 at any point, and
  /// also prevents out-of-range liquidity from being used to prevent adding in-range liquidity to a pool
  /// @return The max amount of liquidity per tick
  function maxLiquidityPerTick() external view returns (uint128);
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolPermissionedActions.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Permissioned pool actions
/// @notice Contains pool methods that may only be called by permissioned addresses
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolPermissionedActions {
  /// @notice Set the community's % share of the fees. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newCommunityFee The new community fee percent in thousandths (1e-3)
  function setCommunityFee(uint16 newCommunityFee) external;

  /// @notice Set the new tick spacing values. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newTickSpacing The new tick spacing value
  function setTickSpacing(int24 newTickSpacing) external;

  /// @notice Set the new plugin address. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newPluginAddress The new plugin address
  function setPlugin(address newPluginAddress) external;

  /// @notice Set new plugin config. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @param newConfig In the new configuration of the plugin,
  /// each bit of which is responsible for a particular hook.
  function setPluginConfig(uint8 newConfig) external;

  /// @notice Set new community fee vault address. Only factory owner or POOLS_ADMINISTRATOR_ROLE role
  /// @dev Community fee vault receives collected community fees.
  /// **accumulated but not yet sent to the vault community fees once will be sent to the `newCommunityVault` address**
  /// @param newCommunityVault The address of new community fee vault
  function setCommunityVault(address newCommunityVault) external;

  /// @notice Set new pool fee. Can be called by owner if dynamic fee is disabled.
  /// Called by the plugin if dynamic fee is enabled
  /// @param newFee The new fee value
  function setFee(uint16 newFee) external;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/pool/IAlgebraPoolState.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Pool state that can change
/// @dev Important security note: when using this data by external contracts, it is necessary to take into account the possibility
/// of manipulation (including read-only reentrancy).
/// This interface is based on the UniswapV3 interface, credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/tree/main/contracts/interfaces
interface IAlgebraPoolState {
  /// @notice Safely get most important state values of Algebra Integral AMM
  /// @dev Several values exposed as a single method to save gas when accessed externally.
  /// **Important security note: this method checks reentrancy lock and should be preferred in most cases**.
  /// @return sqrtPrice The current price of the pool as a sqrt(dToken1/dToken0) Q64.96 value
  /// @return tick The current global tick of the pool. May not always be equal to SqrtTickMath.getTickAtSqrtRatio(price) if the price is on a tick boundary
  /// @return lastFee The current (last known) pool fee value in hundredths of a bip, i.e. 1e-6 (so '100' is '0.01%'). May be obsolete if using dynamic fee plugin
  /// @return pluginConfig The current plugin config as bitmap. Each bit is responsible for enabling/disabling the hooks, the last bit turns on/off dynamic fees logic
  /// @return activeLiquidity  The currently in-range liquidity available to the pool
  /// @return nextTick The next initialized tick after current global tick
  /// @return previousTick The previous initialized tick before (or at) current global tick
  function safelyGetStateOfAMM()
    external
    view
    returns (uint160 sqrtPrice, int24 tick, uint16 lastFee, uint8 pluginConfig, uint128 activeLiquidity, int24 nextTick, int24 previousTick);

  /// @notice Allows to easily get current reentrancy lock status
  /// @dev can be used to prevent read-only reentrancy.
  /// This method just returns `globalState.unlocked` value
  /// @return unlocked Reentrancy lock flag, true if the pool currently is unlocked, otherwise - false
  function isUnlocked() external view returns (bool unlocked);

  // ! IMPORTANT security note: the pool state can be manipulated.
  // ! The following methods do not check reentrancy lock themselves.

  /// @notice The globalState structure in the pool stores many values but requires only one slot
  /// and is exposed as a single method to save gas when accessed externally.
  /// @dev **important security note: caller should check `unlocked` flag to prevent read-only reentrancy**
  /// @return price The current price of the pool as a sqrt(dToken1/dToken0) Q64.96 value
  /// @return tick The current tick of the pool, i.e. according to the last tick transition that was run
  /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(price) if the price is on a tick boundary
  /// @return lastFee The current (last known) pool fee value in hundredths of a bip, i.e. 1e-6 (so '100' is '0.01%'). May be obsolete if using dynamic fee plugin
  /// @return pluginConfig The current plugin config as bitmap. Each bit is responsible for enabling/disabling the hooks, the last bit turns on/off dynamic fees logic
  /// @return communityFee The community fee represented as a percent of all collected fee in thousandths, i.e. 1e-3 (so 100 is 10%)
  /// @return unlocked Reentrancy lock flag, true if the pool currently is unlocked, otherwise - false
  function globalState() external view returns (uint160 price, int24 tick, uint16 lastFee, uint8 pluginConfig, uint16 communityFee, bool unlocked);

  /// @notice Look up information about a specific tick in the pool
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @param tick The tick to look up
  /// @return liquidityTotal The total amount of position liquidity that uses the pool either as tick lower or tick upper
  /// @return liquidityDelta How much liquidity changes when the pool price crosses the tick
  /// @return prevTick The previous tick in tick list
  /// @return nextTick The next tick in tick list
  /// @return outerFeeGrowth0Token The fee growth on the other side of the tick from the current tick in token0
  /// @return outerFeeGrowth1Token The fee growth on the other side of the tick from the current tick in token1
  /// In addition, these values are only relative and must be used only in comparison to previous snapshots for
  /// a specific position.
  function ticks(
    int24 tick
  )
    external
    view
    returns (
      uint256 liquidityTotal,
      int128 liquidityDelta,
      int24 prevTick,
      int24 nextTick,
      uint256 outerFeeGrowth0Token,
      uint256 outerFeeGrowth1Token
    );

  /// @notice The timestamp of the last sending of tokens to community vault
  /// @return The timestamp truncated to 32 bits
  function communityFeeLastTimestamp() external view returns (uint32);

  /// @notice The amounts of token0 and token1 that will be sent to the vault
  /// @dev Will be sent COMMUNITY_FEE_TRANSFER_FREQUENCY after communityFeeLastTimestamp
  /// @return communityFeePending0 The amount of token0 that will be sent to the vault
  /// @return communityFeePending1 The amount of token1 that will be sent to the vault
  function getCommunityFeePending() external view returns (uint128 communityFeePending0, uint128 communityFeePending1);

  /// @notice Returns the address of currently used plugin
  /// @dev The plugin is subject to change
  /// @return pluginAddress The address of currently used plugin
  function plugin() external view returns (address pluginAddress);

  /// @notice The contract to which community fees are transferred
  /// @return communityVaultAddress The communityVault address
  function communityVault() external view returns (address communityVaultAddress);

  /// @notice Returns 256 packed tick initialized boolean values. See TickTree for more information
  /// @param wordPosition Index of 256-bits word with ticks
  /// @return The 256-bits word with packed ticks info
  function tickTable(int16 wordPosition) external view returns (uint256);

  /// @notice The fee growth as a Q128.128 fees of token0 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  /// @return The fee growth accumulator for token0
  function totalFeeGrowth0Token() external view returns (uint256);

  /// @notice The fee growth as a Q128.128 fees of token1 collected per unit of liquidity for the entire life of the pool
  /// @dev This value can overflow the uint256
  /// @return The fee growth accumulator for token1
  function totalFeeGrowth1Token() external view returns (uint256);

  /// @notice The current pool fee value
  /// @dev In case dynamic fee is enabled in the pool, this method will call the plugin to get the current fee.
  /// If the plugin implements complex fee logic, this method may return an incorrect value or revert.
  /// In this case, see the plugin implementation and related documentation.
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return currentFee The current pool fee value in hundredths of a bip, i.e. 1e-6
  function fee() external view returns (uint16 currentFee);

  /// @notice The tracked token0 and token1 reserves of pool
  /// @dev If at any time the real balance is larger, the excess will be transferred to liquidity providers as additional fee.
  /// If the balance exceeds uint128, the excess will be sent to the communityVault.
  /// @return reserve0 The last known reserve of token0
  /// @return reserve1 The last known reserve of token1
  function getReserves() external view returns (uint128 reserve0, uint128 reserve1);

  /// @notice Returns the information about a position by the position's key
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @param key The position's key is a packed concatenation of the owner address, bottomTick and topTick indexes
  /// @return liquidity The amount of liquidity in the position
  /// @return innerFeeGrowth0Token Fee growth of token0 inside the tick range as of the last mint/burn/poke
  /// @return innerFeeGrowth1Token Fee growth of token1 inside the tick range as of the last mint/burn/poke
  /// @return fees0 The computed amount of token0 owed to the position as of the last mint/burn/poke
  /// @return fees1 The computed amount of token1 owed to the position as of the last mint/burn/poke
  function positions(
    bytes32 key
  ) external view returns (uint256 liquidity, uint256 innerFeeGrowth0Token, uint256 innerFeeGrowth1Token, uint128 fees0, uint128 fees1);

  /// @notice The currently in range liquidity available to the pool
  /// @dev This value has no relationship to the total liquidity across all ticks.
  /// Returned value cannot exceed type(uint128).max
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The current in range liquidity
  function liquidity() external view returns (uint128);

  /// @notice The current tick spacing
  /// @dev Ticks can only be initialized by new mints at multiples of this value
  /// e.g.: a tickSpacing of 60 means ticks can be initialized every 60th tick, i.e., ..., -120, -60, 0, 60, 120, ...
  /// However, tickspacing can be changed after the ticks have been initialized.
  /// This value is an int24 to avoid casting even though it is always positive.
  /// @return The current tick spacing
  function tickSpacing() external view returns (int24);

  /// @notice The previous initialized tick before (or at) current global tick
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The previous initialized tick
  function prevTickGlobal() external view returns (int24);

  /// @notice The next initialized tick after current global tick
  /// @dev **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The next initialized tick
  function nextTickGlobal() external view returns (int24);

  /// @notice The root of tick search tree
  /// @dev Each bit corresponds to one node in the second layer of tick tree: '1' if node has at least one active bit.
  /// **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The root of tick search tree as bitmap
  function tickTreeRoot() external view returns (uint32);

  /// @notice The second layer of tick search tree
  /// @dev Each bit in node corresponds to one node in the leafs layer (`tickTable`) of tick tree: '1' if leaf has at least one active bit.
  /// **important security note: caller should check reentrancy lock to prevent read-only reentrancy**
  /// @return The node of tick search tree second layer
  function tickTreeSecondLayer(int16) external view returns (uint256);
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/interfaces/vault/IAlgebraVaultFactory.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Algebra Vault Factory
/// @notice This contract can be used for automatic vaults creation
/// @dev Version: Algebra Integral
interface IAlgebraVaultFactory {
  /// @notice returns address of the community fee vault for the pool
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function getVaultForPool(address pool) external view returns (address communityFeeVault);

  /// @notice creates the community fee vault for the pool if needed
  /// @param pool the address of Algebra Integral pool
  /// @return communityFeeVault the address of community fee vault
  function createVaultForPool(address pool) external returns (address communityFeeVault);
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/libraries/Constants.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0 <0.9.0;

/// @title Contains common constants for Algebra contracts
/// @dev Constants moved to the library, not the base contract, to further emphasize their constant nature
library Constants {
  uint8 internal constant RESOLUTION = 96;
  uint256 internal constant Q96 = 1 << 96;
  uint256 internal constant Q128 = 1 << 128;

  uint24 internal constant FEE_DENOMINATOR = 1e6;
  uint16 internal constant FLASH_FEE = 0.01e4; // fee for flash loan in hundredths of a bip (0.01%)
  uint16 internal constant INIT_DEFAULT_FEE = 0.05e4; // init default fee value in hundredths of a bip (0.05%)
  uint16 internal constant MAX_DEFAULT_FEE = 5e4; // max default fee value in hundredths of a bip (5%)

  int24 internal constant INIT_DEFAULT_TICK_SPACING = 60;
  int24 internal constant MAX_TICK_SPACING = 500;
  int24 internal constant MIN_TICK_SPACING = 1;

  // the frequency with which the accumulated community fees are sent to the vault
  uint32 internal constant COMMUNITY_FEE_TRANSFER_FREQUENCY = 8 hours;

  // max(uint128) / (MAX_TICK - MIN_TICK)
  uint128 internal constant MAX_LIQUIDITY_PER_TICK = 191757638537527648490752896198553;

  uint16 internal constant MAX_COMMUNITY_FEE = 1e3; // 100%
  uint256 internal constant COMMUNITY_FEE_DENOMINATOR = 1e3;
  // role that can change settings in pools
  bytes32 internal constant POOLS_ADMINISTRATOR_ROLE = keccak256('POOLS_ADMINISTRATOR');
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/libraries/FullMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Contains 512-bit math functions
/// @notice Facilitates multiplication and division that can have overflow of an intermediate value without any loss of precision
/// @dev Handles "phantom overflow" i.e., allows multiplication and division where an intermediate value overflows 256 bits
library FullMath {
  /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
  function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      // 512-bit multiply [prod1 prod0] = a * b
      // Compute the product mod 2**256 and mod 2**256 - 1
      // then use the Chinese Remainder Theorem to reconstruct
      // the 512 bit result. The result is stored in two 256
      // variables such that product = prod1 * 2**256 + prod0
      uint256 prod0 = a * b; // Least significant 256 bits of the product
      uint256 prod1; // Most significant 256 bits of the product
      assembly {
        let mm := mulmod(a, b, not(0))
        prod1 := sub(sub(mm, prod0), lt(mm, prod0))
      }

      // Make sure the result is less than 2**256.
      // Also prevents denominator == 0
      require(denominator > prod1);

      // Handle non-overflow cases, 256 by 256 division
      if (prod1 == 0) {
        assembly {
          result := div(prod0, denominator)
        }
        return result;
      }

      ///////////////////////////////////////////////
      // 512 by 256 division.
      ///////////////////////////////////////////////

      // Make division exact by subtracting the remainder from [prod1 prod0]
      // Compute remainder using mulmod
      // Subtract 256 bit remainder from 512 bit number
      assembly {
        let remainder := mulmod(a, b, denominator)
        prod1 := sub(prod1, gt(remainder, prod0))
        prod0 := sub(prod0, remainder)
      }

      // Factor powers of two out of denominator
      // Compute largest power of two divisor of denominator.
      // Always >= 1.
      uint256 twos = (0 - denominator) & denominator;
      // Divide denominator by power of two
      assembly {
        denominator := div(denominator, twos)
      }

      // Divide [prod1 prod0] by the factors of two
      assembly {
        prod0 := div(prod0, twos)
      }
      // Shift in bits from prod1 into prod0. For this we need
      // to flip `twos` such that it is 2**256 / twos.
      // If twos is zero, then it becomes one
      assembly {
        twos := add(div(sub(0, twos), twos), 1)
      }
      prod0 |= prod1 * twos;

      // Invert denominator mod 2**256
      // Now that denominator is an odd number, it has an inverse
      // modulo 2**256 such that denominator * inv = 1 mod 2**256.
      // Compute the inverse by starting with a seed that is correct
      // correct for four bits. That is, denominator * inv = 1 mod 2**4
      uint256 inv = (3 * denominator) ^ 2;
      // Now use Newton-Raphson iteration to improve the precision.
      // Thanks to Hensel's lifting lemma, this also works in modular
      // arithmetic, doubling the correct bits in each step.
      inv *= 2 - denominator * inv; // inverse mod 2**8
      inv *= 2 - denominator * inv; // inverse mod 2**16
      inv *= 2 - denominator * inv; // inverse mod 2**32
      inv *= 2 - denominator * inv; // inverse mod 2**64
      inv *= 2 - denominator * inv; // inverse mod 2**128
      inv *= 2 - denominator * inv; // inverse mod 2**256

      // Because the division is now exact we can divide by multiplying
      // with the modular inverse of denominator. This will give us the
      // correct result modulo 2**256. Since the preconditions guarantee
      // that the outcome is less than 2**256, this is the final result.
      // We don't need to compute the high bits of the result and prod1
      // is no longer required.
      result = prod0 * inv;
      return result;
    }
  }

  /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
  /// @param a The multiplicand
  /// @param b The multiplier
  /// @param denominator The divisor
  /// @return result The 256-bit result
  function mulDivRoundingUp(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
    unchecked {
      if (a == 0 || ((result = a * b) / a == b)) {
        require(denominator > 0);
        assembly {
          result := add(div(result, denominator), gt(mod(result, denominator), 0))
        }
      } else {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
          require(result < type(uint256).max);
          result++;
        }
      }
    }
  }

  /// @notice Returns ceil(x / y)
  /// @dev division by 0 has unspecified behavior, and must be checked externally
  /// @param x The dividend
  /// @param y The divisor
  /// @return z The quotient, ceil(x / y)
  function unsafeDivRoundingUp(uint256 x, uint256 y) internal pure returns (uint256 z) {
    assembly {
      z := add(div(x, y), gt(mod(x, y), 0))
    }
  }
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/libraries/Plugins.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4 <0.9.0;

import '../interfaces/pool/IAlgebraPoolErrors.sol';

/// @title Contains logic and constants for interacting with the plugin through hooks
/// @dev Allows pool to check which hooks are enabled, as well as control the return selector
library Plugins {
  function hasFlag(uint8 pluginConfig, uint256 flag) internal pure returns (bool res) {
    assembly {
      res := gt(and(pluginConfig, flag), 0)
    }
  }

  function shouldReturn(bytes4 selector, bytes4 expectedSelector) internal pure {
    if (selector != expectedSelector) revert IAlgebraPoolErrors.invalidHookResponse(expectedSelector);
  }

  uint256 internal constant BEFORE_SWAP_FLAG = 1;
  uint256 internal constant AFTER_SWAP_FLAG = 1 << 1;
  uint256 internal constant BEFORE_POSITION_MODIFY_FLAG = 1 << 2;
  uint256 internal constant AFTER_POSITION_MODIFY_FLAG = 1 << 3;
  uint256 internal constant BEFORE_FLASH_FLAG = 1 << 4;
  uint256 internal constant AFTER_FLASH_FLAG = 1 << 5;
  uint256 internal constant AFTER_INIT_FLAG = 1 << 6;
  uint256 internal constant DYNAMIC_FEE = 1 << 7;
}

// ============================================================
// FILE: @cryptoalgebra/integral-core/contracts/libraries/TickMath.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4 <0.9.0;

import '../interfaces/pool/IAlgebraPoolErrors.sol';

/// @title Math library for computing sqrt prices from ticks and vice versa
/// @notice Computes sqrt price for ticks of size 1.0001, i.e. sqrt(1.0001^tick) as fixed point Q64.96 numbers. Supports
/// prices between 2**-128 and 2**128
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-core/blob/main/contracts/libraries
library TickMath {
  /// @dev The minimum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**-128
  int24 internal constant MIN_TICK = -887272;
  /// @dev The maximum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**128
  int24 internal constant MAX_TICK = -MIN_TICK;

  /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
  uint160 internal constant MIN_SQRT_RATIO = 4295128739;
  /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
  uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

  /// @notice Calculates sqrt(1.0001^tick) * 2^96
  /// @dev Throws if |tick| > max tick
  /// @param tick The input tick for the above formula
  /// @return price A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0)
  /// at the given tick
  function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 price) {
    unchecked {
      // get abs value
      int24 absTickMask = tick >> (24 - 1);
      uint256 absTick = uint24((tick + absTickMask) ^ absTickMask);
      if (absTick > uint24(MAX_TICK)) revert IAlgebraPoolErrors.tickOutOfRange();

      uint256 ratio = 0x100000000000000000000000000000000;
      if (absTick & 0x1 != 0) ratio = 0xfffcb933bd6fad37aa2d162d1a594001;
      if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
      if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
      if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
      if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
      if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
      if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
      if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
      if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
      if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
      if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
      if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
      if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
      if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
      if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
      if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
      if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
      if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
      if (absTick >= 0x40000) {
        if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
        if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;
      }

      if (tick > 0) {
        assembly {
          ratio := div(not(0), ratio)
        }
      }

      // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
      // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
      // we round up in the division so getTickAtSqrtRatio of the output price is always consistent
      price = uint160((ratio + 0xFFFFFFFF) >> 32);
    }
  }

  /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
  /// @dev Throws in case price < MIN_SQRT_RATIO, as MIN_SQRT_RATIO is the lowest value getRatioAtTick may
  /// ever return.
  /// @param price The sqrt ratio for which to compute the tick as a Q64.96
  /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
  function getTickAtSqrtRatio(uint160 price) internal pure returns (int24 tick) {
    unchecked {
      // second inequality must be >= because the price can never reach the price at the max tick
      if (price < MIN_SQRT_RATIO || price >= MAX_SQRT_RATIO) revert IAlgebraPoolErrors.priceOutOfRange();
      uint256 ratio = uint256(price) << 32;

      uint256 r = ratio;
      uint256 msb;

      assembly {
        let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(5, gt(r, 0xFFFFFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(4, gt(r, 0xFFFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(3, gt(r, 0xFF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(2, gt(r, 0xF))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := shl(1, gt(r, 0x3))
        msb := or(msb, f)
        r := shr(f, r)
      }
      assembly {
        let f := gt(r, 0x1)
        msb := or(msb, f)
      }

      if (msb >= 128) r = ratio >> (msb - 127);
      else r = ratio << (127 - msb);

      int256 log_2 = (int256(msb) - 128) << 64;

      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(63, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(62, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(61, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(60, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(59, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(58, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(57, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(56, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(55, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(54, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(53, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(52, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(51, f))
        r := shr(f, r)
      }
      assembly {
        r := shr(127, mul(r, r))
        let f := shr(128, r)
        log_2 := or(log_2, shl(50, f))
      }

      int256 log_sqrt10001 = log_2 * 255738958999603826347141; // 128.128 number

      int24 tickLow = int24((log_sqrt10001 - 3402992956809132418596140100660247210) >> 128);
      int24 tickHi = int24((log_sqrt10001 + 291339464771989622907027621153398088495) >> 128);

      tick = tickLow == tickHi ? tickLow : getSqrtRatioAtTick(tickHi) <= price ? tickHi : tickLow;
    }
  }
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/interfaces/IERC721Permit.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

import '@openzeppelin/contracts/token/ERC721/IERC721.sol';

/// @title ERC721 with permit
/// @notice Extension to ERC721 that includes a permit function for signature based approvals
interface IERC721Permit is IERC721 {
    /// @notice The permit typehash used in the permit signature
    /// @return The typehash for the permit
    function PERMIT_TYPEHASH() external pure returns (bytes32);

    /// @notice The domain separator used in the permit signature
    /// @return The domain separator used in encoding of permit signature
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    /// @notice Approve of a specific token ID for spending by spender via signature
    /// @param spender The account that is being approved
    /// @param tokenId The ID of the token that is being approved for spending
    /// @param deadline The deadline timestamp by which the call must be mined for the approve to work
    /// @param v Must produce valid secp256k1 signature from the holder along with `r` and `s`
    /// @param r Must produce valid secp256k1 signature from the holder along with `v` and `s`
    /// @param s Must produce valid secp256k1 signature from the holder along with `r` and `v`
    function permit(
        address spender,
        uint256 tokenId,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external payable;
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/interfaces/INonfungiblePositionManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol';
import '@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol';

import './IPoolInitializer.sol';
import './IERC721Permit.sol';
import './IPeripheryPayments.sol';
import './IPeripheryImmutableState.sol';

/// @title Non-fungible token for positions
/// @notice Wraps Algebra positions in a non-fungible token interface which allows for them to be transferred
/// and authorized.
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
interface INonfungiblePositionManager is
    IPoolInitializer,
    IPeripheryPayments,
    IPeripheryImmutableState,
    IERC721Metadata,
    IERC721Enumerable,
    IERC721Permit
{
    /// @notice Emitted when liquidity is increased for a position NFT
    /// @dev Also emitted when a token is minted
    /// @param tokenId The ID of the token for which liquidity was increased
    /// @param liquidityDesired The amount by which liquidity for the NFT position was increased
    /// @param actualLiquidity the actual liquidity that was added into a pool. Could differ from
    /// _liquidity_ when using FeeOnTransfer tokens
    /// @param amount0 The amount of token0 that was paid for the increase in liquidity
    /// @param amount1 The amount of token1 that was paid for the increase in liquidity
    event IncreaseLiquidity(
        uint256 indexed tokenId,
        uint128 liquidityDesired,
        uint128 actualLiquidity,
        uint256 amount0,
        uint256 amount1,
        address pool
    );

    /// @notice Emitted when liquidity is decreased for a position NFT
    /// @param tokenId The ID of the token for which liquidity was decreased
    /// @param liquidity The amount by which liquidity for the NFT position was decreased
    /// @param withdrawalFeeliquidity Withdrawal fee liq
    /// @param amount0 The amount of token0 that was accounted for the decrease in liquidity
    /// @param amount1 The amount of token1 that was accounted for the decrease in liquidity
    event DecreaseLiquidity(
        uint256 indexed tokenId,
        uint128 liquidity,
        uint128 withdrawalFeeliquidity,
        uint256 amount0,
        uint256 amount1
    );

    /// @notice Emitted when a fee vault is set for a pool
    /// @param pool The address of the pool to which the vault have been applied
    /// @param feeVault The address of the fee vault
    /// @param fee Percentage of withdrawal fee that will be sent to the vault
    event FeeVaultForPool(address pool, address feeVault, uint16 fee);

    /// @notice Emitted when tokens are collected for a position NFT
    /// @dev The amounts reported may not be exactly equivalent to the amounts transferred, due to rounding behavior
    /// @param tokenId The ID of the token for which underlying tokens were collected
    /// @param recipient The address of the account that received the collected tokens
    /// @param amount0 The amount of token0 owed to the position that was collected
    /// @param amount1 The amount of token1 owed to the position that was collected
    event Collect(uint256 indexed tokenId, address recipient, uint256 amount0, uint256 amount1);

    /// @notice Emitted if farming failed in call from NonfungiblePositionManager.
    /// @dev Should never be emitted
    /// @param tokenId The ID of corresponding token
    event FarmingFailed(uint256 indexed tokenId);

    /// @notice Emitted after farming center address change
    /// @param farmingCenterAddress The new address of connected farming center
    event FarmingCenter(address farmingCenterAddress);

    /// @notice Returns the position information associated with a given token ID.
    /// @dev Throws if the token ID is not valid.
    /// @param tokenId The ID of the token that represents the position
    /// @return nonce The nonce for permits
    /// @return operator The address that is approved for spending
    /// @return token0 The address of the token0 for a specific pool
    /// @return token1 The address of the token1 for a specific pool
    /// @return tickLower The lower end of the tick range for the position
    /// @return tickUpper The higher end of the tick range for the position
    /// @return liquidity The liquidity of the position
    /// @return feeGrowthInside0LastX128 The fee growth of token0 as of the last action on the individual position
    /// @return feeGrowthInside1LastX128 The fee growth of token1 as of the last action on the individual position
    /// @return tokensOwed0 The uncollected amount of token0 owed to the position as of the last computation
    /// @return tokensOwed1 The uncollected amount of token1 owed to the position as of the last computation
    function positions(
        uint256 tokenId
    )
        external
        view
        returns (
            uint88 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );

    struct MintParams {
        address token0;
        address token1;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }

    /// @notice Creates a new position wrapped in a NFT
    /// @dev Call this when the pool does exist and is initialized. Note that if the pool is created but not initialized
    /// a method does not exist, i.e. the pool is assumed to be initialized.
    /// @dev If native token is used as input, this function should be accompanied by a `refundNativeToken` in multicall to avoid potential loss of native tokens
    /// @param params The params necessary to mint a position, encoded as `MintParams` in calldata
    /// @return tokenId The ID of the token that represents the minted position
    /// @return liquidity The liquidity delta amount as a result of the increase
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function mint(
        MintParams calldata params
    ) external payable returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    /// @notice Increases the amount of liquidity in a position, with tokens paid by the `msg.sender`
    /// @param params tokenId The ID of the token for which liquidity is being increased,
    /// amount0Desired The desired amount of token0 to be spent,
    /// amount1Desired The desired amount of token1 to be spent,
    /// amount0Min The minimum amount of token0 to spend, which serves as a slippage check,
    /// amount1Min The minimum amount of token1 to spend, which serves as a slippage check,
    /// deadline The time by which the transaction must be included to effect the change
    /// @dev If native token is used as input, this function should be accompanied by a `refundNativeToken` in multicall to avoid potential loss of native tokens
    /// @return liquidity The liquidity delta amount as a result of the increase
    /// @return amount0 The amount of token0 to achieve resulting liquidity
    /// @return amount1 The amount of token1 to achieve resulting liquidity
    function increaseLiquidity(
        IncreaseLiquidityParams calldata params
    ) external payable returns (uint128 liquidity, uint256 amount0, uint256 amount1);

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    /// @notice Decreases the amount of liquidity in a position and accounts it to the position
    /// @param params tokenId The ID of the token for which liquidity is being decreased,
    /// amount The amount by which liquidity will be decreased,
    /// amount0Min The minimum amount of token0 that should be accounted for the burned liquidity,
    /// amount1Min The minimum amount of token1 that should be accounted for the burned liquidity,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return amount0 The amount of token0 accounted to the position's tokens owed
    /// @return amount1 The amount of token1 accounted to the position's tokens owed
    function decreaseLiquidity(
        DecreaseLiquidityParams calldata params
    ) external payable returns (uint256 amount0, uint256 amount1);

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient
    /// @param params tokenId The ID of the NFT for which tokens are being collected,
    /// recipient The account that should receive the tokens,
    /// amount0Max The maximum amount of token0 to collect,
    /// amount1Max The maximum amount of token1 to collect
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collect(CollectParams calldata params) external payable returns (uint256 amount0, uint256 amount1);

    /// @notice Burns a token ID, which deletes it from the NFT contract. The token must have 0 liquidity and all tokens
    /// must be collected first.
    /// @param tokenId The ID of the token that is being burned
    function burn(uint256 tokenId) external payable;

    /// @notice Changes approval of token ID for farming.
    /// @param tokenId The ID of the token that is being approved / unapproved
    /// @param approve New status of approval
    /// @param farmingAddress The address of farming: used to prevent tx frontrun
    function approveForFarming(uint256 tokenId, bool approve, address farmingAddress) external payable;

    /// @notice Changes farming status of token to 'farmed' or 'not farmed'
    /// @dev can be called only by farmingCenter
    /// @param tokenId The ID of the token
    /// @param toActive The new status
    function switchFarmingStatus(uint256 tokenId, bool toActive) external;

    struct FeesVault {
        address feeVault;
        uint16 fee;
    }

    struct WithdrawalFeePoolParams {
        uint64 apr0;
        uint64 apr1;
        uint16 withdrawalFee;
        FeesVault[] feeVaults;
    }

    /// @notice Returns pending withdrawal fee liquidity
    /// @param tokenId Position ID
    /// @return pendingWithdrawalFeeLiquidity The pending withdrawal fee liquidity
    function calculatePendingWithdrawalFeesLiquidity(
        uint256 tokenId
    ) external view returns (uint128 pendingWithdrawalFeeLiquidity);

    /// @notice Returns actual withdrawal fee liquidity of position
    /// @param tokenId Position ID
    /// @return latestWithdrawalFeeLiquidity The actual withdrawal fee liquidity
    function calculateLatestWithdrawalFeesLiquidity(
        uint256 tokenId
    ) external view returns (uint128 latestWithdrawalFeeLiquidity);

    /// @notice Returns withdrawal fee params for pool
    /// @param pool Pool address
    /// @return params
    function getWithdrawalFeePoolParams(address pool) external view returns (WithdrawalFeePoolParams memory params);

    /// @notice Changes withdrawalFee for pool
    /// @dev can be called only by factory owner or NONFUNGIBLE_POSITION_MANAGER_ADMINISTRATOR_ROLE
    /// @param pool The address of the pool to which the settings have been applied
    /// @param newWithdrawalFee Percentage of lst token earnings that will be sent to the vault
    function setWithdrawalFee(address pool, uint16 newWithdrawalFee) external;

    /// @notice Changes tokens apr for pool
    /// @dev can be called only by factory owner or NONFUNGIBLE_POSITION_MANAGER_ADMINISTRATOR_ROLE
    /// @param pool The address of the pool to which the settings have been applied
    /// @param apr0 APR of LST token0
    /// @param apr1 APR of LST token1
    function setTokenAPR(address pool, uint64 apr0, uint64 apr1) external;

    /// @notice Changes fee vault for pool
    /// @dev can be called only by factory owner or NONFUNGIBLE_POSITION_MANAGER_ADMINISTRATOR_ROLE
    /// @param pool The address of the pool to which the settings have been applied
    /// @param fees array of fees values
    /// @param vaults array of vault addresses
    function setVaultsForPool(address pool, uint16[] memory fees, address[] memory vaults) external;

    /// @notice Returns vault address to which fees will be sent
    /// @return vault The actual vault address
    function defaultWithdrawalFeesVault() external view returns (address vault);

    /// @notice Changes vault address
    /// @dev can be called only by factory owner or NONFUNGIBLE_POSITION_MANAGER_ADMINISTRATOR_ROLE
    /// @param newVault The new address of vault
    function setVaultAddress(address newVault) external;

    /// @notice Returns withdrawalFee information associated with a given token ID
    /// @param tokenId The ID of the token that represents the position
    /// @return lastUpdateTimestamp Last increase/decrease liquidity timestamp
    /// @return withdrawalFeeLiquidity Liqudity of accumulated withdrawal fee
    function positionsWithdrawalFee(
        uint256 tokenId
    ) external view returns (uint32 lastUpdateTimestamp, uint128 withdrawalFeeLiquidity);

    /// @notice Changes address of farmingCenter
    /// @dev can be called only by factory owner or NONFUNGIBLE_POSITION_MANAGER_ADMINISTRATOR_ROLE
    /// @param newFarmingCenter The new address of farmingCenter
    function setFarmingCenter(address newFarmingCenter) external;

    /// @notice Returns whether `spender` is allowed to manage `tokenId`
    /// @dev Requirement: `tokenId` must exist
    function isApprovedOrOwner(address spender, uint256 tokenId) external view returns (bool);

    /// @notice Returns the address of currently connected farming, if any
    /// @return The address of the farming center contract, which handles farmings logic
    function farmingCenter() external view returns (address);

    /// @notice Returns the address of farming that is approved for this token, if any
    function farmingApprovals(uint256 tokenId) external view returns (address);

    /// @notice Returns the address of farming in which this token is farmed, if any
    function tokenFarmedIn(uint256 tokenId) external view returns (address);
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/interfaces/IPeripheryImmutableState.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Immutable state
/// @notice Functions that return immutable state of the router
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
interface IPeripheryImmutableState {
    /// @return Returns the address of the Algebra factory
    function factory() external view returns (address);

    /// @return Returns the address of the pool Deployer
    function poolDeployer() external view returns (address);

    /// @return Returns the address of WNativeToken
    function WNativeToken() external view returns (address);
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/interfaces/IPeripheryPayments.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

/// @title Periphery Payments
/// @notice Functions to ease deposits and withdrawals of NativeToken
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
interface IPeripheryPayments {
    /// @notice Unwraps the contract's WNativeToken balance and sends it to recipient as NativeToken.
    /// @dev The amountMinimum parameter prevents malicious contracts from stealing WNativeToken from users.
    /// @param amountMinimum The minimum amount of WNativeToken to unwrap
    /// @param recipient The address receiving NativeToken
    function unwrapWNativeToken(uint256 amountMinimum, address recipient) external payable;

    /// @notice Refunds any NativeToken balance held by this contract to the `msg.sender`
    /// @dev Useful for bundling with mint or increase liquidity that uses ether, or exact output swaps
    /// that use ether for the input amount
    function refundNativeToken() external payable;

    /// @notice Transfers the full amount of a token held by this contract to recipient
    /// @dev The amountMinimum parameter prevents malicious contracts from stealing the token from users
    /// @param token The contract address of the token which will be transferred to `recipient`
    /// @param amountMinimum The minimum amount of token required for a transfer
    /// @param recipient The destination address of the token
    function sweepToken(
        address token,
        uint256 amountMinimum,
        address recipient
    ) external payable;
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/interfaces/IPoolInitializer.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

/// @title Creates and initializes Algebra Pools
/// @notice Provides a method for creating and initializing a pool, if necessary, for bundling with other methods that
/// require the pool to exist.
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
interface IPoolInitializer {
    /// @notice Creates a new pool if it does not exist, then initializes if not initialized
    /// @dev This method can be bundled with others via IMulticall for the first action (e.g. mint) performed against a pool
    /// @param token0 The contract address of token0 of the pool
    /// @param token1 The contract address of token1 of the pool
    /// @param sqrtPriceX96 The initial square root price of the pool as a Q64.96 value
    /// @return pool Returns the pool address based on the pair of tokens and fee, will return the newly created pool address if necessary
    function createAndInitializePoolIfNecessary(
        address token0,
        address token1,
        uint160 sqrtPriceX96
    ) external payable returns (address pool);
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/libraries/LiquidityAmounts.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

import '@cryptoalgebra/integral-core/contracts/libraries/FullMath.sol';
import '@cryptoalgebra/integral-core/contracts/libraries/Constants.sol';

/// @title Liquidity amount functions
/// @notice Provides functions for computing liquidity amounts from token amounts and prices
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
library LiquidityAmounts {
    /// @notice Downcasts uint256 to uint128
    /// @param x The uint258 to be downcasted
    /// @return y The passed value, downcasted to uint128
    function toUint128(uint256 x) private pure returns (uint128 y) {
        require((y = uint128(x)) == x);
    }

    /// @notice Computes the amount of liquidity received for a given amount of token0 and price range
    /// @dev Calculates amount0 * (sqrt(upper) * sqrt(lower)) / (sqrt(upper) - sqrt(lower))
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount0 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount0(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        uint256 intermediate = FullMath.mulDiv(sqrtRatioAX96, sqrtRatioBX96, Constants.Q96);
        unchecked {
            return toUint128(FullMath.mulDiv(amount0, intermediate, sqrtRatioBX96 - sqrtRatioAX96));
        }
    }

    /// @notice Computes the amount of liquidity received for a given amount of token1 and price range
    /// @dev Calculates amount1 / (sqrt(upper) - sqrt(lower)).
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount1 The amount1 being sent in
    /// @return liquidity The amount of returned liquidity
    function getLiquidityForAmount1(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        unchecked {
            return toUint128(FullMath.mulDiv(amount1, Constants.Q96, sqrtRatioBX96 - sqrtRatioAX96));
        }
    }

    /// @notice Computes the maximum amount of liquidity received for a given amount of token0, token1, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtRatioX96 A sqrt price representing the current pool prices
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param amount0 The amount of token0 being sent in
    /// @param amount1 The amount of token1 being sent in
    /// @return liquidity The maximum amount of liquidity received
    function getLiquidityForAmounts(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0,
        uint256 amount1
    ) internal pure returns (uint128 liquidity) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            liquidity = getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            uint128 liquidity0 = getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0);
            uint128 liquidity1 = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1);

            liquidity = liquidity0 < liquidity1 ? liquidity0 : liquidity1;
        } else {
            liquidity = getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1);
        }
    }

    /// @notice Computes the amount of token0 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    function getAmount0ForLiquidity(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0) {
        unchecked {
            if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

            return
                FullMath.mulDiv(
                    uint256(liquidity) << Constants.RESOLUTION,
                    sqrtRatioBX96 - sqrtRatioAX96,
                    sqrtRatioBX96
                ) / sqrtRatioAX96;
        }
    }

    /// @notice Computes the amount of token1 for a given amount of liquidity and a price range
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount1 The amount of token1
    function getAmount1ForLiquidity(
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount1) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);
        unchecked {
            return FullMath.mulDiv(liquidity, sqrtRatioBX96 - sqrtRatioAX96, Constants.Q96);
        }
    }

    /// @notice Computes the token0 and token1 value for a given amount of liquidity, the current
    /// pool prices and the prices at the tick boundaries
    /// @param sqrtRatioX96 A sqrt price representing the current pool prices
    /// @param sqrtRatioAX96 A sqrt price representing the first tick boundary
    /// @param sqrtRatioBX96 A sqrt price representing the second tick boundary
    /// @param liquidity The liquidity being valued
    /// @return amount0 The amount of token0
    /// @return amount1 The amount of token1
    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) internal pure returns (uint256 amount0, uint256 amount1) {
        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            amount0 = getAmount0ForLiquidity(sqrtRatioX96, sqrtRatioBX96, liquidity);
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioX96, liquidity);
        } else {
            amount1 = getAmount1ForLiquidity(sqrtRatioAX96, sqrtRatioBX96, liquidity);
        }
    }
}

// ============================================================
// FILE: @cryptoalgebra/integral-periphery/contracts/libraries/PoolAddress.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title Provides functions for deriving a pool address from the poolDeployer and tokens
/// @dev Credit to Uniswap Labs under GPL-2.0-or-later license:
/// https://github.com/Uniswap/v3-periphery
library PoolAddress {
    bytes32 internal constant POOL_INIT_CODE_HASH = 0xf96d2474815c32e070cd63233f06af5413efc5dcb430aee4ff18cc29007c562d;

    /// @notice The identifying key of the pool
    struct PoolKey {
        address token0;
        address token1;
    }

    /// @notice Returns PoolKey: the ordered tokens
    /// @param tokenA The first token of a pool, unsorted
    /// @param tokenB The second token of a pool, unsorted
    /// @return Poolkey The pool details with ordered token0 and token1 assignments
    function getPoolKey(address tokenA, address tokenB) internal pure returns (PoolKey memory) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        return PoolKey({token0: tokenA, token1: tokenB});
    }

    /// @notice Deterministically computes the pool address given the poolDeployer and PoolKey
    /// @param poolDeployer The Algebra poolDeployer contract address
    /// @param key The PoolKey
    /// @return pool The contract address of the Algebra pool
    function computeAddress(address poolDeployer, PoolKey memory key) internal pure returns (address pool) {
        require(key.token0 < key.token1, 'Invalid order of tokens');
        pool = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex'ff',
                            poolDeployer,
                            keccak256(abi.encode(key.token0, key.token1)),
                            POOL_INIT_CODE_HASH
                        )
                    )
                )
            )
        );
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/security/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/ERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(address from, address to, uint256 amount) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 amount) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual {}
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC721/extensions/IERC721Enumerable.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional enumeration extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Enumerable is IERC721 {
    /**
     * @dev Returns the total amount of tokens stored by the contract.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns a token ID owned by `owner` at a given `index` of its token list.
     * Use along with {balanceOf} to enumerate all of ``owner``'s tokens.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);

    /**
     * @dev Returns a token ID at a given `index` of all the tokens stored by the contract.
     * Use along with {totalSupply} to enumerate all tokens.
     */
    function tokenByIndex(uint256 index) external view returns (uint256);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1, "Math: mulDiv overflow");

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result << 3) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SafeMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/Math.sol";
import "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toString(int256 value) internal pure returns (string memory) {
        return string(abi.encodePacked(value < 0 ? "-" : "", toString(SignedMath.abs(value))));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: contracts/ICHIVault.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.4;

import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { UV3Math } from "./lib/UV3Math.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import {
    IAlgebraSwapCallback
} from "@cryptoalgebra/integral-core/contracts/interfaces/callback/IAlgebraSwapCallback.sol";
import { IAlgebraPool } from "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import {
    INonfungiblePositionManager
} from "@cryptoalgebra/integral-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import {
    IBasePluginV1Factory
} from "@cryptoalgebra/integral-base-plugin/contracts/interfaces/IBasePluginV1Factory.sol";

import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";

/**
 @notice A Uniswap V2-like interface with fungible liquidity to Uniswap V3
 which allows for either one-sided or two-sided liquidity provision.
 ICHIVaults should be deployed by the ICHIVaultFactory.
 ICHIVaults should not be used with tokens that charge transaction fees.
 */
contract ICHIVault is IICHIVault, IAlgebraSwapCallback, ERC20, ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address public immutable override ichiVaultFactory;
    address public immutable override pool;
    address public immutable override token0;
    address public immutable override token1;
    bool public immutable override allowToken0;
    bool public immutable override allowToken1;

    address public override ammFeeRecipient;
    address public override affiliate;

    // Position tracking
    uint256 public override basePositionId;
    uint256 public override limitPositionId;

    uint256 public override deposit0Max;
    uint256 public override deposit1Max;
    uint256 public override hysteresis;

    uint256 public constant PRECISION = 10 ** 18;
    uint256 constant PERCENT = 100;
    address constant NULL_ADDRESS = address(0);
    uint256 constant MIN_SHARES = 1000;

    uint32 public override twapPeriod;
    uint32 public override auxTwapPeriod;

    /**
     @notice Creates an ICHIVault instance based on Uniswap V3 pool. Controls liquidity provision types.
     @param _pool Address of the Uniswap V3 pool for liquidity management.
     @param _allowToken0 Flag indicating if token0 deposits are allowed.
     @param _allowToken1 Flag indicating if token1 deposits are allowed.
     @param __owner Owner address of the ICHIVault.
     @param _twapPeriod TWAP period for hysteresis checks.
     @param _vaultIndex Index of the vault in the factory.
     */
    constructor(
        address _pool,
        bool _allowToken0,
        bool _allowToken1,
        address __owner,
        uint32 _twapPeriod,
        uint256 _vaultIndex
    ) ERC20("ICHI Vault Liquidity", UV3Math.computeIVsymbol(_vaultIndex, _pool, _allowToken0)) {
        require(_pool != NULL_ADDRESS, "IV.constructor: zero address");
        require((_allowToken0 && !_allowToken1) ||
                (_allowToken1 && !_allowToken0), "IV.constructor: must be single sided");

        ichiVaultFactory = msg.sender;
        pool = _pool;
        token0 = IAlgebraPool(_pool).token0();
        token1 = IAlgebraPool(_pool).token1();
        allowToken0 = _allowToken0;
        allowToken1 = _allowToken1;
        twapPeriod = _twapPeriod;
        auxTwapPeriod = _twapPeriod / 4; // default value is a quarter of the TWAP period

        transferOwnership(__owner);

        hysteresis = PRECISION.div(PERCENT).div(2); // 0.5% threshold
        deposit0Max = type(uint256).max; // max uint256
        deposit1Max = type(uint256).max; // max uint256
        ammFeeRecipient = NULL_ADDRESS; // by default there is no amm fee recipient address;
        affiliate = NULL_ADDRESS; // by default there is no affiliate address

        // Approve NFT manager to spend tokens
        IERC20(token0).approve(IICHIVaultFactory(ichiVaultFactory).nftManager(), type(uint256).max);
        IERC20(token1).approve(IICHIVaultFactory(ichiVaultFactory).nftManager(), type(uint256).max);

        emit DeployICHIVault(msg.sender, _pool, _allowToken0, _allowToken1, __owner, _twapPeriod);
    }

    /// @notice gets baseLower tick from the base position
    /// @return int24 baseLower tick
    function baseLower() external view override returns (int24) {
        if (basePositionId == 0) return 0;
        (,,,,int24 tickLower,,,,,,) = _nftManager().positions(basePositionId);
        return tickLower;
    }

    /// @notice gets baseUpper tick from the base position
    /// @return int24 baseUpper tick
    function baseUpper() external view override returns (int24) {
        if (basePositionId == 0) return 0;
        (,,,,,int24 tickUpper,,,,,) = _nftManager().positions(basePositionId);
        return tickUpper;
    }

    /// @notice gets limitLower tick from the limit position
    /// @return int24 limitLower tick
    function limitLower() external view override returns (int24) {
        if (limitPositionId == 0) return 0;
        (,,,,int24 tickLower,,,,,,) = _nftManager().positions(limitPositionId);
        return tickLower;
    }

    /// @notice gets limitUpper tick from the limit position
    /// @return int24 limitUpper tick
    function limitUpper() external view override returns (int24) {
        if (limitPositionId == 0) return 0;
        (,,,,,int24 tickUpper,,,,,) = _nftManager().positions(limitPositionId);
        return tickUpper;
    }

    /// @notice resets allowances for the NFT manager
    function resetAllowances() external override onlyOwner {
        IERC20(token0).approve(address(_nftManager()), type(uint256).max);
        IERC20(token1).approve(address(_nftManager()), type(uint256).max);
    }

    /// @notice sets TWAP period for hysteresis checks
    /// @dev onlyOwner
    /// @param newTwapPeriod new TWAP period
    function setTwapPeriod(uint32 newTwapPeriod) external override onlyOwner {
        require(newTwapPeriod > 0, "IV.setTwapPeriod: missing period");
        twapPeriod = newTwapPeriod;
        emit SetTwapPeriod(msg.sender, newTwapPeriod);
    }

    /// @notice sets auxiliary TWAP period for hysteresis checks
    /// @dev onlyOwner
    /// @dev aux TWAP could be set to 0 to avoid an additional check
    /// @param newAuxTwapPeriod new auxiliary TWAP period
    function setAuxTwapPeriod(uint32 newAuxTwapPeriod) external override onlyOwner {
        auxTwapPeriod = newAuxTwapPeriod;
        emit SetAuxTwapPeriod(msg.sender, newAuxTwapPeriod);
    }

    /// @notice collects fees and tokens from the positions and burns the NFTs
    /// @param positionId NFT position ID
    function _dismantlePosition(uint256 positionId) internal {
        if (positionId != 0) {
            uint128 positionLiquidity = _getPositionLiquidity(positionId);
            if (positionLiquidity > 0) {
                _nftManager().decreaseLiquidity(
                    INonfungiblePositionManager.DecreaseLiquidityParams({
                        tokenId: positionId,
                        liquidity: positionLiquidity,
                        amount0Min: 0,
                        amount1Min: 0,
                        deadline: block.timestamp
                    })
                );
            }

            _nftManager().collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: positionId,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );
            _nftManager().burn(positionId);
            // not setting positionId to 0, as it is done in the rebalance->mint functions
        }
    }

    /// @notice gets NFT manager
    /// @return INonfungiblePositionManager NFT manager
    function _nftManager() internal view returns (INonfungiblePositionManager) {
        return INonfungiblePositionManager(IICHIVaultFactory(ichiVaultFactory).nftManager());
    }

    /// @notice collects fees from the position
    /// @param positionId NFT position ID
    function _collectFromPosition(uint256 positionId) internal returns (uint256 fees0, uint256 fees1) {
        if (positionId == 0) {
            return (0, 0);
        }
        (uint256 _fees0, uint256 _fees1) = _nftManager().collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: positionId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );
        fees0 = _fees0;
        fees1 = _fees1;
    }

    /// @notice collects fees from both positions and distributes them
    /// @param withEvent flag to emit CollectFees event (false in rebalances, true otherwise)
    /// @return fees0 collected fees in token0
    /// @return fees1 collected fees in token1
    function _cleanPositions(bool withEvent) internal returns (uint256 fees0, uint256 fees1) {
        fees0 = 0;
        fees1 = 0;
        if (basePositionId != 0) {
            (uint256 feesBase0, uint256 feesBase1) = _collectFromPosition(basePositionId);
            fees0 = fees0.add(feesBase0);
            fees1 = fees1.add(feesBase1);
        }
        if (limitPositionId != 0) {
            (uint256 feesLimit0, uint256 feesLimit1) = _collectFromPosition(limitPositionId);
            fees0 = fees0.add(feesLimit0);
            fees1 = fees1.add(feesLimit1);
        }
        if (fees0 > 0 || fees1 > 0) {
            _distributeFees(fees0, fees1);
            if (withEvent) {
                emit CollectFees(msg.sender, fees0, fees1);
            }
        }
    }

    /**
    @notice Internal function to mint an NFT position
    @param tickLower Lower tick of the position
    @param tickUpper Upper tick of the position
    @param amount0Desired Desired amount of token0
    @param amount1Desired Desired amount of token1
    @return positionId ID of the minted NFT position
    */
    function _mintPosition(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal returns (uint256 positionId) {
        // Don't try to mint if we don't have any tokens
        if (amount0Desired == 0 && amount1Desired == 0) {
            return 0;
        }

        // Get current tick to determine if position can be minted
        int24 currentTick = currentTick();

        // If current tick is within or on the boundaries of our range, we need both tokens
        if (currentTick >= tickLower && currentTick < tickUpper) {
            if (amount0Desired == 0 || amount1Desired == 0) {
                return 0;
            }
        }
        // If entirely above current tick (not including boundary), we only need token0
        else if (currentTick < tickLower) {
            if (amount0Desired == 0) {
                return 0;
            }
        }
        // If entirely below current tick (including boundary), we only need token1
        else if (currentTick >= tickUpper) {
            if (amount1Desired == 0) {
                return 0;
            }
        }

        (positionId, , , ) = _nftManager().mint(
            INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                tickLower: tickLower,
                tickUpper: tickUpper,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp
            })
        );
    }

    /// @notice mints base position
    /// @param _baseLower lower tick of the base position
    /// @param _baseUpper upper tick of the base position
    /// @param amount0Desired desired amount of token0
    /// @param amount1Desired desired amount of token1
    function _mintBasePosition(
        int24 _baseLower,
        int24 _baseUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal {
        basePositionId = _mintPosition(_baseLower, _baseUpper, amount0Desired, amount1Desired);
    }

    /// @notice mints limit position
    /// @param _limitLower lower tick of the limit position
    /// @param _limitUpper upper tick of the limit position
    /// @param amount0Desired desired amount of token0
    /// @param amount1Desired desired amount of token1
    function _mintLimitPosition(
        int24 _limitLower,
        int24 _limitUpper,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal {
        limitPositionId = _mintPosition(_limitLower, _limitUpper, amount0Desired, amount1Desired);
    }

    /** @notice Helper function to get the most conservative price
     @param spot Current spot price
     @param twap TWAP price
     @param auxTwap Auxiliary TWAP price
     @param isPool Flag indicating if the valuation is for the pool or deposit
     @return price Most conservative price
    */
    function _getConservativePrice(
        uint256 spot,
        uint256 twap,
        uint256 auxTwap,
        bool isPool
    ) internal view returns (uint256) {
        if (isPool) {
            // For pool valuation, use highest price to be conservative
            if (auxTwapPeriod > 0) {
                return max(max(spot, twap), auxTwap);
            }
            return max(spot, twap);
        } else {
            // For deposit valuation, use lowest price to be conservative
            if (auxTwapPeriod > 0) {
                return min(min(spot, twap), auxTwap);
            }
            return min(spot, twap);
        }
    }

    /**
     @notice Helper function to check price manipulation
     @param price Current spot price
     @param twap TWAP price
     @param auxTwap Auxiliary TWAP price
    */
    function _checkPriceManipulation(
        uint256 price,
        uint256 twap,
        uint256 auxTwap
    ) internal view {
        uint256 delta = (price > twap)
            ? price.sub(twap).mul(PRECISION).div(price)
            : twap.sub(price).mul(PRECISION).div(twap);

        if (auxTwapPeriod > 0) {
            uint256 auxDelta = (price > auxTwap)
                ? price.sub(auxTwap).mul(PRECISION).div(price)
                : auxTwap.sub(price).mul(PRECISION).div(auxTwap);

            if (delta > hysteresis || auxDelta > hysteresis)
                require(checkHysteresis(), "IV.deposit: try later");
        } else if (delta > hysteresis) {
            require(checkHysteresis(), "IV.deposit: try later");
        }
    }

    /**
     @notice Distributes shares based on token1 value, adjusted by liquidity shares and pool's AUM in token1.
     @param deposit0 Token0 amount transferred from sender to ICHIVault.
     @param deposit1 Token1 amount transferred from sender to ICHIVault.
     @param to Recipient address for minted liquidity tokens.
     @return shares Number of liquidity tokens minted for deposit.
     */
    function deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to
    ) external override nonReentrant returns (uint256 shares) {
        require(allowToken0 || deposit0 == 0, "IV.deposit: token0 not allowed");
        require(allowToken1 || deposit1 == 0, "IV.deposit: token1 not allowed");
        require(deposit0 > 0 || deposit1 > 0, "IV.deposit: deposits must be > 0");
        require(deposit0 < deposit0Max && deposit1 < deposit1Max, "IV.deposit: deposits too large");
        require(to != NULL_ADDRESS && to != address(this), "IV.deposit: to");

        // Get spot price
        uint256 price = _fetchSpot(token0, token1, currentTick(), PRECISION);

        // Get TWAP price
        uint256 twap = _fetchTwap(pool, token0, token1, twapPeriod, PRECISION);

        // Get aux TWAP price if aux period is set (otherwise set it equal to the TWAP price)
        uint256 auxTwap = auxTwapPeriod > 0
            ? _fetchTwap(pool, token0, token1, auxTwapPeriod, PRECISION)
            : twap;

        // Check price manipulation
        _checkPriceManipulation(price, twap, auxTwap);

        // Clean positions and collect/distribute fees
        _cleanPositions(true);

        // Get total amounts including current positions with updated fees
        (uint256 pool0, uint256 pool1) = getTotalAmounts();

        uint256 _totalSupply = totalSupply();

        // this should not happen, safety check against withdrawal fees overflowing both positions
        require(pool0 > 0 || pool1 > 0 || _totalSupply == 0, "IV.deposit: empty");

        // Transfer tokens from depositor
        if (deposit0 > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), deposit0);
        }
        if (deposit1 > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), deposit1);
        }

        // Calculate share value in token1
        uint256 priceForDeposit = _getConservativePrice(price, twap, auxTwap, false);
        uint256 deposit0PricedInToken1 = deposit0.mul(priceForDeposit).div(PRECISION);

        // Calculate shares to mint
        shares = deposit1.add(deposit0PricedInToken1);

        if (_totalSupply != 0) {
            uint256 priceForPool = _getConservativePrice(price, twap, auxTwap, true);
            uint256 pool0PricedInToken1 = pool0.mul(priceForPool).div(PRECISION);
            shares = shares.mul(_totalSupply).div(pool0PricedInToken1.add(pool1));
        } else {
            shares = shares.mul(MIN_SHARES);
        }

        _mint(to, shares);
        emit Deposit(msg.sender, to, shares, deposit0, deposit1);
    }

    /**
    @notice Decreases liquidity from NFT position proportional to shares
    @param positionId NFT position ID
    @param shares Amount of shares being withdrawn
    @param totalSupply Total supply of shares
    @param to Address to receive tokens
    @return amount0 Token0 amount withdrawn
    @return amount1 Token1 amount withdrawn
    */
    function _withdrawFromPosition(
        uint256 positionId,
        uint256 shares,
        uint256 totalSupply,
        address to
    ) internal returns (uint256 amount0, uint256 amount1) {
        // this function is always called after _cleanPositions is aleady called

        // Get position info
        (
            ,
            ,
            ,
            ,
            ,
            ,
            uint128 positionLiquidity,
            ,
            ,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        ) = _nftManager().positions(positionId);

        // should not be happening, safety check
        require(tokensOwed0 == 0 && tokensOwed1 == 0, "IV.withdraw: tokens owed");

        // calculate adjusted liquidity taking in account withdrawal fees
        uint128 withdrawalFeesLiquidity = _getLatestWithdrawalFeeLiquidity(positionId);
        uint128 adjustedLiquidity = positionLiquidity > withdrawalFeesLiquidity
            ? uint128(uint256(positionLiquidity).sub(uint256(withdrawalFeesLiquidity)))
            : 0;

        // Calculate proportional liquidity
        uint128 liquidityToDecrease = uint128(uint256(adjustedLiquidity).mul(shares).div(totalSupply));

        if (liquidityToDecrease > 0) {
            // Decrease liquidity
            (amount0, amount1) = _nftManager().decreaseLiquidity(
                INonfungiblePositionManager.DecreaseLiquidityParams({
                    tokenId: positionId,
                    liquidity: liquidityToDecrease,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: block.timestamp
                })
            );

            // Collect tokens
            _nftManager().collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: positionId,
                    recipient: to,
                    amount0Max: uint128(amount0),
                    amount1Max: uint128(amount1)
                })
            );
        }
    }
    /**
     @notice Redeems shares for a proportion of ICHIVault's AUM, matching the share percentage of total issued.
     @param shares Quantity of liquidity tokens to redeem as pool assets.
     @param to Address receiving the redeemed pool assets.
     @return amount0 Token0 amount received from liquidity token redemption.
     @return amount1 Token1 amount received from liquidity token redemption.
     */
    function withdraw(
        uint256 shares,
        address to
    ) external override nonReentrant returns (uint256 amount0, uint256 amount1) {
        require(shares > 0, "IV.withdraw: shares");
        require(to != NULL_ADDRESS, "IV.withdraw: to");

        uint256 _totalSupply = totalSupply();
        require(shares == _totalSupply || _totalSupply >= shares.add(MIN_SHARES), "IV.withdraw: min shares");

        // Clean positions and collect/distribute fees
        _cleanPositions(true);

        // Withdraw from positions
        uint256 base0;
        uint256 base1;
        uint256 limit0;
        uint256 limit1;

        if (basePositionId != 0) {
            (base0, base1) = _withdrawFromPosition(basePositionId, shares, _totalSupply, to);
        }

        if (limitPositionId != 0) {
            (limit0, limit1) = _withdrawFromPosition(limitPositionId, shares, _totalSupply, to);
        }

        // Add proportional share of unused balances
        uint256 unusedAmount0 = IERC20(token0).balanceOf(address(this)).mul(shares).div(_totalSupply);
        uint256 unusedAmount1 = IERC20(token1).balanceOf(address(this)).mul(shares).div(_totalSupply);
        if (unusedAmount0 > 0) IERC20(token0).safeTransfer(to, unusedAmount0);
        if (unusedAmount1 > 0) IERC20(token1).safeTransfer(to, unusedAmount1);

        // Calculate total amounts returned
        amount0 = base0.add(limit0).add(unusedAmount0);
        amount1 = base1.add(limit1).add(unusedAmount1);

        _burn(msg.sender, shares);

        emit Withdraw(msg.sender, to, shares, amount0, amount1);
    }

    /**
     @notice Updates LP positions in the ICHIVault.
     @dev First places a base position symmetrically around current price, using one token fully.
     Remaining token forms a single-sided order.
     @param _baseLower Lower tick of the base position.
     @param _baseUpper Upper tick of the base position.
     @param _limitLower Lower tick of the limit position.
     @param _limitUpper Upper tick of the limit position.
     @param swapQuantity Token swap quantity; positive for token0 to token1, negative for token1 to token0.
     */
    function rebalance(
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        int256 swapQuantity
    ) external override nonReentrant onlyOwner {
        int24 tickSpacing_ = IAlgebraPool(pool).tickSpacing();
        require(
            _baseLower < _baseUpper && _baseLower % tickSpacing_ == 0 && _baseUpper % tickSpacing_ == 0,
            "IV.rebalance: base position invalid"
        );
        require(
            _limitLower < _limitUpper && _limitLower % tickSpacing_ == 0 && _limitUpper % tickSpacing_ == 0,
            "IV.rebalance: limit position invalid"
        );
        require(_baseLower != _limitLower || _baseUpper != _limitUpper, "IV.rebalance: identical positions");

        // Clean positions and collect/distribute fees
        (uint256 fees0, uint256 fees1) = _cleanPositions(false);

        // dismantle positions, collect all tokens (fees already collected)
        _dismantlePosition(basePositionId);
        _dismantlePosition(limitPositionId);

        // swap tokens if required
        if (swapQuantity != 0) {
            IAlgebraPool(pool).swap(
                address(this),
                swapQuantity > 0,
                swapQuantity > 0 ? swapQuantity : -swapQuantity,
                swapQuantity > 0 ? UV3Math.MIN_SQRT_RATIO + 1 : UV3Math.MAX_SQRT_RATIO - 1,
                abi.encode(address(this))
            );
        }

        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));

        emit Rebalance(
            currentTick(),
            balance0,
            balance1,
            fees0,
            fees1,
            totalSupply()
        );

        _mintBasePosition(_baseLower, _baseUpper,
            balance0, balance1);
        // balances had changed, so we need to recalculate them for the limit position
        _mintLimitPosition(_limitLower, _limitUpper,
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this))
        );
    }

    /**
     @notice Collects and distributes fees from ICHIVault's LP positions. Transaction can be paid by anyone.
     @return fees0 Collected fees in token0.
     @return fees1 Collected fees in token1.
     */
    function collectFees() external override nonReentrant returns (uint256 fees0, uint256 fees1) {
        (uint256 _fees0, uint256 _fees1) = _cleanPositions(true);
        return (_fees0, _fees1);
    }

    /// @notice min function
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /// @notice max function
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? b : a;
    }

    /**
     @notice Sends portion of swap fees to ammFeeRecepient, feeRecipient and affiliate.
     @param fees0 fees for token0
     @param fees1 fees for token1
     */
    function _distributeFees(uint256 fees0, uint256 fees1) internal {
        uint256 ammFee = IICHIVaultFactory(ichiVaultFactory).ammFee();
        uint256 baseFee = IICHIVaultFactory(ichiVaultFactory).baseFee();

        // Make sure there are always enough fees to distribute
        fees0 = min(fees0, IERC20(token0).balanceOf(address(this)));
        fees1 = min(fees1, IERC20(token1).balanceOf(address(this)));

        // baseFeeRecipient cannot be NULL. This is checked and controlled in the factory
        // ammFeeRecipient could be NULL, in this case ammFees are not taken
        // ammFee + baseFee is always <= 100%. Also controlled in the factory

        if (ammFee > 0 && ammFeeRecipient != NULL_ADDRESS) {
            if (fees0 > 0) {
                IERC20(token0).safeTransfer(ammFeeRecipient, fees0.mul(ammFee).div(PRECISION));
            }
            if (fees1 > 0) {
                IERC20(token1).safeTransfer(ammFeeRecipient, fees1.mul(ammFee).div(PRECISION));
            }
        }

        if (baseFee > 0) {
            // if there is no affiliate 100% of the baseFee should go to feeRecipient
            uint256 baseFeeSplit = (affiliate == NULL_ADDRESS)
                ? PRECISION
                : IICHIVaultFactory(ichiVaultFactory).baseFeeSplit();
            address feeRecipient = IICHIVaultFactory(ichiVaultFactory).feeRecipient();

            if (fees0 > 0) {
                uint256 totalFee = fees0.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token0).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token0).safeTransfer(affiliate, toAffiliate);
                }
            }
            if (fees1 > 0) {
                uint256 totalFee = fees1.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token1).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token1).safeTransfer(affiliate, toAffiliate);
                }
            }
        }
    }

    /**
     @notice Checks if the last price change happened in the current block
     */
    function checkHysteresis() private view returns (bool) {
        address basePlugin = _getBasePluginFromPool();

        // get latest timestamp from the plugin
        (, uint32 blockTimestamp) = UV3Math.lastTimepointMetadata(basePlugin);
        return (block.timestamp != blockTimestamp);
    }

    /**
     @notice Returns the current fee in the pool
     @return fee_ current fee in the pool
     */
    function fee() external view override returns (uint24 fee_) {
        (, , fee_, , , ) = IAlgebraPool(pool).globalState();
    }

    /**
     @notice Sets the hysteresis threshold, in percentage points (10**16 = 1%). Triggers a flashloan attack
     check when the difference between spot price and TWAP exceeds this threshold.
     @dev Accessible only by the owner.
     @param _hysteresis Hysteresis threshold value.
     */
    function setHysteresis(uint256 _hysteresis) external override onlyOwner {
        hysteresis = _hysteresis;
        emit Hysteresis(msg.sender, _hysteresis);
    }

    /**
     @notice Sets the AMM fee recipient account address, where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _ammFeeRecipient The AMM fee recipient account address
     */
    function setAmmFeeRecipient(address _ammFeeRecipient) external override onlyOwner {
        ammFeeRecipient = _ammFeeRecipient;
        emit AmmFeeRecipient(msg.sender, _ammFeeRecipient);
    }

    /**
     @notice Sets the affiliate account address where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _affiliate The affiliate account address
     */
    function setAffiliate(address _affiliate) external override onlyOwner {
        affiliate = _affiliate;
        emit Affiliate(msg.sender, _affiliate);
    }

    /**
     @notice Sets the maximum token0 and token1 amounts the contract allows in a deposit
     @dev onlyOwner
     @param _deposit0Max The maximum amount of token0 allowed in a deposit
     @param _deposit1Max The maximum amount of token1 allowed in a deposit
     */
    function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external override onlyOwner {
        deposit0Max = _deposit0Max;
        deposit1Max = _deposit1Max;
        emit DepositMax(msg.sender, _deposit0Max, _deposit1Max);
    }

    /**
     @notice Returns the current tickSpacing in the pool
     @return tickSpacing current tickSpacing in the pool
     */
    function tickSpacing() external view override returns (int24) {
        return IAlgebraPool(pool).tickSpacing();
    }

    /**
     @notice Calculates total quantity of token0 and token1 in both positions (and unused in the ICHIVault)
     @return total0 Quantity of token0 in both positions (and unused in the ICHIVault)
     @return total1 Quantity of token1 in both positions (and unused in the ICHIVault)
     */
    function getTotalAmounts() public view override returns (uint256 total0, uint256 total1) {
        (, uint256 base0, uint256 base1) = getBasePosition();
        (, uint256 limit0, uint256 limit1) = getLimitPosition();
        total0 = IERC20(token0).balanceOf(address(this)).add(base0).add(limit0);
        total1 = IERC20(token1).balanceOf(address(this)).add(base1).add(limit1);
    }

    /**
    * @notice Gets position info and calculates token amounts for a given NFT position
    * @param positionId NFT position ID to query
    * @return liquidity Amount of liquidity in the position
    * @return amount0 Amount of token0 in position (including fees)
    * @return amount1 Amount of token1 in position (including fees)
    */
    function _getPositionAmounts(
        uint256 positionId
    ) internal view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (positionId == 0) {
            return (0, 0, 0);
        }

        // Get current position info from NFT manager
        (
            ,
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            uint128 positionLiquidity,
            ,
            ,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        ) = _nftManager().positions(positionId);

        uint128 withdrawalFeesLiquidity = _getLatestWithdrawalFeeLiquidity(positionId);
        liquidity = positionLiquidity > withdrawalFeesLiquidity
            ? uint128(uint256(positionLiquidity).sub(uint256(withdrawalFeesLiquidity)))
            : 0;

        // Get current price from pool for amount calculation
        (uint160 sqrtRatioX96, , , , , ) = IAlgebraPool(pool).globalState();

        // Calculate amounts for the current liquidity
        (amount0, amount1) = UV3Math.getAmountsForLiquidity(
            sqrtRatioX96,
            UV3Math.getSqrtRatioAtTick(tickLower),
            UV3Math.getSqrtRatioAtTick(tickUpper),
            liquidity
        );

        // Add any uncollected fees
        amount0 = amount0.add(uint256(tokensOwed0));
        amount1 = amount1.add(uint256(tokensOwed1));
    }

    /**
    * @notice Gets position liquidity for a given NFT position
    * @param positionId NFT position ID to query
    * @return liquidity Amount of liquidity in the position
    */
    function _getPositionLiquidity(
        uint256 positionId
    ) internal view returns (uint128 liquidity) {
        if (positionId == 0) {
            return 0;
        }

        // Get current position info from NFT manager
        (
            ,
            ,
            ,
            ,
            ,
            ,
            uint128 positionLiquidity,
            ,
            ,
            ,
        ) = _nftManager().positions(positionId);
        liquidity = positionLiquidity;
    }

    /**
     @notice Calculates amount of total liquidity in the base position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the base position
     @return amount1 Estimated amount of token1 that could be collected by burning the base position
     */
    function getBasePosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        return _getPositionAmounts(basePositionId);
    }

    /**
     @notice Calculates amount of total liquidity in the limit position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the limit position
     @return amount1 Estimated amount of token1 that could be collected by burning the limit position
     */
    function getLimitPosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        return _getPositionAmounts(limitPositionId);
    }

    /**
     @notice Returns current price tick
     @return tick Uniswap pool's current price tick
     */
    function currentTick() public view override returns (int24 tick) {
        (, int24 tick_, , , , bool unlocked_) = IAlgebraPool(pool).globalState();
        require(unlocked_, "IV.currentTick: the pool is locked");
        tick = tick_;
    }

    /**
     @notice returns equivalent _tokenOut for _amountIn, _tokenIn using spot price
     @param _tokenIn token the input amount is in
     @param _tokenOut token for the output amount
     @param _tick tick for the spot price
     @param _amountIn amount in _tokenIn
     @return amountOut equivalent anount in _tokenOut
     */
    function _fetchSpot(
        address _tokenIn,
        address _tokenOut,
        int24 _tick,
        uint256 _amountIn
    ) internal pure returns (uint256 amountOut) {
        return UV3Math.getQuoteAtTick(_tick, UV3Math.toUint128(_amountIn), _tokenIn, _tokenOut);
    }

    /**
     @notice returns equivalent _tokenOut for _amountIn, _tokenIn using TWAP price
     @param _pool Uniswap V3 pool address to be used for price checking
     @param _tokenIn token the input amount is in
     @param _tokenOut token for the output amount
     @param _twapPeriod the averaging time period
     @param _amountIn amount in _tokenIn
     @return amountOut equivalent anount in _tokenOut
     */
    function _fetchTwap(
        address _pool,
        address _tokenIn,
        address _tokenOut,
        uint32 _twapPeriod,
        uint256 _amountIn
    ) internal view returns (uint256 amountOut) {
        // Leave twapTick as a int256 to avoid solidity casting
        address basePlugin = _getBasePluginFromPool();

        int256 twapTick = UV3Math.consult(basePlugin, _twapPeriod);
        return
            UV3Math.getQuoteAtTick(
                int24(twapTick), // can assume safe being result from consult()
                UV3Math.toUint128(_amountIn),
                _tokenIn,
                _tokenOut
            );
    }

    /**
     @notice Callback function for swap
     @dev this is where the payer transfers required token0 and token1 amounts
     @param amount0Delta required amount of token0
     @param amount1Delta required amount of token1
     @param data encoded payer's address
     */
    function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
        require(msg.sender == address(pool), "cb2");

        if (amount0Delta > 0) {
            IERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
        } else if (amount1Delta > 0) {
            IERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
        }
    }

    /// @notice returns the latest withdrawal fee liquidity
    /// @param positionId NFT position ID
    /// @return latestWithdrawalFeeLiquidity latest withdrawal fee liquidity
    function _getLatestWithdrawalFeeLiquidity(uint256 positionId) private view returns (uint128 latestWithdrawalFeeLiquidity) {
        latestWithdrawalFeeLiquidity = _nftManager().calculateLatestWithdrawalFeesLiquidity(positionId);
    }

    function _getBasePluginFromPool() private view returns (address basePlugin) {
        basePlugin = IAlgebraPool(pool).plugin();
        // make sure the base plugin is connected to the pool
        require(UV3Math.isOracleConnectedToPool(basePlugin, pool), "IV: diconnected plugin");
    }
}

// ============================================================
// FILE: contracts/ICHIVaultFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.4;

import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";
import { IAlgebraFactory } from "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraFactory.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { ICHIVaultDeployer } from "./lib/ICHIVaultDeployer.sol";
import {
    IBasePluginV1Factory
} from "@cryptoalgebra/integral-base-plugin/contracts/interfaces/IBasePluginV1Factory.sol";
import { IAlgebraPool } from "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract ICHIVaultFactory is IICHIVaultFactory, ReentrancyGuard, Ownable {
    using SafeMath for uint256;

    address constant NULL_ADDRESS = address(0);
    uint256 constant DEFAULT_AMM_FEE = 0; // 0%
    uint256 constant DEFAULT_BASE_FEE = 2 * 10 ** 17; // 20%
    uint256 constant DEFAULT_BASE_FEE_SPLIT = 5 * 10 ** 17; // 50%
    uint256 constant PRECISION = 10 ** 18;
    uint32 constant DEFAULT_TWAP_PERIOD = 60 minutes;
    address public immutable override algebraFactory;
    address public immutable override nftManager;
    string public override ammName;

    address public override feeRecipient;
    uint256 public override ammFee;
    uint256 public override baseFee;
    uint256 public override baseFeeSplit;

    mapping(bytes32 => address) public getICHIVault;
    address[] public allVaults;

    /**
     @notice creates an instance of ICHIVaultFactory
     @param _algebraFactory Algebra Integral factory
     */
    constructor(address _algebraFactory,
                address _nftManager,
                string memory _ammName) {
        require(_algebraFactory != NULL_ADDRESS &&
                _nftManager != NULL_ADDRESS, "IVF.constructor: zero address");
        algebraFactory = _algebraFactory;
        nftManager = _nftManager;
        ammName = _ammName;
        feeRecipient = msg.sender;
        ammFee = DEFAULT_AMM_FEE;
        baseFee = DEFAULT_BASE_FEE;
        baseFeeSplit = DEFAULT_BASE_FEE_SPLIT;
        emit DeployICHIVaultFactory(msg.sender, _algebraFactory);
    }

    /**
     @notice Creates an ICHIVault for specified tokenA/tokenB/fee. May create an underlying Uniswap V3 pool.
     Controls liquidity provision types (one-sided or two-sided).
     @param tokenA TokenA of the Algebra V1 pool.
     @param allowTokenA Indicates if tokenA is accepted during deposit.
     @param tokenB TokenB of the Algebra V1 pool.
     @param allowTokenB Indicates if tokenB is accepted during deposit.
     @return ichiVault Address of the newly created ICHIVault.
     */
    function createICHIVault(
        address tokenA,
        bool allowTokenA,
        address tokenB,
        bool allowTokenB
    ) external override nonReentrant returns (address ichiVault) {
        require(tokenA != tokenB, "IVF.createICHIVault: identical tokens");

        (address token0, address token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        (bool allowToken0, bool allowToken1) = tokenA < tokenB
            ? (allowTokenA, allowTokenB)
            : (allowTokenB, allowTokenA);

        require(token0 != NULL_ADDRESS, "IVF.createICHIVault: zero address");
        require(allowTokenA || allowTokenB, "IVF.createICHIVault: no allowed tokens");

        require(
            getICHIVault[genKey(msg.sender, token0, token1, allowToken0, allowToken1)] == NULL_ADDRESS,
            "IVF.createICHIVault: vault exists"
        );

        address pool = IAlgebraFactory(algebraFactory).poolByPair(tokenA, tokenB);

        require(pool != NULL_ADDRESS, "IVF.createICHIVault: pool must exist");

        (, , , , , bool unlocked) = IAlgebraPool(pool).globalState();

        require(unlocked, "IVF.createICHIVault: pool is locked");

        ichiVault = ICHIVaultDeployer.createICHIVault(
            pool,
            token0,
            allowToken0,
            token1,
            allowToken1,
            DEFAULT_TWAP_PERIOD,
            allVaults.length
        );

        // populate mapping in the reverse direction
        getICHIVault[genKey(msg.sender, token0, token1, allowToken0, allowToken1)] = ichiVault;
        getICHIVault[genKey(msg.sender, token1, token0, allowToken1, allowToken0)] = ichiVault;
        allVaults.push(ichiVault);

        emit ICHIVaultCreated(msg.sender, ichiVault, token0, allowToken0, token1, allowToken1, allVaults.length);
    }

    /**
     @notice Sets the fee recipient account address, where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _feeRecipient The fee recipient account address
     */
    function setFeeRecipient(address _feeRecipient) external override onlyOwner {
        require(_feeRecipient != NULL_ADDRESS, "IVF.setFeeRecipient: zero address");
        feeRecipient = _feeRecipient;
        emit FeeRecipient(msg.sender, _feeRecipient);
    }

    /**
     @notice Sets the fee percentage taken from pool's swap fees, allocated to the AMM for external incentives.
     @dev Accessible only by the owner.
     @param _ammFee Fee percentage taken from the pool's accumulated swap fees.
     */
    function setAmmFee(uint256 _ammFee) external override onlyOwner {
        require(baseFee.add(_ammFee) <= PRECISION, "IVF.setAmmFee: fees must be <= 10**18");
        ammFee = _ammFee;
        emit AmmFee(msg.sender, _ammFee);
    }

    /**
     @notice Sets the fee percentage taken from pool's swap fees, distributed between feeRecipient and affiliates.
     @dev Accessible only by the owner.
     @param _baseFee Fee percentage taken from the pool's accumulated swap fees.
     */
    function setBaseFee(uint256 _baseFee) external override onlyOwner {
        require(ammFee.add(_baseFee) <= PRECISION, "IVF.setBaseFee: fees must be <= 10**18");
        baseFee = _baseFee;
        emit BaseFee(msg.sender, _baseFee);
    }

    /**
     @notice Sets the fee split ratio between feeRecipient and affiliate accounts. Ratio format:
     (baseFeeSplit)/(100 - baseFeeSplit). E.g., for a 20/80 split, set baseFeeSplit to 20.
     @dev Accessible only by the owner.
     @param _baseFeeSplit Fee split ratio between feeRecipient and affiliate accounts.
     */
    function setBaseFeeSplit(uint256 _baseFeeSplit) external override onlyOwner {
        require(_baseFeeSplit <= PRECISION, "IVF.setBaseFeeSplit: must be <= 10**18");
        baseFeeSplit = _baseFeeSplit;
        emit BaseFeeSplit(msg.sender, _baseFeeSplit);
    }

    /**
     * @notice generate a key for getIchiVault
     * @param deployer vault creator
     * @param token0 the first of two tokens in the vault
     * @param token1 the second of two tokens in the vault
     * @param allowToken0 allow deposits
     * @param allowToken1 allow deposits
     * @return key generated key
     */
    function genKey(
        address deployer,
        address token0,
        address token1,
        bool allowToken0,
        bool allowToken1
    ) public pure override returns (bytes32 key) {
        key = keccak256(abi.encodePacked(deployer, token0, token1, allowToken0, allowToken1));
    }
}

// ============================================================
// FILE: contracts/lib/ICHIVaultDeployer.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.4;

import { ICHIVault } from "../ICHIVault.sol";

library ICHIVaultDeployer {
    function createICHIVault(
        address pool,
        address token0,
        bool allowToken0,
        address token1,
        bool allowToken1,
        uint32 twapPeriod,
        uint256 vaultIndex
    ) public returns (address ichiVault) {
        ichiVault = address(
            new ICHIVault{ salt: keccak256(abi.encodePacked(msg.sender, token0, allowToken0, token1, allowToken1)) }(
                pool,
                allowToken0,
                allowToken1,
                msg.sender,
                twapPeriod,
                vaultIndex
            )
        );
    }
}

// ============================================================
// FILE: contracts/lib/OracleLibrary.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.4;

import "@cryptoalgebra/integral-core/contracts/libraries/FullMath.sol";
import "@cryptoalgebra/integral-core/contracts/libraries/TickMath.sol";
import "@cryptoalgebra/integral-core/contracts/libraries/Plugins.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import "@cryptoalgebra/integral-periphery/contracts/libraries/PoolAddress.sol";
import "@cryptoalgebra/integral-base-plugin/contracts/interfaces/plugins/IVolatilityOracle.sol";

/// @title Oracle library
/// @notice Provides functions to integrate with Algebra pool TWAP VolatilityOracle
library OracleLibrary {
    /// @notice Fetches time-weighted average tick using Algebra VolatilityOracle
    /// @param oracleAddress The address of oracle
    /// @param period Number of seconds in the past to start calculating time-weighted average
    /// @return timeWeightedAverageTick The time-weighted average tick from (block.timestamp-period) to block.timestamp
    function consult(address oracleAddress, uint32 period) internal view returns (int24 timeWeightedAverageTick) {
        require(period != 0, "Period is zero");

        uint32[] memory secondAgos = new uint32[](2);
        secondAgos[0] = period;
        secondAgos[1] = 0;

        IVolatilityOracle oracle = IVolatilityOracle(oracleAddress);
        (int56[] memory tickCumulatives, ) = oracle.getTimepoints(secondAgos);
        int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];

        timeWeightedAverageTick = int24(tickCumulativesDelta / int56(uint56(period)));

        // Always round to negative infinity
        if (tickCumulativesDelta < 0 && (tickCumulativesDelta % int56(uint56(period)) != 0)) timeWeightedAverageTick--;
    }

    /// @notice Given a tick and a token amount, calculates the amount of token received in exchange
    /// @param tick Tick value used to calculate the quote
    /// @param baseAmount Amount of token to be converted
    /// @param baseToken Address of an ERC20 token contract used as the baseAmount denomination
    /// @param quoteToken Address of an ERC20 token contract used as the quoteAmount denomination
    /// @return quoteAmount Amount of quoteToken received for baseAmount of baseToken
    function getQuoteAtTick(
        int24 tick,
        uint128 baseAmount,
        address baseToken,
        address quoteToken
    ) internal pure returns (uint256 quoteAmount) {
        uint160 sqrtRatioX96 = TickMath.getSqrtRatioAtTick(tick);

        // Calculate quoteAmount with better precision if it doesn't overflow when multiplied by itself
        if (sqrtRatioX96 <= type(uint128).max) {
            uint256 ratioX192 = uint256(sqrtRatioX96) * sqrtRatioX96;
            quoteAmount = baseToken < quoteToken
                ? FullMath.mulDiv(ratioX192, baseAmount, 1 << 192)
                : FullMath.mulDiv(1 << 192, baseAmount, ratioX192);
        } else {
            uint256 ratioX128 = FullMath.mulDiv(sqrtRatioX96, sqrtRatioX96, 1 << 64);
            quoteAmount = baseToken < quoteToken
                ? FullMath.mulDiv(ratioX128, baseAmount, 1 << 128)
                : FullMath.mulDiv(1 << 128, baseAmount, ratioX128);
        }
    }

    /// @notice Fetches metadata of last available record (most recent) in oracle
    /// @param oracleAddress The address of oracle
    /// @return index The index of last available record (most recent) in oracle
    /// @return timestamp The timestamp of last available record (most recent) in oracle, truncated to uint32
    function lastTimepointMetadata(address oracleAddress) internal view returns (uint16 index, uint32 timestamp) {
        index = latestIndex(oracleAddress);
        timestamp = IVolatilityOracle(oracleAddress).lastTimepointTimestamp();
    }

    /// @notice Fetches metadata of oldest available record in oracle
    /// @param oracleAddress The address of oracle
    /// @return index The index of oldest available record in oracle
    /// @return timestamp The timestamp of oldest available record in oracle, truncated to uint32
    function oldestTimepointMetadata(address oracleAddress) internal view returns (uint16 index, uint32 timestamp) {
        uint16 lastIndex = latestIndex(oracleAddress);
        bool initialized;
        unchecked {
            // overflow is desired
            index = lastIndex + 1;
            (initialized, timestamp) = timepointMetadata(oracleAddress, index);
        }
        if (initialized) return (index, timestamp);

        (, timestamp) = timepointMetadata(oracleAddress, 0);
        return (0, timestamp);
    }

    /// @notice Gets information about whether the oracle has been initialized
    function isInitialized(address oracleAddress) internal view returns (bool result) {
        (result, ) = timepointMetadata(oracleAddress, 0);
        return result;
    }

    /// @notice Fetches the index of last available record (most recent) in oracle
    function latestIndex(address oracle) internal view returns (uint16) {
        return (IVolatilityOracle(oracle).timepointIndex());
    }

    /// @notice Fetches the metadata of record in oracle
    /// @param oracleAddress The address of oracle
    /// @param index The index of record in oracle
    /// @return initialized Whether or not the timepoint is initialized
    /// @return timestamp The timestamp of timepoint
    function timepointMetadata(
        address oracleAddress,
        uint16 index
    ) internal view returns (bool initialized, uint32 timestamp) {
        (initialized, timestamp, , , , , ) = IVolatilityOracle(oracleAddress).timepoints(index);
    }

    /// @notice Checks if the oracle is currently connected to the pool
    /// @param oracleAddress The address of oracle
    /// @param oracleAddress The address of the pool
    /// @return connected Whether or not the oracle is connected
    function isOracleConnectedToPool(
        address oracleAddress,
        address poolAddress
    ) internal view returns (bool connected) {
        IAlgebraPool pool = IAlgebraPool(poolAddress);
        if (oracleAddress == pool.plugin()) {
            (, , , uint8 pluginConfig, , ) = pool.globalState();
            connected = Plugins.hasFlag(pluginConfig, Plugins.BEFORE_SWAP_FLAG);
        }
    }
}

// ============================================================
// FILE: contracts/lib/UV3Math.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.4;

import { TickMath } from "@cryptoalgebra/integral-core/contracts/libraries/TickMath.sol";
import { LiquidityAmounts } from "@cryptoalgebra/integral-periphery/contracts/libraries/LiquidityAmounts.sol";
import { IAlgebraPool } from "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { OracleLibrary } from "./OracleLibrary.sol";
import { IICHIVaultFactory } from "../../interfaces/IICHIVaultFactory.sol";

library UV3Math {
    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    /*******************
     * Tick Math
     *******************/

    function getSqrtRatioAtTick(int24 currentTick) public pure returns (uint160 sqrtPriceX96) {
        sqrtPriceX96 = TickMath.getSqrtRatioAtTick(currentTick);
    }

    /*******************
     * LiquidityAmounts
     *******************/

    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) public pure returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            liquidity
        );
    }

    function getLiquidityForAmounts(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0,
        uint256 amount1
    ) public pure returns (uint128 liquidity) {
        liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            amount0,
            amount1
        );
    }

    /*******************
     * OracleLibrary
     *******************/

    function consult(address _basePlugin, uint32 _twapPeriod) public view returns (int24 timeWeightedAverageTick) {
        timeWeightedAverageTick = OracleLibrary.consult(_basePlugin, _twapPeriod);
    }

    function getQuoteAtTick(
        int24 tick,
        uint128 baseAmount,
        address baseToken,
        address quoteToken
    ) public pure returns (uint256 quoteAmount) {
        quoteAmount = OracleLibrary.getQuoteAtTick(tick, baseAmount, baseToken, quoteToken);
    }

    function lastTimepointMetadata(address oracleAddress) public view returns (uint16 index, uint32 timestamp) {
        (index, timestamp) = OracleLibrary.lastTimepointMetadata(oracleAddress);
    }

    function isOracleConnectedToPool(address oracleAddress, address poolAddress) public view returns (bool connected) {
        if (oracleAddress == address(0))
            return false;
        connected = OracleLibrary.isOracleConnectedToPool(oracleAddress, poolAddress);
    }

    /*******************
     * SafeUnit128
     *******************/

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param y The uint256 to be downcasted
    /// @return z The downcasted integer, now type uint128
    function toUint128(uint256 y) public pure returns (uint128 z) {
        require((z = uint128(y)) == y, "SafeUint128: overflow");
    }

    /******************************
     * ICHIVault specific functions
     ******************************/

    /**
     @dev Computes a unique vault's symbol for vaults created through Ramses factory.
     @param value index of the vault to be created
     */
    function computeIVsymbol(uint256 value, address pool, bool allowToken0) public view returns (string memory) {
        IAlgebraPool algebraPool = IAlgebraPool(pool);
        string memory token0Symbol = ERC20(algebraPool.token0()).symbol();
        string memory token1Symbol = ERC20(algebraPool.token1()).symbol();
        // Format: IV-[ammName]-index-deposit-quote
        return string(abi.encodePacked(
            "IV-",
            IICHIVaultFactory(msg.sender).ammName(),
            "-",
            Strings.toString(value),
            "-",
            allowToken0 ? token0Symbol : token1Symbol,
            "-",
            allowToken0 ? token1Symbol : token0Symbol
        ));
    }
}

// ============================================================
// FILE: interfaces/IICHIVault.sol
// ============================================================

// SPDX-License-Identifier: Unlicense

pragma solidity >=0.8.4;

interface IICHIVault {
    function ichiVaultFactory() external view returns (address);

    function pool() external view returns (address);

    function token0() external view returns (address);

    function allowToken0() external view returns (bool);

    function token1() external view returns (address);

    function allowToken1() external view returns (bool);

    function fee() external view returns (uint24);

    function tickSpacing() external view returns (int24);

    function ammFeeRecipient() external view returns(address);

    function affiliate() external view returns (address);

    function baseLower() external view returns (int24);

    function baseUpper() external view returns (int24);

    function limitLower() external view returns (int24);

    function limitUpper() external view returns (int24);

    /// @notice NFT ID of the base position. If 0, the base position is not initialized.
    function basePositionId() external view returns (uint256);

    /// @notice NFT ID of the limit position. If 0, the limit position is not initialized.
    function limitPositionId() external view returns (uint256);

    function deposit0Max() external view returns (uint256);

    function deposit1Max() external view returns (uint256);

    function hysteresis() external view returns (uint256);

    function twapPeriod() external view returns (uint32);

    function auxTwapPeriod() external view returns (uint32);

    function getTotalAmounts() external view returns (uint256, uint256);

    function getBasePosition() external view returns (uint128, uint256, uint256);

    function getLimitPosition() external view returns (uint128, uint256, uint256);

    function deposit(uint256, uint256, address) external returns (uint256);

    function withdraw(uint256, address) external returns (uint256, uint256);

    function currentTick() external view returns (int24);

    function resetAllowances() external;

    function rebalance(
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        int256 swapQuantity
    ) external;

    function collectFees() external returns (uint256 fees0, uint256 fees1);

    function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external;

    function setHysteresis(uint256 _hysteresis) external;

    function setAmmFeeRecipient(address _ammFeeRecipient) external;

    function setAffiliate(address _affiliate) external;

    function setTwapPeriod(uint32 newTwapPeriod) external;

    function setAuxTwapPeriod(uint32 newAuxTwapPeriod) external;

    event DeployICHIVault(
        address indexed sender,
        address indexed pool,
        bool allowToken0,
        bool allowToken1,
        address owner,
        uint256 twapPeriod
    );

    event SetTwapPeriod(address sender, uint32 newTwapPeriod);

    event SetAuxTwapPeriod(address sender, uint32 newAuxTwapPeriod);

    event Deposit(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);

    event Withdraw(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);

    event Rebalance(
        int24 tick,
        uint256 totalAmount0,
        uint256 totalAmount1,
        uint256 feeAmount0,
        uint256 feeAmount1,
        uint256 totalSupply
    );

    event CollectFees(address indexed sender, uint256 feeAmount0, uint256 feeAmount1);

    event Hysteresis(address indexed sender, uint256 hysteresis);

    event DepositMax(address indexed sender, uint256 deposit0Max, uint256 deposit1Max);

    event AmmFeeRecipient(address indexed sender, address ammFeeRecipient);

    event Affiliate(address indexed sender, address affiliate);
}

// ============================================================
// FILE: interfaces/IICHIVaultFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.4;

interface IICHIVaultFactory {
    event FeeRecipient(address indexed sender, address feeRecipient);

    event AmmFee(address indexed sender, uint256 ammFee);

    event BaseFee(address indexed sender, uint256 baseFee);

    event BaseFeeSplit(address indexed sender, uint256 baseFeeSplit);

    event DeployICHIVaultFactory(address indexed sender, address algebraFactory);

    event ICHIVaultCreated(
        address indexed sender,
        address ichiVault,
        address tokenA,
        bool allowTokenA,
        address tokenB,
        bool allowTokenB,
        uint256 count
    );

    function getICHIVault(bytes32 vaultKey) external view returns(address);

    function algebraFactory() external view returns (address);

    function nftManager() external view returns (address);

    function ammName() external view returns (string memory);

    function feeRecipient() external view returns (address);

    function ammFee() external view returns (uint256);

    function baseFee() external view returns (uint256);

    function baseFeeSplit() external view returns (uint256);

    function setFeeRecipient(address _feeRecipient) external;

    function setAmmFee(uint256 _ammFee) external;

    function setBaseFee(uint256 _baseFee) external;

    function setBaseFeeSplit(uint256 _baseFeeSplit) external;

    function createICHIVault(
        address tokenA,
        bool allowTokenA,
        address tokenB,
        bool allowTokenB
    ) external returns (address ichiVault);

    function genKey(
        address deployer,
        address token0,
        address token1,
        bool allowToken0,
        bool allowToken1
    ) external pure returns (bytes32 key);
}
