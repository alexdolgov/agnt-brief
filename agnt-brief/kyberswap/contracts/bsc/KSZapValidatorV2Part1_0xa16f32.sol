// ============================================================
// FILE: contracts/common/ZapTypeHash.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

abstract contract ZapTypeHash {
  bytes32 public constant NONE_TYPE = keccak256('None');
  bytes32 public constant UNISWAP_V3_TYPE = keccak256('UniswapV3');
  bytes32 public constant ALGEBRA_V19_TYPE = keccak256('AlgebraV19');
  bytes32 public constant ALGEBRA_V19_DIRFEE_TYPE = keccak256('AlgebraV19DirFee');
  bytes32 public constant SOLIDLY_V3_TYPE = keccak256('SolidlyV3');
  bytes32 public constant ERC20_TYPE = keccak256('ERC20');
  bytes32 public constant PANCAKE_V4_CL_TYPE = keccak256('PancakeSwapV4CL');
  bytes32 public constant UNISWAP_V4_TYPE = keccak256('UniswapV4');
  bytes32 public constant FLUID_VAULT_TYPE = keccak256('FluidVault');
  bytes32 public constant MULTI_ERC20_TYPE = keccak256('MultiERC20');
  bytes32 public constant UNIVERSAL_CL_TYPE = keccak256('UniversalCL');
  bytes32 public constant MAVERICK_TYPE = keccak256('Maverick');
  bytes32 public constant PANCAKE_V4_BIN_TYPE = keccak256('PancakeV4Bin');
}

// ============================================================
// FILE: contracts/interfaces/algebrav19/IAlgebraV19NFT.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;

interface IAlgebraV19NFT {
  function positions(uint256 tokenId)
    external
    view
    returns (
      uint96 nonce,
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

  function mint(MintParams calldata params)
    external
    payable
    returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

  struct IncreaseLiquidityParams {
    uint256 tokenId;
    uint256 amount0Desired;
    uint256 amount1Desired;
    uint256 amount0Min;
    uint256 amount1Min;
    uint256 deadline;
  }

  function increaseLiquidity(IncreaseLiquidityParams calldata params)
    external
    payable
    returns (uint128 liquidity, uint256 amount0, uint256 amount1);

  struct DecreaseLiquidityParams {
    uint256 tokenId;
    uint128 liquidity;
    uint256 amount0Min;
    uint256 amount1Min;
    uint256 deadline;
  }

  function decreaseLiquidity(DecreaseLiquidityParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  struct CollectParams {
    uint256 tokenId;
    address recipient;
    uint128 amount0Max;
    uint128 amount1Max;
  }

  function collect(CollectParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  function sweepToken(address token, uint256 amountMinimum, address recipient) external payable;

  function transferFrom(address from, address to, uint256 tokenId) external;

  function approve(address spender, uint256 tokenId) external;

  function setApprovalForAll(address operator, bool approved) external;

  function WETH9() external view returns (address);

  function ownerOf(uint256 tokenId) external view returns (address);

  function tokenByIndex(uint256 index) external view returns (uint256);
  function totalSupply() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/pancakev4/IBinPoolManager.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta, PoolId, PoolKey} from './Types.sol';

interface IBinPoolManager {
  /// @notice PoolManagerMismatch is thrown when pool manager specified in the pool key does not match current contract
  error PoolManagerMismatch();

  /// @notice Pool binStep cannot be lesser than 1. Otherwise there will be no price jump between bin
  error BinStepTooSmall(uint16 binStep);

  /// @notice Pool binstep cannot be greater than the limit set at maxBinStep
  error BinStepTooLarge(uint16 binStep);

  /// @notice Error thrown when owner set max bin step too small
  error MaxBinStepTooSmall(uint16 maxBinStep);

  /// @notice Error thrown when bin has insufficient shares to accept donation
  error InsufficientBinShareForDonate(uint256 shares);

  /// @notice Error thrown when amount specified is 0 in swap
  error AmountSpecifiedIsZero();

  /// @notice Returns the constant representing the max bin step
  /// @return maxBinStep a value of 100 would represent a 1% price jump between bin (limit can be raised by owner)
  function maxBinStep() external view returns (uint16);

  /// @notice Returns the constant representing the min bin step
  /// @dev 1 would represent a 0.01% price jump between bin
  function MIN_BIN_STEP() external view returns (uint16);

  /// @notice min share in bin before donate is allowed in current bin
  function minBinShareForDonate() external view returns (uint256);

  /// @notice Emitted for swaps between currency0 and currency1
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param amount0 The delta of the currency0 balance of the pool
  /// @param amount1 The delta of the currency1 balance of the pool
  /// @param activeId The activeId of the pool after the swap
  /// @param fee The fee collected upon every swap in the pool (including protocol fee and LP fee), denominated in hundredths of a bip
  /// @param protocolFee Single direction protocol fee from the swap, also denominated in hundredths of a bip
  event Swap(
    PoolId indexed id,
    address indexed sender,
    int128 amount0,
    int128 amount1,
    uint24 activeId,
    uint24 fee,
    uint16 protocolFee
  );

  /// @notice Emitted when liquidity is added
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param ids List of binId with liquidity added
  /// @param salt The salt to distinguish different mint from the same owner
  /// @param amounts List of amount added to each bin
  /// @param compositionFeeAmount fee occurred
  /// @param feeAmountToProtocol Protocol fee from the swap: token0 and token1 amount
  event Mint(
    PoolId indexed id,
    address indexed sender,
    uint256[] ids,
    bytes32 salt,
    bytes32[] amounts,
    bytes32 compositionFeeAmount,
    bytes32 feeAmountToProtocol
  );

  /// @notice Emitted when liquidity is removed
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param ids List of binId with liquidity removed
  /// @param salt The salt to specify the position to burn if multiple positions are available
  /// @param amounts List of amount removed from each bin
  event Burn(
    PoolId indexed id, address indexed sender, uint256[] ids, bytes32 salt, bytes32[] amounts
  );

  /// @notice Emitted when donate happen
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param amount0 The delta of the currency0 balance of the pool
  /// @param amount1 The delta of the currency1 balance of the pool
  /// @param binId The donated bin id
  event Donate(
    PoolId indexed id, address indexed sender, int128 amount0, int128 amount1, uint24 binId
  );

  /// @notice Emitted when min share for donate is updated
  event SetMinBinSharesForDonate(uint256 minLiquidity);

  /// @notice Emitted when bin step is updated
  event SetMaxBinStep(uint16 maxBinStep);

  struct MintParams {
    bytes32[] liquidityConfigs;
    /// @dev amountIn intended
    bytes32 amountIn;
    /// the salt to distinguish different mint from the same owner
    bytes32 salt;
  }

  struct BurnParams {
    /// @notice id of the bin from which to withdraw
    uint256[] ids;
    /// @notice amount of share to burn for each bin
    uint256[] amountsToBurn;
    /// the salt to specify the position to burn if multiple positions are available
    bytes32 salt;
  }

  /// @notice Get the current value in slot0 of the given pool
  function getSlot0(PoolId id)
    external
    view
    returns (uint24 activeId, uint24 protocolFee, uint24 lpFee);

  /// @notice Returns the reserves of a bin
  /// @param id The id of the bin
  /// @return binReserveX The reserve of token X in the bin
  /// @return binReserveY The reserve of token Y in the bin
  /// @return binLiquidity The total liquidity in the bin
  /// @return totalShares The total shares minted in the bin
  function getBin(PoolId id, uint24 binId)
    external
    view
    returns (uint128 binReserveX, uint128 binReserveY, uint256 binLiquidity, uint256 totalShares);

  /// @notice Peform a swap to a pool
  /// @param key The pool key
  /// @param swapForY If true, swap token X for Y, if false, swap token Y for X
  /// @param amountSpecified If negative, imply exactInput, if positive, imply exactOutput.
  function swap(PoolKey memory key, bool swapForY, int128 amountSpecified, bytes calldata hookData)
    external
    returns (BalanceDelta delta);
}

// ============================================================
// FILE: contracts/interfaces/pancakev4/IBinPositionManager.sol
// ============================================================

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

// ============================================================
// FILE: contracts/interfaces/pancakev4/ICLPoolManager.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta, PoolId, PoolKey, TickInfo} from './Types.sol';

interface ICLPoolManager {
  /// @notice Thrown when trying to interact with a non-initialized pool
  error PoolNotInitialized();

  /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
  error CurrenciesInitializedOutOfOrder(address currency0, address currency1);

  /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
  /// or on a pool is not a dynamic fee pool.
  error UnauthorizedDynamicLPFeeUpdate();

  /// @notice Emitted when lp fee is updated
  /// @dev The event is emitted even if the updated fee value is the same as previous one
  event DynamicLPFeeUpdated(PoolId indexed id, uint24 dynamicLPFee);

  /// @notice Updates lp fee for a dyanmic fee pool
  /// @dev Some of the use case could be:
  ///   1) when hook#beforeSwap() is called and hook call this function to update the lp fee
  ///   2) For BinPool only, when hook#beforeMint() is called and hook call this function to update the lp fee
  ///   3) other use case where the hook might want to on an ad-hoc basis increase/reduce lp fee
  function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;

  /// @notice Return PoolKey for a given PoolId
  function poolIdToPoolKey(PoolId id) external view returns (PoolKey memory key);

  /// @notice PoolManagerMismatch is thrown when pool manager specified in the pool key does not match current contract
  error PoolManagerMismatch();
  /// @notice Pools are limited to type(int16).max tickSpacing in #initialize, to prevent overflow
  error TickSpacingTooLarge(int24 tickSpacing);
  /// @notice Pools must have a positive non-zero tickSpacing passed to #initialize
  error TickSpacingTooSmall(int24 tickSpacing);
  /// @notice Error thrown when add liquidity is called when paused()
  error PoolPaused();
  /// @notice Thrown when trying to swap amount of 0
  error SwapAmountCannotBeZero();

  /// @notice Emitted when a liquidity position is modified
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param tickLower The lower tick of the position
  /// @param tickUpper The upper tick of the position
  /// @param liquidityDelta The amount of liquidity that was added or removed
  /// @param salt The value used to create a unique liquidity position
  event ModifyLiquidity(
    PoolId indexed id,
    address indexed sender,
    int24 tickLower,
    int24 tickUpper,
    int256 liquidityDelta,
    bytes32 salt
  );

  /// @notice Emitted for swaps between currency0 and currency1
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param amount0 The delta of the currency0 balance of the pool
  /// @param amount1 The delta of the currency1 balance of the pool
  /// @param sqrtPriceX96 The sqrt(price) of the pool after the swap, as a Q64.96
  /// @param liquidity The liquidity of the pool after the swap
  /// @param tick The log base 1.0001 of the price of the pool after the swap
  /// @param fee The fee collected upon every swap in the pool (including protocol fee and LP fee), denominated in hundredths of a bip
  /// @param protocolFee Single direction protocol fee from the swap, also denominated in hundredths of a bip
  event Swap(
    PoolId indexed id,
    address indexed sender,
    int128 amount0,
    int128 amount1,
    uint160 sqrtPriceX96,
    uint128 liquidity,
    int24 tick,
    uint24 fee,
    uint16 protocolFee
  );

  /// @notice Emitted when donate happen
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param amount0 The delta of the currency0 balance of the pool
  /// @param amount1 The delta of the currency1 balance of the pool
  /// @param tick The donated tick
  event Donate(
    PoolId indexed id, address indexed sender, uint256 amount0, uint256 amount1, int24 tick
  );

  /// @notice Get the current value in slot0 of the given pool
  function getSlot0(PoolId id)
    external
    view
    returns (uint160 sqrtPriceX96, int24 tick, uint24 protocolFee, uint24 lpFee);

  /// @notice Get the current value of liquidity of the given pool
  function getLiquidity(PoolId id) external view returns (uint128 liquidity);

  /// @notice Get the current value of liquidity for the specified pool and position
  function getLiquidity(PoolId id, address owner, int24 tickLower, int24 tickUpper, bytes32 salt)
    external
    view
    returns (uint128 liquidity);

  /// @notice Get the tick info about a specific tick in the pool
  function getPoolTickInfo(PoolId id, int24 tick) external view returns (TickInfo memory tickInfo);

  /// @notice Get the tick bitmap info about a specific range (a word range) in the pool
  function getPoolBitmapInfo(PoolId id, int16 word) external view returns (uint256 tickBitmap);

  /// @notice Get the fee growth global for the given pool
  function getFeeGrowthGlobals(PoolId id)
    external
    view
    returns (uint256 feeGrowthGlobal0x128, uint256 feeGrowthGlobal1x128);

  /// @notice Initialize the state for a given pool ID
  function initialize(PoolKey memory key, uint160 sqrtPriceX96) external returns (int24 tick);

  struct ModifyLiquidityParams {
    // the lower and upper tick of the position
    int24 tickLower;
    int24 tickUpper;
    // how to modify the liquidity
    int256 liquidityDelta;
    // a value to set if you want unique liquidity positions at the same range
    bytes32 salt;
  }

  /// @notice Modify the position for the given pool
  /// @return delta The total balance delta of the caller of modifyLiquidity.
  /// @return feeDelta The balance delta of the fees generated in the liquidity range.
  function modifyLiquidity(
    PoolKey memory key,
    ModifyLiquidityParams memory params,
    bytes calldata hookData
  ) external returns (BalanceDelta delta, BalanceDelta feeDelta);

  struct SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
  }

  /// @notice Swap against the given pool
  /// @param key The pool to swap in
  /// @param params The parameters for swapping
  /// @param hookData Any data to pass to the callback
  /// @return delta The balance delta of the address swapping
  /// @dev Swapping on low liquidity pools may cause unexpected swap amounts when liquidity available is less than amountSpecified.
  /// Additionally note that if interacting with hooks that have the BEFORE_SWAP_RETURNS_DELTA_FLAG or AFTER_SWAP_RETURNS_DELTA_FLAG
  /// the hook may alter the swap input/output. Integrators should perform checks on the returned swapDelta.
  function swap(PoolKey memory key, SwapParams memory params, bytes calldata hookData)
    external
    returns (BalanceDelta delta);
}

// ============================================================
// FILE: contracts/interfaces/pancakev4/ICLPositionManager.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ICLPoolManager} from './ICLPoolManager.sol';

import {IVault} from './IVault.sol';
import {BalanceDelta, CLPositionInfo, PoolKey} from './Types.sol';
import {IAllowanceTransfer} from 'contracts/interfaces/permit2/IAllowanceTransfer.sol';

interface ICLPositionManager {
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

  /// @notice Thrown when the caller is not approved to modify a position
  error NotApproved(address caller);

  /// @notice Emitted when a new liquidity position is minted
  event MintPosition(uint256 indexed tokenId);

  /// @notice Emitted when liquidity is modified
  /// @param tokenId the tokenId of the position that was modified
  /// @param liquidityChange the change in liquidity of the position
  /// @param feesAccrued the fees collected from the liquidity change
  event ModifyLiquidity(uint256 indexed tokenId, int256 liquidityChange, BalanceDelta feesAccrued);

  /// @notice Get the clPoolManager
  function clPoolManager() external view returns (ICLPoolManager);

  /// @notice Initialize a v4 PCS cl pool
  /// @param key the PoolKey of the pool to initialize
  /// @param sqrtPriceX96 the initial sqrtPriceX96 of the pool
  function initializePool(PoolKey calldata key, uint160 sqrtPriceX96)
    external
    payable
    returns (int24);

  /// @notice Used to get the ID that will be used for the next minted liquidity position
  /// @return uint256 The next token ID
  function nextTokenId() external view returns (uint256);

  /// @param tokenId the ERC721 tokenId
  /// @return liquidity the position's liquidity, as a liquidityAmount
  /// @dev this value can be processed as an amount0 and amount1 by using the LiquidityAmounts library
  function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity);

  /// @notice Get the detailed information for a specified position
  /// @param tokenId the ERC721 tokenId
  /// @return poolKey the pool key of the position
  /// @return tickLower the lower tick of the position
  /// @return tickUpper the upper tick of the position
  /// @return liquidity the liquidity of the position
  /// @return feeGrowthInside0LastX128 the fee growth count of token0 since last time updated
  /// @return feeGrowthInside1LastX128 the fee growth count of token1 since last time updated
  /// @return _subscriber the address of the subscriber, if not set, it returns address(0)
  function positions(uint256 tokenId)
    external
    view
    returns (
      PoolKey memory poolKey,
      int24 tickLower,
      int24 tickUpper,
      uint128 liquidity,
      uint256 feeGrowthInside0LastX128,
      uint256 feeGrowthInside1LastX128,
      address _subscriber
    );

  /// @param tokenId the ERC721 tokenId
  /// @return poolKey the pool key of the position
  /// @return CLPositionInfo a uint256 packed value holding information about the position including the range (tickLower, tickUpper)
  function getPoolAndPositionInfo(uint256 tokenId)
    external
    view
    returns (PoolKey memory, CLPositionInfo);

  function permit2() external view returns (IAllowanceTransfer);

  function approve(address to, uint256 tokenId) external;

  function ownerOf(uint256 _tokenId) external view returns (address);

  function safeTransferFrom(address _from, address _to, uint256 _tokenId) external payable;

  function transferFrom(address _from, address _to, uint256 _tokenId) external payable;

  function vault() external view returns (IVault);

  function poolKeys(bytes25 poolId) external view returns (PoolKey memory);
}

// ============================================================
// FILE: contracts/interfaces/pancakev4/IVault.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta} from './Types.sol';

interface IVault {
  event AppRegistered(address indexed app);

