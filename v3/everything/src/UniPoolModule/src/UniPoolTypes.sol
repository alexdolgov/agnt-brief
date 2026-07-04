// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IPool } from "@aave-v3/contracts/interfaces/IPool.sol";
import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { LibBitmap } from "solady-0.1/utils/LibBitmap.sol";

import { IUniPoolFactory } from "./interfaces/IUniPoolFactory.sol";
import { IUniPoolPair } from "./interfaces/IUniPoolPair.sol";
import { IUniPoolVault } from "./interfaces/IUniPoolVault.sol";

/// @notice A uint256 representing a loan ID.
type LoanId is uint256;

/// @notice The combination of a tick's number and its version.
type TickId is uint256;

/// @notice the hash of a tick's number, version, boolean is token zero, and its pair.
type TickHash is bytes32;

/// @notice the hash of a loan's ID and its pair.
type LoanHash is bytes32;

/**
 * @notice Storage values for one token in a `UniPoolPair` (token0 or token1).
 * @param tokenAddress The token address.
 * @param loanFeeBps Fee taken on new loans, relative to the borrowed amount, taken in collateral denomination.
 * @param lowestTick The lowest tick holding a loan for the token. If no loan exists, defaults to `int16.max`.
 * @param feePoolAccumulated The amount of pool fees accumulated for this token.
 * @param reserve The current (real) reserve of this token.
 * @param virtualReserveIn The virtual reserve for this token when used as input to the pair.
 * @param virtualReserveOut The virtual reserve for this token when used as output from the pair.
 * @param interestMultiplier The interest rate multiplier for loans of this token.
 * @param lastCollatYieldAccumulator The value that the vault's yield accumulator had during the last state update for
 * the collateral token. Used to adjust the interest multiplier based on the yield of the collateral. For `s.token0`,
 * this is the accumulator for `token1`.
 * @param totalLoans The total number of active loans for this token.
 * @param totalBorrowed The total amount that was borrowed.
 * @param interestProtocolFeeBps Protocol fee taken on collected interests.
 * @param optimalPointBps The optimal utilization rate for lending.
 * @param interestRateBaseBps The base interest rate for lending.
 * @param interestRateOptimalBps The interest rate at the optimal utilization rate.
 * @param interestRateAddBps The additional interest rate at the maximum utilization rate.
 * @param tick A mapping of tick ID (tick number and version) to tick data for loans of this token.
 * @param tickVersion A mapping of tick number to current tick version for loans of this token.
 * @param tickBitmap A bitmap used to quickly find ticks which contain loans.
 */
struct TokenStorage {
    IERC20 tokenAddress;
    uint16 loanFeeBps;
    int16 lowestTick;
    uint128 feePoolAccumulated;
    uint128 reserve;
    uint128 virtualReserveIn;
    uint128 virtualReserveOut;
    uint256 interestMultiplier;
    uint256 lastCollatYieldAccumulator;
    uint256 totalLoans;
    uint128 totalBorrowed;
    uint16 interestProtocolFeeBps;
    uint16 optimalPointBps;
    uint32 interestRateBaseBps;
    uint32 interestRateOptimalBps;
    uint32 interestRateAddBps;
    mapping(TickId => TickData) tick;
    mapping(int16 => uint232) tickVersion;
    LibBitmap.Bitmap tickBitmap;
}

/**
 * @notice The information about a loan.
 * @param isToken0 Whether token0 was borrowed (true) or token1 (false).
 * @param tick The tick number for the liquidation price.
 * @param tickVersion The version of the tick at the time of the loan creation.
 * @param owner The owner of the loan.
 * @param delegationNonce The nonce for delegation signatures on this loan.
 * @param amount The amount that was borrowed.
 * @param collateral The amount of collateral that was provided (other token).
 * @param entryMultiplier The interest rate multiplier for the borrowed token at the creation of the load.
 */
struct LoanInfo {
    bool isToken0;
    int16 tick;
    uint232 tickVersion;
    address owner;
    uint96 delegationNonce;
    uint128 amount;
    uint128 collateral;
    uint256 entryMultiplier;
}

/**
 * @notice Aggregate data for the loans inside a given tick.
 * @param loans The number of loans in the tick.
 * @param amount The total amount of the borrowed token in this tick.
 * @param collateral The total amount of the collateral token for the loans in this tick.
 */
struct TickData {
    uint256 loans;
    uint128 amount;
    uint128 collateral;
}