  /// @notice Thrown when a app is not registered
  error AppUnregistered();

  /// @notice Thrown when a currency is not netted out after a lock
  error CurrencyNotSettled();

  /// @notice Thrown when there is already a locker
  /// @param locker The address of the current locker
  error LockerAlreadySet(address locker);

  /// @notice Thrown when passing in msg.value for non-native currency
  error SettleNonNativeCurrencyWithValue();

  /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
  error MustClearExactPositiveDelta();

  /// @notice Thrown when there is no locker
  error NoLocker();

  /// @notice Thrown when lock is held by someone
  error LockHeld();

  function isAppRegistered(address app) external returns (bool);

  /// @notice Returns the reserves for a a given pool type and currency
  function reservesOfApp(address app, address currency) external view returns (uint256);

  /// @notice register an app so that it can perform accounting base on vault
  function registerApp(address app) external;

  /// @notice Returns the locker who is locking the vault
  function getLocker() external view returns (address locker);

  /// @notice Returns the reserve and its amount that is currently being stored in trnasient storage
  function getVaultReserve() external view returns (address, uint256);

  /// @notice Returns lock data
  function getUnsettledDeltasCount() external view returns (uint256 count);

  /// @notice Get the current delta for a locker in the given currency
  /// @param currency The currency for which to lookup the delta
  function currencyDelta(address settler, address currency) external view returns (int256);

  /// @notice All operations go through this function
  /// @param data Any data to pass to the callback, via `ILockCallback(msg.sender).lockCallback(data)`
  /// @return The data returned by the call to `ILockCallback(msg.sender).lockCallback(data)`
  function lock(bytes calldata data) external returns (bytes memory);

  /// @notice Called by registered app to account for a change in the pool balance,
  /// convenient for AMM pool manager, typically after modifyLiquidity, swap, donate
  /// @param currency0 The PoolKey currency0 to update
  /// @param currency1 The PoolKey currency1 to update
  /// @param delta The change in the pool's balance
  /// @param settler The address whose delta will be updated
  function accountAppBalanceDelta(
    address currency0,
    address currency1,
    BalanceDelta delta,
    address settler
  ) external;

  /// @notice This works as a general accounting mechanism for non-dex app
  /// @param currency The currency to update
  /// @param delta The change in the balance
  /// @param settler The address whose delta will be updated
  function accountAppBalanceDelta(address currency, int128 delta, address settler) external;

  /// @notice Called by the user to net out some value owed to the user
  /// @dev Can also be used as a mechanism for _free_ flash loans
  function take(address currency, address to, uint256 amount) external;

  /// @notice Writes the current ERC20 balance of the specified currency to transient storage
  /// This is used to checkpoint balances for the manager and derive deltas for the caller.
  /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
  /// for native tokens because the amount to settle is determined by the sent value.
  /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
  /// native funds, this function can be called with the native currency to then be able to settle the native currency
  function sync(address token0) external;

  /// @notice Called by the user to pay what is owed
  function settle() external payable returns (uint256 paid);

  /// @notice Called by the user to pay on behalf of another address
  /// @param recipient The address to credit for the payment
  /// @return paid The amount of currency settled
  function settleFor(address recipient) external payable returns (uint256 paid);

  /// @notice WARNING - Any currency that is cleared, will be non-retreivable, and locked in the contract permanently.
  /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
  /// @dev This could be used to clear a balance that is considered dust.
  /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
  function clear(address currency, uint256 amount) external;

  /// @notice Called by app to collect any fee related
  /// @dev no restriction on caller, underflow happen if caller collect more than the reserve
  function collectFee(address currency, uint256 amount, address recipient) external;

  /// @notice Called by the user to store surplus tokens in the vault
  function mint(address to, address currency, uint256 amount) external;

  /// @notice Called by the user to use surplus tokens for payment settlement
  function burn(address from, address currency, uint256 amount) external;
}

// ============================================================
// FILE: contracts/interfaces/pancakev4/Types.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

type PoolId is bytes32;

type BalanceDelta is int256;

type CLPositionInfo is uint256;

// info stored for each initialized individual tick
struct TickInfo {
  // the total position liquidity that references this tick
  uint128 liquidityGross;
  // amount of net liquidity added (subtracted) when tick is crossed from left to right (right to left),
  int128 liquidityNet;
  // fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
  // only has relative meaning, not absolute — the value depends on when the tick is initialized
  uint256 feeGrowthOutside0X128;
  uint256 feeGrowthOutside1X128;
}

/// @notice Returns the key for identifying a pool
struct PoolKey {
  /// @notice The lower currency of the pool, sorted numerically
  address currency0;
  /// @notice The higher currency of the pool, sorted numerically
  address currency1;
  /// @notice The hooks of the pool, won't have a general interface because hooks interface vary on pool type
  address hooks;
  /// @notice The pool manager of the pool
  address poolManager;
  /// @notice The pool lp fee, capped at 1_000_000. If the pool has a dynamic fee then it must be exactly equal to 0x800000
  uint24 fee;
  /// @notice Hooks callback and pool specific parameters, i.e. tickSpacing for CL, binStep for bin
  bytes32 parameters;
}

/// @notice Library to define different pool actions.
/// @dev These are suggested common commands, however additional commands should be defined as required
library Actions {
  // cl-pool actions
  // liquidity actions
  uint256 constant CL_INCREASE_LIQUIDITY = 0x00;
  uint256 constant CL_DECREASE_LIQUIDITY = 0x01;
  uint256 constant CL_MINT_POSITION = 0x02;
  uint256 constant CL_BURN_POSITION = 0x03;
  uint256 constant CL_INCREASE_LIQUIDITY_FROM_DELTAS = 0x04;
  uint256 constant CL_MINT_POSITION_FROM_DELTAS = 0x05;

  // swapping
  uint256 constant CL_SWAP_EXACT_IN_SINGLE = 0x06;
  uint256 constant CL_SWAP_EXACT_IN = 0x07;
  uint256 constant CL_SWAP_EXACT_OUT_SINGLE = 0x08;
  uint256 constant CL_SWAP_EXACT_OUT = 0x09;

  // donate
  /// @dev this is not supported in the position manager or router
  uint256 constant CL_DONATE = 0x0a;

  // closing deltas on the pool manager
  // settling
  uint256 constant SETTLE = 0x0b;
  uint256 constant SETTLE_ALL = 0x0c;
  uint256 constant SETTLE_PAIR = 0x0d;
  // taking
  uint256 constant TAKE = 0x0e;
  uint256 constant TAKE_ALL = 0x0f;
  uint256 constant TAKE_PORTION = 0x10;
  uint256 constant TAKE_PAIR = 0x11;

  uint256 constant CLOSE_CURRENCY = 0x12;
  uint256 constant CLEAR_OR_TAKE = 0x13;
  uint256 constant SWEEP = 0x14;
  uint256 constant WRAP = 0x15;
  uint256 constant UNWRAP = 0x16;

  // minting/burning 6909s to close deltas
  /// @dev this is not supported in the position manager or router
  uint256 constant MINT_6909 = 0x17;
  uint256 constant BURN_6909 = 0x18;

  // bin-pool actions
  // liquidity actions
  uint256 constant BIN_ADD_LIQUIDITY = 0x19;
  uint256 constant BIN_REMOVE_LIQUIDITY = 0x1a;
  uint256 constant BIN_ADD_LIQUIDITY_FROM_DELTAS = 0x1b;
  // swapping
  uint256 constant BIN_SWAP_EXACT_IN_SINGLE = 0x1c;
  uint256 constant BIN_SWAP_EXACT_IN = 0x1d;
  uint256 constant BIN_SWAP_EXACT_OUT_SINGLE = 0x1e;
  uint256 constant BIN_SWAP_EXACT_OUT = 0x1f;
  // donate
  uint256 constant BIN_DONATE = 0x20;
}

// ============================================================
// FILE: contracts/interfaces/permit2/IAllowanceTransfer.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title AllowanceTransfer
/// @notice Handles ERC20 token permissions through signature based allowance setting and ERC20 token transfers by checking allowed amounts
/// @dev Requires user's token approval on the Permit2 contract
interface IAllowanceTransfer {
  /// @notice Thrown when an allowance on a token has expired.
  /// @param deadline The timestamp at which the allowed amount is no longer valid
  error AllowanceExpired(uint256 deadline);

  /// @notice Thrown when an allowance on a token has been depleted.
  /// @param amount The maximum amount allowed
  error InsufficientAllowance(uint256 amount);

  /// @notice Thrown when too many nonces are invalidated.
  error ExcessiveInvalidation();

  /// @notice Emits an event when the owner successfully invalidates an ordered nonce.
  event NonceInvalidation(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint48 newNonce,
    uint48 oldNonce
  );

  /// @notice Emits an event when the owner successfully sets permissions on a token for the spender.
  event Approval(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint160 amount,
    uint48 expiration
  );

  /// @notice Emits an event when the owner successfully sets permissions using a permit signature on a token for the spender.
  event Permit(
    address indexed owner,
    address indexed token,
    address indexed spender,
    uint160 amount,
    uint48 expiration,
    uint48 nonce
  );

  /// @notice Emits an event when the owner sets the allowance back to 0 with the lockdown function.
  event Lockdown(address indexed owner, address token, address spender);

  /// @notice The permit data for a token
  struct PermitDetails {
    // ERC20 token address
    address token;
    // the maximum amount allowed to spend
    uint160 amount;
    // timestamp at which a spender's token allowances become invalid
    uint48 expiration;
    // an incrementing value indexed per owner,token,and spender for each signature
    uint48 nonce;
  }

  /// @notice The permit message signed for a single token allowance
  struct PermitSingle {
    // the permit data for a single token alownce
    PermitDetails details;
    // address permissioned on the allowed tokens
    address spender;
    // deadline on the permit signature
    uint256 sigDeadline;
  }

  /// @notice The permit message signed for multiple token allowances
  struct PermitBatch {
    // the permit data for multiple token allowances
    PermitDetails[] details;
    // address permissioned on the allowed tokens
    address spender;
    // deadline on the permit signature
    uint256 sigDeadline;
  }

  /// @notice The saved permissions
  /// @dev This info is saved per owner, per token, per spender and all signed over in the permit message
  /// @dev Setting amount to type(uint160).max sets an unlimited approval
  struct PackedAllowance {
    // amount allowed
    uint160 amount;
    // permission expiry
    uint48 expiration;
    // an incrementing value indexed per owner,token,and spender for each signature
    uint48 nonce;
  }

  /// @notice A token spender pair.
  struct TokenSpenderPair {
    // the token the spender is approved
    address token;
    // the spender address
    address spender;
  }

  /// @notice Details for a token transfer.
  struct AllowanceTransferDetails {
    // the owner of the token
    address from;
    // the recipient of the token
    address to;
    // the amount of the token
    uint160 amount;
    // the token to be transferred
    address token;
  }

  /// @notice A mapping from owner address to token address to spender address to PackedAllowance struct, which contains details and conditions of the approval.
  /// @notice The mapping is indexed in the above order see: allowance[ownerAddress][tokenAddress][spenderAddress]
  /// @dev The packed slot holds the allowed amount, expiration at which the allowed amount is no longer valid, and current nonce thats updated on any signature based approvals.
  function allowance(address user, address token, address spender)
    external
    view
    returns (uint160 amount, uint48 expiration, uint48 nonce);

  /// @notice Approves the spender to use up to amount of the specified token up until the expiration
  /// @param token The token to approve
  /// @param spender The spender address to approve
  /// @param amount The approved amount of the token
  /// @param expiration The timestamp at which the approval is no longer valid
  /// @dev The packed allowance also holds a nonce, which will stay unchanged in approve
  /// @dev Setting amount to type(uint160).max sets an unlimited approval
  function approve(address token, address spender, uint160 amount, uint48 expiration) external;

  /// @notice Permit a spender to a given amount of the owners token via the owner's EIP-712 signature
  /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
  /// @param owner The owner of the tokens being approved
  /// @param permitSingle Data signed over by the owner specifying the terms of approval
  /// @param signature The owner's signature over the permit data
  function permit(address owner, PermitSingle memory permitSingle, bytes calldata signature)
    external;

  /// @notice Permit a spender to the signed amounts of the owners tokens via the owner's EIP-712 signature
  /// @dev May fail if the owner's nonce was invalidated in-flight by invalidateNonce
  /// @param owner The owner of the tokens being approved
  /// @param permitBatch Data signed over by the owner specifying the terms of approval
  /// @param signature The owner's signature over the permit data
  function permit(address owner, PermitBatch memory permitBatch, bytes calldata signature) external;

  /// @notice Transfer approved tokens from one address to another
  /// @param from The address to transfer from
  /// @param to The address of the recipient
  /// @param amount The amount of the token to transfer
  /// @param token The token address to transfer
  /// @dev Requires the from address to have approved at least the desired amount
  /// of tokens to msg.sender.
  function transferFrom(address from, address to, uint160 amount, address token) external;

  /// @notice Transfer approved tokens in a batch
  /// @param transferDetails Array of owners, recipients, amounts, and tokens for the transfers
  /// @dev Requires the from addresses to have approved at least the desired amount
  /// of tokens to msg.sender.
  function transferFrom(AllowanceTransferDetails[] calldata transferDetails) external;