/**
 * @notice The initialization parameters for a new pair.
 * @param token0 The token0 address.
 * @param token1 The token1 address.
 * @param factory The factory contract address.
 * @param vault The collateral vault address.
 * @param aave The Aave pool address.
 * @param feeLpBps The fee going to liquidity providers.
 * @param feePoolBps The fee going to the protocol.
 * @param burnFeeBps The fee applied when burning liquidity.
 * @param loanFeeBps Fee taken on new loans, relative to the borrowed amount, taken in collateral denomination.
 * @param feeCollector The address that will receive the protocol fees.
 * @param interestProtocolFeeBps The protocol fee taken on collected interests.
 * @param optimalPointBps The optimal utilization rate for lending.
 * @param interestRateBaseBps The base interest rate for lending.
 * @param interestRateOptimalBps The interest rate at the optimal utilization rate.
 * @param interestRateAddBps The additional interest rate at the maximum utilization rate.
 * @param borrowLimitBps The maximum ratio of all liquidity that can be borrowed.
 * @param liquidationPenaltyBps The penalty for liquidating a loan (additional collateral required).
 * @param maxBorrowPerTickBps The maximum ratio that can be borrowed on a single tick, compared to the available
 * liquidity.
 * @param maxBorrowPerTickRangeBps The maximum ratio that can be borrowed on a tick range, compared to the available
 * liquidity.
 * @param swapPriceToleranceBps The maximum allowed spread between the real price and buy/sell prices in basis points.
 * @param priceDecay The decay period of the virtual price.
 */
struct InitPairParams {
    IERC20 token0;
    IERC20 token1;
    IUniPoolFactory factory;
    IUniPoolVault vault;
    IPool aave;
    uint16 feeLpBps;
    uint16 feePoolBps;
    uint16 burnFeeBps;
    uint16 loanFeeBps;
    address feeCollector;
    uint16 interestProtocolFeeBps;
    uint16 optimalPointBps;
    uint32 interestRateBaseBps;
    uint32 interestRateOptimalBps;
    uint32 interestRateAddBps;
    uint16 borrowLimitBps;
    uint16 liquidationPenaltyBps;
    uint16 swapPriceToleranceBps;
    uint32 maxBorrowPerTickBps;
    uint32 maxBorrowPerTickRangeBps;
    uint128 priceDecay;
}

/**
 * @notice The result of a liquidation call.
 * @param liquidatedTicks0 Number of ticks that contained liquidated positions for token0.
 * @param liquidatedTicks1 Number of ticks that contained liquidated positions for token1.
 * @param totalPositions0 Total number of token0 positions that were liquidated.
 * @param totalPositions1 Total number of token1 positions that were liquidated.
 * @param totalAmount0 Total borrowed amount of token0 that was liquidated across all positions.
 * @param totalAmount1 Total borrowed amount of token1 that was liquidated across all positions.
 * @param totalCollateral0 Total collateral amount of token0 that was seized across all positions.
 * @param totalCollateral1 Total collateral amount of token1 that was seized across all positions.
 * @param reserve0 The resulting reserve of token0.
 * @param reserve1 The resulting reserve of token1.
 */
struct LiquidationResult {
    uint256 liquidatedTicks0;
    uint256 liquidatedTicks1;
    uint256 totalPositions0;
    uint256 totalPositions1;
    uint128 totalAmount0;
    uint128 totalAmount1;
    uint128 totalCollateral0;
    uint128 totalCollateral1;
    uint128 reserve0;
    uint128 reserve1;
}

/**
 * @notice The parameters used to compute the interest rate based on the utilization rate.
 * @dev The interest rate model is a piecewise linear function that defines the interest rate based on the utilization
 * rate. The `interestRateAddBps` is added to the `interestRateOptimalBps` to get the variable portion of the interest
 * rate at maximum utilization.
 * @param protocolFeeBps The percentage of interests which is taken by the fee collector.
 * @param optimalPointBps The optimal utilization rate for lending.
 * @param interestRateBaseBps The base interest rate for lending.
 * @param interestRateOptimalBps The interest rate at the optimal utilization rate.
 * @param interestRateAddBps The additional interest rate at the maximum utilization rate.
 */
struct InterestParams {
    uint16 protocolFeeBps;
    uint16 optimalPointBps;
    uint32 interestRateBaseBps;
    uint32 interestRateOptimalBps;
    uint32 interestRateAddBps;
}

/**
 * @notice The parameters to create a new loan.
 * @param isToken0 Whether token0 is being borrowed (else token1 is borrowed).
 * @param loanParams The amount borrowed and the liquidation tick for the loan.
 * @param owner The owner of the loan which will be responsible for paying it back and will retrieve the collateral.
 * @param to The address which receives the borrowed tokens.
 * @param callbackData Optional data that gets forwarded to the caller in the payment callback.
 */
struct BorrowParams {
    bool isToken0;
    LoanParams loanParams;
    address owner;
    address to;
    bytes callbackData;
}

/**
 * @notice The parameters to create multiple new loans.
 * @param isToken0 Whether token0 is being borrowed (else token1 is borrowed).
 * @param loanParams The amount borrowed and the liquidation tick for each loans.
 * @param owner The owner of the loan which will be responsible for paying it back and will retrieve the collateral.
 * @param to The address which receives the borrowed tokens.
 * @param isFlashLoan If true, the borrowed tokens will be used for the collateral.
 * @param minAmountOut When used with `isFlashLoan`, will make the transaction revert if the amount of collateral bought
 * with the borrowed tokens is below this value.
 * @param callbackData Optional data that gets forwarded to the caller in the payment callback.
 */