  /// @notice Enables performing a "lockdown" of the sender's Permit2 identity
  /// by batch revoking approvals
  /// @param approvals Array of approvals to revoke.
  function lockdown(TokenSpenderPair[] calldata approvals) external;

  /// @notice Invalidate nonces for a given (token, spender) pair
  /// @param token The token to invalidate nonces for
  /// @param spender The spender to invalidate nonces for
  /// @param newNonce The new nonce to set. Invalidates all nonces less than it.
  /// @dev Can't invalidate more than 2**16 nonces per transaction.
  function invalidateNonces(address token, address spender, uint48 newNonce) external;
}

// ============================================================
// FILE: contracts/interfaces/solidlyv3/ISolidlyV3Pool.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

interface ISolidlyV3Pool {
  /// @notice The first of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token0() external view returns (address);

  /// @notice The second of the two tokens of the pool, sorted by address
  /// @return The token contract address
  function token1() external view returns (address);

  /// @notice The pool tick spacing
  /// @dev Ticks can only be used at multiples of this value, minimum of 1 and always positive
  /// e.g.: a tickSpacing of 3 means ticks can be initialized every 3rd tick, i.e., ..., -6, -3, 0, 3, 6, ...
  /// This value is an int24 to avoid casting even though it is always positive.
  /// @return The tick spacing
  function tickSpacing() external view returns (int24);

  /// @notice The 0th storage slot in the pool stores many values, and is exposed as a single method to save gas
  /// when accessed externally.
  /// @return sqrtPriceX96 The current price of the pool as a sqrt(token1/token0) Q64.96 value
  /// tick The current tick of the pool, i.e. according to the last tick transition that was run.
  /// This value may not always be equal to SqrtTickMath.getTickAtSqrtRatio(sqrtPriceX96) if the price is on a tick
  /// boundary.
  /// fee The pool's current fee in hundredths of a bip, i.e. 1e-6
  /// unlocked Whether the pool is currently locked to reentrancy
  function slot0()
    external
    view
    returns (uint160 sqrtPriceX96, int24 tick, uint24 fee, bool unlocked);

  /// @notice The currently in range liquidity available to the pool
  /// @dev This value has no relationship to the total liquidity across all ticks
  function liquidity() external view returns (uint128);

  /// @notice Look up information about a specific tick in the pool
  /// @param tick The tick to look up
  /// @return liquidityGross the total amount of position liquidity that uses the pool either as tick lower or
  /// tick upper,
  /// liquidityNet how much liquidity changes when the pool price crosses the tick,
  /// initialized Set to true if the tick is initialized, i.e. liquidityGross is greater than 0, otherwise equal to false.
  /// Outside values can only be used if the tick is initialized, i.e. if liquidityGross is greater than 0.
  /// In addition, these values are only relative and must be used only in comparison to previous snapshots for
  /// a specific position.
  function ticks(int24 tick)
    external
    view
    returns (uint128 liquidityGross, int128 liquidityNet, bool initialized);

  /// @notice Returns 256 packed tick initialized boolean values. See TickBitmap for more information
  function tickBitmap(int16 wordPosition) external view returns (uint256);

  /// @notice Returns the information about a position by the position's key
  /// @param key The position's key is a hash of a preimage composed by the owner, tickLower and tickUpper
  /// @return _liquidity The amount of liquidity in the position,
  /// Returns tokensOwed0 the computed amount of token0 owed to the position as of the last mint/burn/poke,
  /// Returns tokensOwed1 the computed amount of token1 owed to the position as of the last mint/burn/poke
  function positions(bytes32 key)
    external
    view
    returns (uint128 _liquidity, uint128 tokensOwed0, uint128 tokensOwed1);

  /// @notice Adds liquidity for the given recipient/tickLower/tickUpper position
  /// Uses callback for payments and includes additional slippage/deadline protection
  /// @dev The caller of this method receives a callback in the form of ISolidlyV3MintCallback#solidlyV3MintCallback
  /// in which they must pay any token0 or token1 owed for the liquidity
  /// @param recipient The address for which the liquidity will be created
  /// @param tickLower The lower tick of the position in which to add liquidity
  /// @param tickUpper The upper tick of the position in which to add liquidity
  /// @param amount The amount of liquidity to mint
  /// @param amount0Min The minimum amount of token0 to spend, which serves as a slippage check
  /// @param amount1Min The minimum amount of token1 to spend, which serves as a slippage check
  /// @param deadline A constraint on the time by which the mint transaction must mined
  /// @param data Any data to be passed through to the callback
  /// @return amount0 The amount of token0 that was paid to mint the given amount of liquidity. Matches the value in the callback
  /// @return amount1 The amount of token1 that was paid to mint the given amount of liquidity. Matches the value in the callback
  function mint(
    address recipient,
    int24 tickLower,
    int24 tickUpper,
    uint128 amount,
    uint256 amount0Min,
    uint256 amount1Min,
    uint256 deadline,
    bytes calldata data
  ) external returns (uint256 amount0, uint256 amount1);

  /// @notice Convenience method to burn liquidity and then collect owed tokens in one go
  /// @param recipient The address which should receive the tokens collected
  /// @param tickLower The lower tick of the position for which to collect tokens
  /// @param tickUpper The upper tick of the position for which to collect tokens
  /// @param amountToBurn How much liquidity to burn
  /// @param amount0ToCollect How much token0 should be withdrawn from the tokens owed
  /// @param amount1ToCollect How much token1 should be withdrawn from the tokens owed
  /// @return amount0FromBurn The amount of token0 accrued to the position from the burn
  /// @return amount1FromBurn The amount of token1 accrued to the position from the burn
  /// @return amount0Collected The amount of token0 collected from the positions
  /// @return amount1Collected The amount of token1 collected from the positions
  function burnAndCollect(
    address recipient,
    int24 tickLower,
    int24 tickUpper,
    uint128 amountToBurn,
    uint128 amount0ToCollect,
    uint128 amount1ToCollect
  )
    external
    returns (
      uint256 amount0FromBurn,
      uint256 amount1FromBurn,
      uint128 amount0Collected,
      uint128 amount1Collected
    );

  /// @notice Burn liquidity from the sender and account tokens owed for the liquidity to the position
  /// @dev Tokens must be collected separately via a call to #collect
  /// @param tickLower The lower tick of the position for which to burn liquidity
  /// @param tickUpper The upper tick of the position for which to burn liquidity
  /// @param amount How much liquidity to burn
  /// @return amount0 The amount of token0 sent to the recipient
  /// @return amount1 The amount of token1 sent to the recipient
  function burn(int24 tickLower, int24 tickUpper, uint128 amount)
    external
    returns (uint256 amount0, uint256 amount1);

  /// @notice Swap token0 for token1, or token1 for token0
  /// Uses a callback for payments; no additional slippage/deadline protection or referrer tracking
  /// @dev The caller of this method receives a callback in the form of ISolidlyV3MintCallback#solidlyV3SwapCallback
  /// in which they must pay any token0 or token1 owed for the swap
  /// @param recipient The address to receive the output of the swap
  /// @param zeroForOne The direction of the swap, true for token0 to token1, false for token1 to token0
  /// @param amountSpecified The amount of the swap, which implicitly configures the swap as exact input (positive), or exact output (negative)
  /// @param sqrtPriceLimitX96 The Q64.96 sqrt price limit. If zero for one, the price cannot be less than this
  /// value after the swap. If one for zero, the price cannot be greater than this value after the swap
  /// @param data Any data to be passed through to the callback
  /// @return amount0 The delta of the balance of token0 of the pool, exact when negative, minimum when positive
  /// @return amount1 The delta of the balance of token1 of the pool, exact when negative, minimum when positive
  function swap(
    address recipient,
    bool zeroForOne,
    int256 amountSpecified,
    uint160 sqrtPriceLimitX96,
    bytes calldata data
  ) external returns (int256 amount0, int256 amount1);
}

// ============================================================
// FILE: contracts/interfaces/uniswapv3/IUniswapv3NFT.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;

interface IUniswapv3NFT {
  function positions(uint256 tokenId)
    external
    view
    returns (
      uint96 nonce,
      address operator,
      address token0,
      address token1,
      uint24 fee,
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
    uint24 fee;
    int24 tickLower;
    int24 tickUpper;
    uint256 amount0Desired;
    uint256 amount1Desired;
    uint256 amount0Min;
    uint256 amount1Min;
    address recipient;
    uint256 deadline;
  }

  function mint(MintParams calldata params)
    external
    payable
    returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);

  struct IncreaseLiquidityParams {
    uint256 tokenId;
    uint256 amount0Desired;
    uint256 amount1Desired;
    uint256 amount0Min;
    uint256 amount1Min;
    uint256 deadline;
  }

  function increaseLiquidity(IncreaseLiquidityParams calldata params)
    external
    payable
    returns (uint128 liquidity, uint256 amount0, uint256 amount1);

  struct DecreaseLiquidityParams {
    uint256 tokenId;
    uint128 liquidity;
    uint256 amount0Min;
    uint256 amount1Min;
    uint256 deadline;
  }

  function decreaseLiquidity(DecreaseLiquidityParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  struct CollectParams {
    uint256 tokenId;
    address recipient;
    uint128 amount0Max;
    uint128 amount1Max;
  }

  function collect(CollectParams calldata params)
    external
    payable
    returns (uint256 amount0, uint256 amount1);

  function sweepToken(address token, uint256 amountMinimum, address recipient) external payable;

  function transferFrom(address from, address to, uint256 tokenId) external;

  function safeTransferFrom(address from, address to, uint256 tokenId) external;

  function approve(address spender, uint256 tokenId) external;

  function setApprovalForAll(address operator, bool approved) external;

  function WETH9() external view returns (address);

  function ownerOf(uint256 tokenId) external view returns (address);

  function tokenByIndex(uint256 index) external view returns (uint256);
  function totalSupply() external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/uniswapv4/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BalanceDelta, PoolId, PoolKey} from './Types.sol';

/// @notice Interface for the PoolManager
interface IPoolManager {
  /// @notice Called by external contracts to access granular pool state
  /// @param slot Key of slot to sload
  /// @return value The value of the slot as bytes32
  function extsload(bytes32 slot) external view returns (bytes32 value);

  /// @notice Called by external contracts to access granular pool state
  /// @param startSlot Key of slot to start sloading from
  /// @param nSlots Number of slots to load into return value
  /// @return values List of loaded values.
  function extsload(bytes32 startSlot, uint256 nSlots)
    external
    view
    returns (bytes32[] memory values);

  /// @notice Called by external contracts to access sparse pool state
  /// @param slots List of slots to SLOAD from.
  /// @return values List of loaded values.
  function extsload(bytes32[] calldata slots) external view returns (bytes32[] memory values);

  /// @notice Called by external contracts to access transient storage of the contract
  /// @param slot Key of slot to tload
  /// @return value The value of the slot as bytes32
  function exttload(bytes32 slot) external view returns (bytes32 value);

  /// @notice Called by external contracts to access sparse transient pool state
  /// @param slots List of slots to tload
  /// @return values List of loaded values
  function exttload(bytes32[] calldata slots) external view returns (bytes32[] memory values);

  /// @notice Thrown when a currency is not netted out after the contract is unlocked
  error CurrencyNotSettled();

  /// @notice Thrown when trying to interact with a non-initialized pool
  error PoolNotInitialized();

  /// @notice Thrown when unlock is called, but the contract is already unlocked
  error AlreadyUnlocked();

  /// @notice Thrown when a function is called that requires the contract to be unlocked, but it is not
  error ManagerLocked();

  /// @notice Pools are limited to type(int16).max tickSpacing in #initialize, to prevent overflow
  error TickSpacingTooLarge(int24 tickSpacing);

  /// @notice Pools must have a positive non-zero tickSpacing passed to #initialize
  error TickSpacingTooSmall(int24 tickSpacing);

  /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
  error CurrenciesOutOfOrderOrEqual(address currency0, address currency1);

  /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
  /// or on a pool that does not have a dynamic swap fee.
  error UnauthorizedDynamicLPFeeUpdate();

  /// @notice Thrown when trying to swap amount of 0
  error SwapAmountCannotBeZero();

  ///@notice Thrown when native currency is passed to a non native settlement
  error NonzeroNativeValue();

  /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
  error MustClearExactPositiveDelta();

  /// @notice Emitted when a new pool is initialized
  /// @param id The abi encoded hash of the pool key struct for the new pool
  /// @param currency0 The first currency of the pool by address sort order
  /// @param currency1 The second currency of the pool by address sort order
  /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
  /// @param tickSpacing The minimum number of ticks between initialized ticks
  /// @param hooks The hooks contract address for the pool, or address(0) if none
  /// @param sqrtPriceX96 The price of the pool on initialization
  /// @param tick The initial tick of the pool corresponding to the initialized price
  event Initialize(
    PoolId indexed id,
    address indexed currency0,
    address indexed currency1,
    uint24 fee,
    int24 tickSpacing,
    address hooks,
    uint160 sqrtPriceX96,
    int24 tick
  );

  /// @notice Emitted when a liquidity position is modified
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that modified the pool
  /// @param tickLower The lower tick of the position
  /// @param tickUpper The upper tick of the position
  /// @param liquidityDelta The amount of liquidity that was added or removed
  /// @param salt The extra data to make positions unique
  event ModifyLiquidity(
    PoolId indexed id,
    address indexed sender,
    int24 tickLower,
    int24 tickUpper,
    int256 liquidityDelta,
    bytes32 salt
  );

  /// @notice Emitted for swaps between currency0 and currency1
  /// @param id The abi encoded hash of the pool key struct for the pool that was modified
  /// @param sender The address that initiated the swap call, and that received the callback
  /// @param amount0 The delta of the currency0 balance of the pool
  /// @param amount1 The delta of the currency1 balance of the pool
  /// @param sqrtPriceX96 The sqrt(price) of the pool after the swap, as a Q64.96
  /// @param liquidity The liquidity of the pool after the swap
  /// @param tick The log base 1.0001 of the price of the pool after the swap
  /// @param fee The swap fee in hundredths of a bip
  event Swap(
    PoolId indexed id,
    address indexed sender,
    int128 amount0,
    int128 amount1,
    uint160 sqrtPriceX96,
    uint128 liquidity,
    int24 tick,
    uint24 fee
  );

  /// @notice Emitted for donations
  /// @param id The abi encoded hash of the pool key struct for the pool that was donated to
  /// @param sender The address that initiated the donate call
  /// @param amount0 The amount donated in currency0
  /// @param amount1 The amount donated in currency1
  event Donate(PoolId indexed id, address indexed sender, uint256 amount0, uint256 amount1);

  /// @notice All interactions on the contract that account deltas require unlocking. A caller that calls `unlock` must implement
  /// `IUnlockCallback(msg.sender).unlockCallback(data)`, where they interact with the remaining functions on this contract.
  /// @dev The only functions callable without an unlocking are `initialize` and `updateDynamicLPFee`
  /// @param data Any data to pass to the callback, via `IUnlockCallback(msg.sender).unlockCallback(data)`
  /// @return The data returned by the call to `IUnlockCallback(msg.sender).unlockCallback(data)`
  function unlock(bytes calldata data) external returns (bytes memory);

  /// @notice Initialize the state for a given pool ID
  /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
  /// @param key The pool key for the pool to initialize
  /// @param sqrtPriceX96 The initial square root price
  /// @return tick The initial tick of the pool
  function initialize(PoolKey memory key, uint160 sqrtPriceX96) external returns (int24 tick);

  struct ModifyLiquidityParams {
    // the lower and upper tick of the position
    int24 tickLower;
    int24 tickUpper;
    // how to modify the liquidity
    int256 liquidityDelta;
    // a value to set if you want unique liquidity positions at the same range
    bytes32 salt;
  }

  /// @notice Modify the liquidity for the given pool
  /// @dev Poke by calling with a zero liquidityDelta
  /// @param key The pool to modify liquidity in
  /// @param params The parameters for modifying the liquidity
  /// @param hookData The data to pass through to the add/removeLiquidity hooks
  /// @return callerDelta The balance delta of the caller of modifyLiquidity. This is the total of both principal, fee deltas, and hook deltas if applicable
  /// @return feesAccrued The balance delta of the fees generated in the liquidity range. Returned for informational purposes
  function modifyLiquidity(
    PoolKey memory key,
    ModifyLiquidityParams memory params,
    bytes calldata hookData
  ) external returns (BalanceDelta callerDelta, BalanceDelta feesAccrued);

  struct SwapParams {
    /// Whether to swap token0 for token1 or vice versa
    bool zeroForOne;
    /// The desired input amount if negative (exactIn), or the desired output amount if positive (exactOut)
    int256 amountSpecified;
    /// The sqrt price at which, if reached, the swap will stop executing
    uint160 sqrtPriceLimitX96;
  }

  /// @notice Swap against the given pool
  /// @param key The pool to swap in
  /// @param params The parameters for swapping
  /// @param hookData The data to pass through to the swap hooks
  /// @return swapDelta The balance delta of the address swapping
  /// @dev Swapping on low liquidity pools may cause unexpected swap amounts when liquidity available is less than amountSpecified.
  /// Additionally note that if interacting with hooks that have the BEFORE_SWAP_RETURNS_DELTA_FLAG or AFTER_SWAP_RETURNS_DELTA_FLAG
  /// the hook may alter the swap input/output. Integrators should perform checks on the returned swapDelta.
  function swap(PoolKey memory key, SwapParams memory params, bytes calldata hookData)
    external
    returns (BalanceDelta swapDelta);

  /// @notice Donate the given currency amounts to the in-range liquidity providers of a pool
  /// @dev Calls to donate can be frontrun adding just-in-time liquidity, with the aim of receiving a portion donated funds.
  /// Donors should keep this in mind when designing donation mechanisms.
  /// @dev This function donates to in-range LPs at slot0.tick. In certain edge-cases of the swap algorithm, the `sqrtPrice` of
  /// a pool can be at the lower boundary of tick `n`, but the `slot0.tick` of the pool is already `n - 1`. In this case a call to
  /// `donate` would donate to tick `n - 1` (slot0.tick) not tick `n` (getTickAtSqrtPrice(slot0.sqrtPriceX96)).
  /// Read the comments in `Pool.swap()` for more information about this.
  /// @param key The key of the pool to donate to
  /// @param amount0 The amount of currency0 to donate
  /// @param amount1 The amount of currency1 to donate
  /// @param hookData The data to pass through to the donate hooks
  /// @return BalanceDelta The delta of the caller after the donate
  function donate(PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
    external
    returns (BalanceDelta);

  /// @notice Writes the current ERC20 balance of the specified currency to transient storage
  /// This is used to checkpoint balances for the manager and derive deltas for the caller.
  /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
  /// for native tokens because the amount to settle is determined by the sent value.
  /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
  /// native funds, this function can be called with the native currency to then be able to settle the native currency
  function sync(address currency) external;

  /// @notice Called by the user to net out some value owed to the user
  /// @dev Will revert if the requested amount is not available, consider using `mint` instead
  /// @dev Can also be used as a mechanism for free flash loans
  /// @param currency The currency to withdraw from the pool manager
  /// @param to The address to withdraw to
  /// @param amount The amount of currency to withdraw
  function take(address currency, address to, uint256 amount) external;

  /// @notice Called by the user to pay what is owed
  /// @return paid The amount of currency settled
  function settle() external payable returns (uint256 paid);

  /// @notice Called by the user to pay on behalf of another address
  /// @param recipient The address to credit for the payment
  /// @return paid The amount of currency settled
  function settleFor(address recipient) external payable returns (uint256 paid);

  /// @notice WARNING - Any currency that is cleared, will be non-retrievable, and locked in the contract permanently.
  /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
  /// @dev This could be used to clear a balance that is considered dust.
  /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
  function clear(address currency, uint256 amount) external;

  /// @notice Called by the user to move value into ERC6909 balance
  /// @param to The address to mint the tokens to
  /// @param id The currency address to mint to ERC6909s, as a uint256
  /// @param amount The amount of currency to mint
  /// @dev The id is converted to a uint160 to correspond to a currency address
  /// If the upper 12 bytes are not 0, they will be 0-ed out
  function mint(address to, uint256 id, uint256 amount) external;

  /// @notice Called by the user to move value from ERC6909 balance
  /// @param from The address to burn the tokens from
  /// @param id The currency address to burn from ERC6909s, as a uint256
  /// @param amount The amount of currency to burn
  /// @dev The id is converted to a uint160 to correspond to a currency address
  /// If the upper 12 bytes are not 0, they will be 0-ed out
  function burn(address from, uint256 id, uint256 amount) external;

  /// @notice Updates the pools lp fees for the a pool that has enabled dynamic lp fees.
  /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
  /// @param key The key of the pool to update dynamic LP fees for
  /// @param newDynamicLPFee The new dynamic pool LP fee
  function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;
}

// ============================================================
// FILE: contracts/interfaces/uniswapv4/IPositionManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './IPoolManager.sol';

import {PositionInfo} from './Types.sol';
import {IAllowanceTransfer} from 'contracts/interfaces/permit2/IAllowanceTransfer.sol';

/// @title IPositionManager
/// @notice Interface for the PositionManager contract
interface IPositionManager {
  /// @notice The Uniswap v4 PoolManager contract
  function poolManager() external view returns (IPoolManager);