struct BorrowMultipleParams {
    bool isToken0;
    LoanParams[] loanParams;
    address owner;
    address to;
    bool isFlashLoan;
    uint128 minAmountOut;
    bytes callbackData;
}

/**
 * @notice The amount to borrow on a tick for a loan.
 * @param amountOut Borrowed amount.
 * @param liquidationTick The tick number corresponding to the liquidation price.
 * @param maxCollateralIn The maximum amount of collateral that can be used for this loan.
 */
struct LoanParams {
    uint128 amountOut;
    int16 liquidationTick;
    uint128 maxCollateralIn;
}

/**
 * @notice The parameters to (partially) repay a loan.
 * @param loanId The unique identifier of the loan to repay.
 * @param userIndex The index of this loan in the user's list of loans.
 * @param amount The amount of initially borrowed tokens that is being paid back, not accounting for interests.
 * @param maxSwapInput The maximum amount of collateral to use to repay with autoswap. If 0, then no autoswap will be
 * performed and the caller must refund the borrowed amount with interests (the owner retrieves the full collateral).
 * This parameter must be sufficient for a swap with the borrowed amount + interests as exact output and serves as
 * slippage control for the autoswap.
 * @param deadline The deadline timestamp after which the transaction is invalid.
 * @param delegationSignature An optional EIP712 signature to authorize the repayment on the owner's behalf.
 * @param callbackData Optional data that gets forwarded to the caller in the payment callback.
 */
struct RepayParams {
    LoanId loanId;
    uint256 userIndex;
    uint128 amount;
    uint128 maxSwapInput;
    uint40 deadline;
    bytes delegationSignature;
    bytes callbackData;
}

/**
 * @notice The struct containing the swap parameters.
 * @param amountIn The amount of input tokens being provided for the swap.
 * @param amountOut The amount of output tokens to be received from the swap.
 * @param isToken0Out True if token0 is the output token, false if token1 is the output token.
 * @param to The address that will receive the output tokens.
 * @param callBackData The callback data passed to the swap callback (empty bytes for direct transfers).
 */
struct SwapParams {
    uint128 amountIn;
    uint128 amountOut;
    bool isToken0Out;
    address to;
    bytes callBackData;
}

/**
 * @notice Struct to hold the 4 virtual reserves.
 * @param virtualReserve0In The virtual reserve for token0 inputs.
 * @param virtualReserve0Out The virtual reserve for token0 outputs.
 * @param virtualReserve1In The virtual reserve for token1 inputs.
 * @param virtualReserve1Out The virtual reserve for token1 outputs.
 */
struct VirtualReserves {
    uint128 virtualReserve0In;
    uint128 virtualReserve0Out;
    uint128 virtualReserve1In;
    uint128 virtualReserve1Out;
}

/**
 * @notice A token within a pair.
 * @param pair The address of the pair.
 * @param isToken0 True to target token0, false to target token1.
 */
struct PairToken {
    IUniPoolPair pair;
    bool isToken0;
}

/**
 * @notice Struct representing the collateral state and Aave investment status for a collateral vault asset.
 * @param totalBalance The total number of deposited assets. For non-idle assets, this is the scaled balance deposited
 * in Aave.
 * @param totalShares The total number of minted shares for that asset.
 * @param isIdle Whether the assets remain in the vault (true) or are invested in Aave (false).
 * @param forceIdle Flag to disable Aave integration, true to force collateral in vault, false otherwise.
 */
struct AssetData {
    uint256 totalBalance;
    uint256 totalShares;
    bool isIdle;
    bool forceIdle;
}

/**
 * @notice Struct containing Aave support, reserve status flags, and migration requirement.
 * @param supported True if the token is supported on Aave, false otherwise.
 * @param frozen True if the token reserve is frozen on Aave, false otherwise.
 * @param paused True if the token reserve is paused on Aave, false otherwise.
 * @param migrateAsset True if the token should be migrated between the vault and Aave based on current support.
 */
struct AaveAssetSupport {
    bool supported;
    bool frozen;
    bool paused;
    bool migrateAsset;
}

/**
 * @notice Calculates the next loan ID.
 * @dev This is simply incrementing the underlying integer by 1.
 * @param loanId The current loan ID.
 * @return next_ The next loan ID.
 */
function next(LoanId loanId) pure returns (LoanId next_) {
    next_ = LoanId.wrap(LoanId.unwrap(loanId) + 1);
}

/**
 * @notice Checks if two loan IDs are equal.
 * @param a The first loan ID.
 * @param b The second loan ID.
 * @return isEqual_ Whether `a` and `b` are equal.
 */
function isEqual(LoanId a, LoanId b) pure returns (bool isEqual_) {
    isEqual_ = LoanId.unwrap(a) == LoanId.unwrap(b);
}

using { next, isEqual as == } for LoanId global;