  /// @notice Thrown when the caller is not approved to modify a position
  error NotApproved(address caller);
  /// @notice Thrown when the block.timestamp exceeds the user-provided deadline
  error DeadlinePassed(uint256 deadline);
  /// @notice Thrown when calling transfer, subscribe, or unsubscribe when the PoolManager is unlocked.
  /// @dev This is to prevent hooks from being able to trigger notifications at the same time the position is being modified.
  error PoolManagerMustBeLocked();

  /// @notice Unlocks Uniswap v4 PoolManager and batches actions for modifying liquidity
  /// @dev This is the standard entrypoint for the PositionManager
  /// @param unlockData is an encoding of actions, and parameters for those actions
  /// @param deadline is the deadline for the batched actions to be executed
  function modifyLiquidities(bytes calldata unlockData, uint256 deadline) external payable;

  /// @notice Batches actions for modifying liquidity without unlocking v4 PoolManager
  /// @dev This must be called by a contract that has already unlocked the v4 PoolManager
  /// @param actions the actions to perform
  /// @param params the parameters to provide for the actions
  function modifyLiquiditiesWithoutUnlock(bytes calldata actions, bytes[] calldata params)
    external
    payable;

  /// @notice Used to get the ID that will be used for the next minted liquidity position
  /// @return uint256 The next token ID
  function nextTokenId() external view returns (uint256);

  /// @param tokenId the ERC721 tokenId
  /// @return liquidity the position's liquidity, as a liquidityAmount
  /// @dev this value can be processed as an amount0 and amount1 by using the LiquidityAmounts library
  function getPositionLiquidity(uint256 tokenId) external view returns (uint128 liquidity);

  /// @param tokenId the ERC721 tokenId
  /// @return PositionInfo a uint256 packed value holding information about the position including the range (tickLower, tickUpper)
  /// @return poolKey the pool key of the position
  function getPoolAndPositionInfo(uint256 tokenId)
    external
    view
    returns (PoolKey memory, PositionInfo);

  function permit2() external view returns (IAllowanceTransfer);

  function approve(address to, uint256 tokenId) external;

  function ownerOf(uint256 _tokenId) external view returns (address);

  function safeTransferFrom(address _from, address _to, uint256 _tokenId) external payable;

  function transferFrom(address _from, address _to, uint256 _tokenId) external payable;

  function poolKeys(bytes25 poolId) external view returns (PoolKey memory);
}

// ============================================================
// FILE: contracts/interfaces/uniswapv4/Types.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

type PoolId is bytes32;

type BalanceDelta is int256;

type PositionInfo is uint256;

/// @notice Returns the key for identifying a pool
struct PoolKey {
  /// @notice The lower currency of the pool, sorted numerically
  address currency0;
  /// @notice The higher currency of the pool, sorted numerically
  address currency1;
  /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
  uint24 fee;
  /// @notice Ticks that involve positions must be a multiple of tick spacing
  int24 tickSpacing;
  /// @notice The hooks of the pool
  address hooks;
}

/// @notice Library to define different pool actions.
/// @dev These are suggested common commands, however additional commands should be defined as required
library Actions {
  // pool actions
  // liquidity actions
  uint256 constant INCREASE_LIQUIDITY = 0x00;
  uint256 constant DECREASE_LIQUIDITY = 0x01;
  uint256 constant MINT_POSITION = 0x02;
  uint256 constant BURN_POSITION = 0x03;
  uint256 constant INCREASE_LIQUIDITY_FROM_DELTAS = 0x04;
  uint256 constant MINT_POSITION_FROM_DELTAS = 0x05;

  // swapping
  uint256 constant SWAP_EXACT_IN_SINGLE = 0x06;
  uint256 constant SWAP_EXACT_IN = 0x07;
  uint256 constant SWAP_EXACT_OUT_SINGLE = 0x08;
  uint256 constant SWAP_EXACT_OUT = 0x09;
  // donate
  uint256 constant DONATE = 0x0a;

  // closing deltas on the pool manager
  // settling
  uint256 constant SETTLE = 0x0b;
  uint256 constant SETTLE_ALL = 0x0c;
  uint256 constant SETTLE_PAIR = 0x0d;
  // taking
  uint256 constant TAKE = 0x0e;
  uint256 constant TAKE_ALL = 0x0f;
  uint256 constant TAKE_PORTION = 0x10;
  uint256 constant TAKE_PAIR = 0x11;

  uint256 constant CLOSE_CURRENCY = 0x12;
  uint256 constant CLEAR_OR_TAKE = 0x13;
  uint256 constant SWEEP = 0x14;

  uint256 constant WRAP = 0x15;
  uint256 constant UNWRAP = 0x16;

  // minting/burning 6909s to close deltas
  uint256 constant MINT_6909 = 0x17;
  uint256 constant BURN_6909 = 0x18;
}

/// @title Commands
/// @notice Command Flags used to decode commands
library Commands {
  uint256 constant SWEEP = 0x04;
  uint256 constant V4_SWAP = 0x10;
}

struct ExactInputSingleParams {
  PoolKey poolKey;
  bool zeroForOne;
  uint128 amountIn;
  uint128 amountOutMinimum;
  bytes hookData;
}

// ============================================================
// FILE: contracts/interfaces/zap/validators/IKSZapValidatorV2Base.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorV2Base {
  function prepareValidationData(uint8, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory _validationData);

  function validateData(
    uint8,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool);

  struct ZapInfo {
    bytes32 srcType;
    bytes32 dstType;
    bytes srcZapInfo;
    bytes dstZapInfo;
  }

  struct ValidationData {
    bytes32 srcType;
    bytes32 dstType;
    bytes srcValidationData;
    bytes dstValidationData;
  }

  struct ExtraData {
    bytes srcExtraData;
    bytes dstExtraData;
  }
}

// ============================================================
// FILE: contracts/interfaces/zap/validators/IKSZapValidatorV2Part1.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorV2Part1 {
  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  struct UniswapV3ZapInfo {
    address pool;
    address posManager;
    uint256 posID;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniswapV3ValidationData {
    UniswapV3ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  /// first 32 bytes: offset for tickLower, second 32 bytes: offset for tickUpper, third 32 bytes: offset for liquidity
  struct UniversalCLZapInfo {
    address pool;
    address posManager;
    uint256 posID;
    uint256 offsetPositionFields;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniversalCLValidationData {
    UniversalCLZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Extra data to be used for validation after zapping
  struct UniswapV3ExtraData {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint256 minLiquidity;
  }

  /// @notice Validation data for ERC20 token
  struct ERC20ValidationData {
    ERC20ZapInfo zapInfo;
    uint256 initialBalance;
  }

  /// @notice Validation data for multi ERC20 token
  struct MultiERC20ValidationData {
    ERC20ZapInfo[] zapInfo;
    uint256[] initialBalances;
  }

  /// @notice ERC20 token zap info
  struct ERC20ZapInfo {
    address token;
    address recipient;
  }

  /// @notice Solidly V3 Zap Info
  struct SolidlyV3ZapInfo {
    address pool;
    address recipient;
    int24 tickLower;
    int24 tickUpper;
  }

  /// @notice Return Solidly V3 Zap Data, and initial liquidity of the recipient
  struct SolidlyV3ValidationData {
    SolidlyV3ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Contains pool, posManage address
  /// posID = 0 -> minting a new position, otherwise increasing to existing one
  struct UniswapV4ZapInfo {
    address posManager;
    uint256 tokenId;
  }

  /// @notice Return data for validation purpose
  /// In case minting a new position: it calculates the current total supply
  struct UniswapV4ValidationData {
    UniswapV4ZapInfo zapInfo;
    uint256 initialLiquidity;
  }

  /// @notice Extra data to be used for validation after zapping
  struct UniswapV4ExtraData {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint256 minLiquidity;
  }

  struct PancakeV4BinZapInfo {
    address posManager;
    address poolManager;
    bytes32 poolId;
    int24[] deltaIds;
    address recipient;
  }

  struct PancakeV4BinValidationData {
    PancakeV4BinZapInfo zapInfo;
    int24 activeId;
    uint256[] shares;
  }

  struct PancakeV4BinExtraData {
    uint256[] minReserveXs;
    uint256[] minReserveYs;
  }
}

// ============================================================
// FILE: contracts/validators/KSZapValidatorV2Base.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ZapTypeHash} from 'contracts/common/ZapTypeHash.sol';
import {IKSZapValidatorV2Base} from 'contracts/interfaces/zap/validators/IKSZapValidatorV2Base.sol';
import {KSRescueV2} from 'ks-growth-utils-sc/contracts/KSRescueV2.sol';

abstract contract KSZapValidatorV2Base is IKSZapValidatorV2Base, KSRescueV2, ZapTypeHash {
  address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  function prepareValidationData(uint8, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory)
  {
    ValidationData memory data;
    ZapInfo memory zapInfo = abi.decode(_zapInfo, (ZapInfo));

    data.srcType = zapInfo.srcType;
    data.srcValidationData = _getPrepareDataFunction(zapInfo.srcType)(zapInfo.srcZapInfo);

    data.dstType = zapInfo.dstType;
    data.dstValidationData = _getPrepareDataFunction(zapInfo.dstType)(zapInfo.dstZapInfo);

    return abi.encode(data);
  }

  function validateData(
    uint8,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool) {
    ValidationData memory validationData = abi.decode(_validationData, (ValidationData));
    ExtraData memory extraData = abi.decode(_extraData, (ExtraData));

    return _getValidateRemovingFunction(validationData.srcType)(
      extraData.srcExtraData, validationData.srcValidationData
    )
      && _getValidateResultsFunction(validationData.dstType)(
        extraData.dstExtraData, validationData.dstValidationData
      );
  }

  /// @notice Dummy function to prepare validation data for none action
  function _prepareNoneValidationData(bytes memory) internal pure returns (bytes memory) {}

  /// @notice Dummy function to validate none action
  function _validateNoneResult(bytes memory, bytes memory) internal pure returns (bool) {
    return true;
  }

  /// @notice Dummy function to validate none action
  function _validateNoneRemoving(bytes memory, bytes memory) internal pure returns (bool) {
    return true;
  }

  function _getPrepareDataFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory) internal view returns (bytes memory));

  function _getValidateResultsFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory, bytes memory) internal view returns (bool));

  function _getValidateRemovingFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory, bytes memory) internal view returns (bool));
}

// ============================================================
// FILE: contracts/validators/KSZapValidatorV2Part1.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ZapTypeHash} from 'contracts/common/ZapTypeHash.sol';

import {IAlgebraV19NFT} from 'contracts/interfaces/algebrav19/IAlgebraV19NFT.sol';

import {
  IBinPoolManager,
  PoolId as PancakeV4PoolId
} from 'contracts/interfaces/pancakev4/IBinPoolManager.sol';
import {IBinPositionManager} from 'contracts/interfaces/pancakev4/IBinPositionManager.sol';
import {IBinPositionManager} from 'contracts/interfaces/pancakev4/IBinPositionManager.sol';
import {ICLPositionManager as IPancakeV4CLNFT} from
  'contracts/interfaces/pancakev4/ICLPositionManager.sol';
import {ISolidlyV3Pool} from 'contracts/interfaces/solidlyv3/ISolidlyV3Pool.sol';
import {IUniswapv3NFT} from 'contracts/interfaces/uniswapv3/IUniswapv3NFT.sol';
import {
  IPositionManager as IUniswapV4NFT,
  PositionInfo
} from 'contracts/interfaces/uniswapv4/IPositionManager.sol';

import {IERC1155} from 'openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import {IERC20} from 'openzeppelin/contracts/token/ERC20/IERC20.sol';
import {IERC721} from 'openzeppelin/contracts/token/ERC721/IERC721.sol';
import {Strings} from 'openzeppelin/contracts/utils/Strings.sol';

import './KSZapValidatorV2Base.sol';
import {IKSZapValidatorV2Part1} from
  'contracts/interfaces/zap/validators/IKSZapValidatorV2Part1.sol';

contract KSZapValidatorV2Part1 is KSZapValidatorV2Base, IKSZapValidatorV2Part1 {
  function _prepareUniswapV3ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV3ZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IUniswapv3NFT(data.zapInfo.posManager).totalSupply();
    } else {
      (,,,,,,, data.initialLiquidity,,,,) =
        IUniswapv3NFT(data.zapInfo.posManager).positions(data.zapInfo.posID);
    }
    return abi.encode(data);
  }

  function _prepareAlgebraValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV3ZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IAlgebraV19NFT(data.zapInfo.posManager).totalSupply();
    } else {
      (,,,,,, data.initialLiquidity,,,,) =
        IAlgebraV19NFT(data.zapInfo.posManager).positions(data.zapInfo.posID);
    }
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap out action
  /// @param _zapInfo contains info of zap out
  function _prepareERC20ValidationData(bytes memory _zapInfo) internal view returns (bytes memory) {
    ERC20ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (ERC20ZapInfo));
    data.initialBalance = data.zapInfo.token == ETH_ADDRESS
      ? data.zapInfo.recipient.balance
      : IERC20(data.zapInfo.token).balanceOf(data.zapInfo.recipient);
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation zap out with multi ERC20 token
  /// @param _zapInfo contains info of zap out with multi ERC20 token
  function _prepareMultiERC20ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    MultiERC20ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (ERC20ZapInfo[]));
    data.initialBalances = new uint256[](data.zapInfo.length);

    for (uint256 i; i < data.zapInfo.length; ++i) {
      data.initialBalances[i] = data.zapInfo[i].token == ETH_ADDRESS
        ? data.zapInfo[i].recipient.balance
        : IERC20(data.zapInfo[i].token).balanceOf(data.zapInfo[i].recipient);
    }

    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap in Solidly V3
  /// @param _zapInfo contains info of zap in Solidly V3
  function _prepareSolidlyV3ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    SolidlyV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (SolidlyV3ZapInfo));
    bytes32 positionKey = keccak256(
      abi.encodePacked(data.zapInfo.recipient, data.zapInfo.tickLower, data.zapInfo.tickUpper)
    );
    (data.initialLiquidity,,) = ISolidlyV3Pool(data.zapInfo.pool).positions(positionKey);
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap in Uniswap V4
  /// @param _zapInfo contains info of zap in Uniswap V4
  function _prepareUniswapV4ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV4ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV4ZapInfo));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    if (data.zapInfo.tokenId == 0) {
      data.zapInfo.tokenId = posManager.nextTokenId();
    } else {
      data.initialLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    }
    return abi.encode(data);
  }

  function _preparePancakeV4BinValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    PancakeV4BinZapInfo memory zapInfo = abi.decode(_zapInfo, (PancakeV4BinZapInfo));
    PancakeV4BinValidationData memory data;
    data.zapInfo = zapInfo;
    data.shares = new uint256[](zapInfo.deltaIds.length);
    PancakeV4PoolId poolId = PancakeV4PoolId.wrap(zapInfo.poolId);
    {
      (uint256 activeId,,) = IBinPoolManager(zapInfo.poolManager).getSlot0(poolId);
      data.activeId = int24(int256(activeId));
    }
    for (uint256 i = 0; i < zapInfo.deltaIds.length; i++) {
      int24 binId = data.activeId + zapInfo.deltaIds[i];
      uint256 tokenId = _getTokenId(poolId, binId);
      data.shares[i] = IERC1155(zapInfo.posManager).balanceOf(zapInfo.recipient, tokenId);
    }
    return abi.encode(data);
  }

  function _prepareUniversalCLValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniversalCLValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniversalCLZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IUniswapv3NFT(data.zapInfo.posManager).totalSupply();
    } else {
      address posManager = data.zapInfo.posManager;
      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');
      uint256 offset = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      uint128 initialLiquidity;
      assembly {
        initialLiquidity := mload(add(result, offset))
      }
      data.initialLiquidity = initialLiquidity;
    }
    return abi.encode(data);
  }

  /// @notice Validate result for zapping into Uniswap V3
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateUniswapV3Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;
    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);
      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      (,,,,, tickLower, tickUpper, newLiquidity,,,,) = posManager.positions(posID);
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidity increment
      // getting new position liquidity, make sure it is increased
      (,,,,,,, newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  /// @notice Validate result for zapping into Algebra
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateAlgebraResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IAlgebraV19NFT posManager = IAlgebraV19NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;
    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);
      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      (,,,, tickLower, tickUpper, newLiquidity,,,,) = posManager.positions(posID);
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidty increment
      // getting new position liquidity, make sure it is increased
      (,,,,,, newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validateERC20Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    ERC20ValidationData memory data = abi.decode(_validationData, (ERC20ValidationData));
    uint256 minAmountOut = abi.decode(_extraData, (uint256));
    uint256 currentBalance = data.zapInfo.token == ETH_ADDRESS
      ? data.zapInfo.recipient.balance
      : IERC20(data.zapInfo.token).balanceOf(data.zapInfo.recipient);
    return currentBalance >= data.initialBalance + minAmountOut;
  }

  function _validateMultiERC20Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    MultiERC20ValidationData memory data = abi.decode(_validationData, (MultiERC20ValidationData));
    uint256[] memory minAmountOuts = abi.decode(_extraData, (uint256[]));
    uint256 currentBalance;
    for (uint256 i; i < data.zapInfo.length; ++i) {
      currentBalance = data.zapInfo[i].token == ETH_ADDRESS
        ? data.zapInfo[i].recipient.balance
        : IERC20(data.zapInfo[i].token).balanceOf(data.zapInfo[i].recipient);
      require(
        currentBalance >= data.initialBalances[i] + minAmountOuts[i],
        string(
          abi.encodePacked(
            'ZapValidator: insufficient output amount for token ',
            Strings.toHexString(data.zapInfo[i].token),
            '. Expected: ',
            Strings.toString(minAmountOuts[i]),
            ', Got: ',
            Strings.toString(currentBalance - data.initialBalances[i])
          )
        )
      );
    }
    return true;
  }

  function _validateSolidlyV3Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    SolidlyV3ValidationData memory data = abi.decode(_validationData, (SolidlyV3ValidationData));
    bytes32 positionKey = keccak256(
      abi.encodePacked(data.zapInfo.recipient, data.zapInfo.tickLower, data.zapInfo.tickUpper)
    );
    (uint256 newLiquidity,,) = ISolidlyV3Pool(data.zapInfo.pool).positions(positionKey);
    uint256 minLiquidity = abi.decode(_extraData, (uint256));
    return newLiquidity >= minLiquidity + data.initialLiquidity;
  }

  function _validatePancakeV4CLResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    (, int24 tickLower, int24 tickUpper, uint128 newLiquidity,,,) =
      IPancakeV4CLNFT(data.zapInfo.posManager).positions(data.zapInfo.tokenId);
    UniswapV4ExtraData memory extraData = abi.decode(_extraData, (UniswapV4ExtraData));
    if (
      IPancakeV4CLNFT(data.zapInfo.posManager).ownerOf(data.zapInfo.tokenId) != extraData.recipient
    ) {
      return false;
    }
    if (extraData.tickLower < extraData.tickUpper) {
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validateUniswapV4Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    int24 tickLower;
    int24 tickUpper;
    {
      (, PositionInfo posInfo) = posManager.getPoolAndPositionInfo(data.zapInfo.tokenId);
      assembly {
        tickLower := signextend(2, shr(8, posInfo))
        tickUpper := signextend(2, shr(32, posInfo))
      }
    }
    uint128 newLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    UniswapV4ExtraData memory extraData = abi.decode(_extraData, (UniswapV4ExtraData));
    if (posManager.ownerOf(data.zapInfo.tokenId) != extraData.recipient) {
      return false;
    }
    if (extraData.tickLower < extraData.tickUpper) {
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validatePancakeV4BinResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    PancakeV4BinValidationData memory data =
      abi.decode(_validationData, (PancakeV4BinValidationData));
    PancakeV4BinExtraData memory extraData = abi.decode(_extraData, (PancakeV4BinExtraData));

    PancakeV4PoolId poolId = PancakeV4PoolId.wrap(data.zapInfo.poolId);
    for (uint256 i; i < data.zapInfo.deltaIds.length; ++i) {
      int24 binId = int24(data.activeId) + data.zapInfo.deltaIds[i];
      uint256 tokenId = _getTokenId(poolId, binId);
      uint256 mintedShares = IERC1155(data.zapInfo.posManager).balanceOf(
        data.zapInfo.recipient, tokenId
      ) - data.shares[i];
      (uint256 reserveX, uint256 reserveY,, uint256 totalShares) =
        IBinPoolManager(data.zapInfo.poolManager).getBin(poolId, uint24(binId));
      if (
        mintedShares * reserveX / totalShares < extraData.minReserveXs[i]
          || mintedShares * reserveY / totalShares < extraData.minReserveYs[i]
      ) {
        return false;
      }
    }

    return true;
  }

  /// @notice Validate result for zapping into Universal CL
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateUniversalCLResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniversalCLValidationData memory data = abi.decode(_validationData, (UniversalCLValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;

    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);

      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');

      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      uint256 offsetLower = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields);
      uint256 offsetUpper = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 32);
      uint256 offsetLiquidity = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      assembly {
        tickLower := mload(add(result, offsetLower))
        tickUpper := mload(add(result, offsetUpper))
        newLiquidity := mload(add(result, offsetLiquidity))
      }
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidity increment
      // getting new position liquidity, make sure it is increased
      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');

      uint256 offsetLiquidity = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      assembly {
        newLiquidity := mload(add(result, offsetLiquidity))
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V3
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniswapV3Removing(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    (,,,,,,, uint128 newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.posID);
  }

  /**
   * @notice Validate the position after removing liquidity from Algebra
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateAlgebraRemoving(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IAlgebraV19NFT posManager = IAlgebraV19NFT(data.zapInfo.posManager);
    (,,,,,, uint128 newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.posID);
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V4
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniswapV4Removing(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    uint128 newLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.tokenId);
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V3
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniversalCLRemoving(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniversalCLValidationData memory data = abi.decode(_validationData, (UniversalCLValidationData));
    address posManager = data.zapInfo.posManager;
    (bool success, bytes memory result) = address(posManager).staticcall(
      abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
    );
    require(success, 'ZapValidator: failed to fetch position info');
    uint256 offset = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
    uint128 newLiquidity;
    assembly {
      newLiquidity := mload(add(result, offset))
    }

    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == IERC721(posManager).ownerOf(data.zapInfo.posID) || newLiquidity == 0;
  }

  function _getPrepareDataFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory) internal view returns (bytes memory))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _prepareUniswapV3ValidationData;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _prepareAlgebraValidationData;
    } else if (_type == ERC20_TYPE) {
      return _prepareERC20ValidationData;
    } else if (_type == SOLIDLY_V3_TYPE) {
      return _prepareSolidlyV3ValidationData;
    } else if (_type == PANCAKE_V4_CL_TYPE || _type == UNISWAP_V4_TYPE) {
      return _prepareUniswapV4ValidationData;
    } else if (_type == MULTI_ERC20_TYPE) {
      return _prepareMultiERC20ValidationData;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _prepareUniversalCLValidationData;
    } else if (_type == PANCAKE_V4_BIN_TYPE) {
      return _preparePancakeV4BinValidationData;
    } else if (_type == NONE_TYPE) {
      return _prepareNoneValidationData;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getValidateResultsFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory, bytes memory) internal view returns (bool))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _validateUniswapV3Result;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _validateAlgebraResult;
    } else if (_type == ERC20_TYPE) {
      return _validateERC20Result;
    } else if (_type == SOLIDLY_V3_TYPE) {
      return _validateSolidlyV3Result;
    } else if (_type == PANCAKE_V4_CL_TYPE) {
      return _validatePancakeV4CLResult;
    } else if (_type == UNISWAP_V4_TYPE) {
      return _validateUniswapV4Result;
    } else if (_type == MULTI_ERC20_TYPE) {
      return _validateMultiERC20Result;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _validateUniversalCLResult;
    } else if (_type == PANCAKE_V4_BIN_TYPE) {
      return _validatePancakeV4BinResult;
    } else if (_type == NONE_TYPE) {
      return _validateNoneResult;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getValidateRemovingFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory, bytes memory) internal view returns (bool))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _validateUniswapV3Removing;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _validateAlgebraRemoving;
    } else if (_type == PANCAKE_V4_CL_TYPE || _type == UNISWAP_V4_TYPE) {
      return _validateUniswapV4Removing;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _validateUniversalCLRemoving;
    } else if (_type == NONE_TYPE) {
      return _validateNoneRemoving;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getTokenId(PancakeV4PoolId poolId, int256 binId) internal pure returns (uint256) {
    return uint256(keccak256(abi.encode(poolId, binId)));
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KSRescue.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {KyberSwapRole} from '@src/KyberSwapRole.sol';
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

abstract contract KSRescue is KyberSwapRole {
  using SafeERC20 for IERC20;

  address private constant ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

  function rescueFunds(address token, uint256 amount, address recipient) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    if (amount == 0) amount = _getAvailableAmount(token);
    if (amount > 0) {
      if (_isETH(token)) {
        (bool success,) = recipient.call{value: amount}('');
        require(success, 'KSRescue: ETH_TRANSFER_FAILED');
      } else {
        IERC20(token).safeTransfer(recipient, amount);
      }
    }
  }

  function _getAvailableAmount(address token) internal view virtual returns (uint256 amount) {
    if (_isETH(token)) {
      amount = address(this).balance;
    } else {
      amount = IERC20(token).balanceOf(address(this));
    }
    if (amount > 0) --amount;
  }

  function _isETH(address token) internal pure returns (bool) {
    return (token == ETH_ADDRESS);
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KSRescueV2.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {KSRescue} from '@src/KSRescue.sol';
import {IERC721} from '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import {IERC1155} from '@openzeppelin/contracts/token/ERC1155/IERC1155.sol';

abstract contract KSRescueV2 is KSRescue {
  function rescueBatchERC721(
    address token,
    uint256[] calldata _ids,
    address recipient
  ) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    for (uint256 i = 0; i < _ids.length; i++) {
      IERC721(token).transferFrom(address(this), recipient, _ids[i]);
    }
  }

  function rescueBatchERC1155(
    address token,
    uint256[] calldata ids,
    uint256[] memory amounts,
    bytes calldata data,
    address recipient
  ) external onlyOwner {
    require(recipient != address(0), 'KSRescue: invalid recipient');
    require(ids.length == amounts.length, 'KSRescue: invalid array length');
    for (uint256 i = 0; i < ids.length; ++i) {
      if (amounts[i] == 0) amounts[i] = IERC1155(token).balanceOf(address(this), ids[i]);
    }
    IERC1155(token).safeBatchTransferFrom(address(this), recipient, ids, amounts, data);
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/contracts/KyberSwapRole.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import {Pausable} from '@openzeppelin/contracts/security/Pausable.sol';

abstract contract KyberSwapRole is Ownable, Pausable {
  mapping(address => bool) public operators;
  mapping(address => bool) public guardians;

  /**
   * @dev Emitted when the an user was grant or revoke operator role.
   */
  event UpdateOperator(address user, bool grantOrRevoke);

  /**
   * @dev Emitted when the an user was grant or revoke guardian role.
   */
  event UpdateGuardian(address user, bool grantOrRevoke);

  /**
   * @dev Modifier to make a function callable only when caller is operator.
   *
   * Requirements:
   *
   * - Caller must have operator role.
   */
  modifier onlyOperator() {
    require(operators[msg.sender], 'KyberSwapRole: not operator');
    _;
  }

  /**
   * @dev Modifier to make a function callable only when caller is guardian.
   *
   * Requirements:
   *
   * - Caller must have guardian role.
   */
  modifier onlyGuardian() {
    require(guardians[msg.sender], 'KyberSwapRole: not guardian');
    _;
  }

  /**
   * @dev Update Operator role for user.
   * Can only be called by the current owner.
   */
  function updateOperator(address user, bool grantOrRevoke) external onlyOwner {
    operators[user] = grantOrRevoke;
    emit UpdateOperator(user, grantOrRevoke);
  }

  /**
   * @dev Update Guardian role for user.
   * Can only be called by the current owner.
   */
  function updateGuardian(address user, bool grantOrRevoke) external onlyOwner {
    guardians[user] = grantOrRevoke;
    emit UpdateGuardian(user, grantOrRevoke);
  }

  /**
   * @dev Enable logic for contract.
   * Can only be called by the current owner.
   */
  function enableLogic() external onlyOwner {
    _unpause();
  }

  /**
   * @dev Disable logic for contract.
   * Can only be called by the guardians.
   */
  function disableLogic() external onlyGuardian {
    _pause();
  }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT

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
        _setOwner(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _setOwner(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _setOwner(newOwner);
    }

    function _setOwner(address newOwner) private {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/security/Pausable.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../utils/Context.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        require(!paused(), "Pausable: paused");
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        require(paused(), "Pausable: not paused");
        _;
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[EIP].
 *
 * _Available since v3.1._
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` tokens of token type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the amount of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(address[] calldata accounts, uint256[] calldata ids)
        external
        view
        returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the caller.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers `amount` tokens of token type `id` from `from` to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must be have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `amount`.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes calldata data
    ) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../IERC20.sol";
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

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT

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
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
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
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

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
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

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
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

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
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

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
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
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
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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
        return functionCall(target, data, "Address: low-level call failed");
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
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
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
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
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
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
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
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
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
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// ============================================================
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT

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
// FILE: lib/ks-growth-utils-sc/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT

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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC1155/IERC1155.sol)

pragma solidity ^0.8.0;

import "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[EIP].
 *
 * _Available since v3.1._
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` tokens of token type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the amount of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(
        address[] calldata accounts,
        uint256[] calldata ids
    ) external view returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the caller.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers `amount` tokens of token type `id` from `from` to `to`.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `amount`.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(address from, address to, uint256 id, uint256 amount, bytes calldata data) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * Emits a {TransferBatch} event.
     *
     * Requirements:
     *
     * - `ids` and `amounts` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/math/Math.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/Strings.sol
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
