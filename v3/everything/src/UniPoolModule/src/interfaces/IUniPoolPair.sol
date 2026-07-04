// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IPool } from "@aave-v3/contracts/interfaces/IPool.sol";
import { IERC5267 } from "@openzeppelin-contracts-5/interfaces/IERC5267.sol";
import { IERC20Errors } from "@openzeppelin-contracts-5/interfaces/draft-IERC6093.sol";
import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin-contracts-5/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20Permit } from "@openzeppelin-contracts-5/token/ERC20/extensions/IERC20Permit.sol";

import "../UniPoolTypes.sol";
import { IUniPoolFactory } from "../interfaces/IUniPoolFactory.sol";
import { IUniPoolVault } from "../interfaces/IUniPoolVault.sol";

/**
 * @title UniPool Pair Interface
 * @notice Interface for UniPool liquidity pairs that represent trading pairs with lending functionality.
 */
interface IUniPoolPair is IERC20, IERC20Metadata, IERC20Errors, IERC20Permit, IERC5267 {
    /**
     * @notice The storage struct for the pair's configuration.
     * @param factory The factory contract address.
     * @param vault The collateral vault address.
     * @param aave The Aave pool address.
     * @param feeCollector The address that will receive the protocol fees.
     * @param feeLpBps The fee going to liquidity providers.
     * @param feePoolBps The fee going to the protocol.
     * @param burnFeeBps The fee retained in reserves when burning liquidity.
     * @param borrowLimitBps The maximum ratio of all liquidity that can be borrowed.
     * @param liquidationPenaltyBps The penalty for liquidating a loan (additional collateral required).
     * @param swapPriceToleranceBps The maximum allowed spread between the real price and buy/sell prices in basis
     * points.
     * @param maxBorrowPerTickBps The maximum ratio that can be borrowed on a single tick, compared to the available
     * liquidity.
     * @param maxBorrowPerTickRangeBps The maximum ratio that can be borrowed on a tick range, compared to the available
     * liquidity.
     * @param priceDecay The decay period of the virtual price.
     * @param lastUpdateTimestamp The timestamp when state was last updated via {updateState}.
     * @param nextLoanId The ID for the next loan that will be created.
     * @param loan A mapping of loan IDs to loan data.
     * @param userLoans A mapping of user address to a list of loan IDs.
     * @param token0 The storage for token0 information.
     * @param token1 The storage for token1 information.
     */
    struct Storage {
        IUniPoolFactory factory;
        IUniPoolVault vault;
        IPool aave;
        address feeCollector;
        uint16 feeLpBps;
        uint16 feePoolBps;
        uint16 burnFeeBps;
        uint16 borrowLimitBps;
        uint16 liquidationPenaltyBps;
        uint16 swapPriceToleranceBps;
        uint32 maxBorrowPerTickBps;
        uint32 maxBorrowPerTickRangeBps;
        uint128 priceDecay;
        uint256 lastUpdateTimestamp;
        LoanId nextLoanId;
        mapping(LoanId => LoanInfo) loan;
        mapping(address => LoanId[]) userLoans;
        TokenStorage token0;
        TokenStorage token1;
    }

    /**
     * @notice Emitted when liquidity is provided to the pool.
     * @param sender Address initiating the mint.
     * @param to Address receiving the LP tokens.
     * @param amount0 Amount of token0 added as liquidity.
     * @param amount1 Amount of token1 added as liquidity.
     */
    event Mint(address indexed sender, address indexed to, uint256 amount0, uint256 amount1);

    /**
     * @notice Emitted when liquidity is removed from the pool.
     * @param sender Address initiating the burn.
     * @param to Address receiving the withdrawn tokens.
     * @param amount0 Amount of token0 returned to the user.
     * @param amount1 Amount of token1 returned to the user.
     */
    event Burn(address indexed sender, address indexed to, uint256 amount0, uint256 amount1);

    /**
     * @notice Emitted when a swap occurs on the pool.
     * @param sender Address initiating the swap.
     * @param amountIn The amount of input tokens being provided for the swap.
     * @param amountOut The amount of output tokens to be received from the swap.
     * @param to Address receiving the output tokens.
     * @param isZeroForOne Whether the swap is from token zero to one.
     */
    event Swap(
        address indexed sender, uint256 amountIn, uint256 amountOut, address indexed to, bool indexed isZeroForOne
    );

    /**
     * @notice Emitted when liquidity provider and protocol fees are updated.
     * @param feeLpBps New fee for liquidity providers.
     * @param feePoolBps New fee for the protocol.
     * @param burnFeeBps New fee applied when burning liquidity.
     */
    event FeesUpdated(uint16 feeLpBps, uint16 feePoolBps, uint16 burnFeeBps);

    /**
     * @notice Emitted when the loan fee has been updated.
     * @param token The address of the token for which the loan fee was updated.
     * @param loanFeeBps The new value for the loan fee in basis points.
     */
    event LoanFeeUpdated(address indexed token, uint16 loanFeeBps);

    /**
     * @notice Emitted when the `feeCollector` is updated.
     * @param previousFeeCollector The previous fee collector address.
     * @param newFeeCollector The new fee collector address.
     */
    event FeeCollectorUpdated(address indexed previousFeeCollector, address indexed newFeeCollector);

    /**
     * @notice Emitted when interest rate parameters are updated.
     * @param token The address of the token for which the interest model was updated.
     * @param protocolFeeBps The protocol fee taken on collected interests.
     * @param optimalPointBps New optimal utilization point in basis points.
     * @param interestRateBaseBps New interest rate in basis points (offset applied over the full utilization range).
     * @param interestRateOptimalBps New interest rate at the optimal utilization in basis points.
     * @param interestRateAddBps New interest rate at the maximum utilization in basis points.
     */
    event InterestRatesUpdated(
        address indexed token,
        uint16 protocolFeeBps,
        uint16 optimalPointBps,
        uint32 interestRateBaseBps,
        uint32 interestRateOptimalBps,
        uint32 interestRateAddBps
    );

    /**
     * @notice Emitted when the borrow limit basis points are updated.
     * @param newBorrowLimitBps New maximum ratio in basis points.
     */
    event BorrowLimitBpsUpdated(uint16 newBorrowLimitBps);

    /**
     * @notice Emitted when the liquidation penalty basis points are updated.
     * @param newLiquidationPenaltyBps New liquidation penalty in basis points.
     */
    event LiquidationPenaltyBpsUpdated(uint16 newLiquidationPenaltyBps);

    /**
     * @notice Emitted when the max borrow per tick basis points are updated.
     * @param newMaxBorrowPerTickBps New ratio of how much of the liquidity available on a single tick can be borrowed.
     * @param newMaxBorrowPerTickRangeBps New ratio of how much of the liquidity available on a tick range can be
     * borrowed.
     */
    event MaxBorrowPerTickAndRangeUpdated(uint32 newMaxBorrowPerTickBps, uint32 newMaxBorrowPerTickRangeBps);

    /**
     * @notice Emitted when the price decay is updated.
     * @param newPriceDecay New decay period in seconds.
     */
    event PriceDecayUpdated(uint128 newPriceDecay);

    /**
     * @notice Emitted when the swap price tolerance is updated.
     * @param newSwapPriceToleranceBps New tolerance in basis points.
     */
    event SwapPriceToleranceBpsUpdated(uint16 newSwapPriceToleranceBps);

    /**
     * @notice Emitted when a new loan is created.
     * @param owner The owner of the loan.
     * @param to The address which received the borrowed tokens.
     * @param token The token that was borrowed.
     * @param loanId The ID of the loan.
     * @param userIndex The index of the loan in the owner's loan list.
     * @param amount The amount of `token` which was borrowed.
     * @param collateral The amount of collateral that was deposited (other token from the pair).
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param interestMultiplier The interest multiplier for the borrowed token.
     */
    event Loan(
        address indexed owner,
        address indexed to,
        address indexed token,
        LoanId loanId,
        uint256 userIndex,
        uint256 amount,
        uint256 collateral,
        uint256 yieldAccumulator,
        uint256 interestMultiplier
    );

    /**
     * @notice Emitted when a loan's ownership changed.
     * @param loanId The ID of the loan.
     * @param from The original owner of the loan.
     * @param to The new owner of the loan.
     */
    event LoanOwnershipTransferred(LoanId indexed loanId, address indexed from, address indexed to);

    /**
     * @notice Emitted when several loans are created in one call to {borrowMultiple}.
     * @dev This event exists just so indexers can identify which loans were created at the same time.
     * To have the details of each loan, see {Loan}.
     * @param owner The owner of the loan.
     * @param isLeverage Whether this set of loans was made with leverage (the user didn't receive the tokens).
     * @param loanIds The IDs of the loans that were created.
     */
    event MultiLoans(address indexed owner, bool isLeverage, LoanId[] loanIds);

    /**
     * @notice Emitted when a loan has been completely or partially repaid.
     * @param owner The owner of the loan.
     * @param loanId The ID of the loan.
     * @param amount The unscaled amount that was repaid (without interests).
     * @param amountWithInterests The amount that was repaid, including interests.
     * @param remainingAmount The remaining unscaled amount on this loan.
     * @param autoswap Whether the autoswap feature was used (swapping collateral to repay the loan).
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param interestMultiplier The interest multiplier for the borrowed token.
     */
    event LoanRepaid(
        address indexed owner,
        LoanId indexed loanId,
        uint256 amount,
        uint256 amountWithInterests,
        uint256 remainingAmount,
        bool autoswap,
        uint256 yieldAccumulator,
        uint256 interestMultiplier
    );

    /**
     * @notice Emitted when a tick is liquidated.
     * @param tick The liquidated tick number.
     * @param oldTickVersion The liquidated tick version.
     * @param borrowedToken The token that was borrowed by loans in the tick.
     * @param borrowedTokenAmount The amount that was borrowed by the loans in the tick.
     * @param collateralAmount The amount of collateral that was retrieved from the vault to liquidate the loans.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param interestMultiplier The interest multiplier for the borrowed token.
     */
    event LiquidatedTick(
        int16 indexed tick,
        uint256 indexed oldTickVersion,
        address indexed borrowedToken,
        uint256 borrowedTokenAmount,
        uint256 collateralAmount,
        uint256 yieldAccumulator,
        uint256 interestMultiplier
    );

    /**
     * @notice Emitted when any of the reserve values is updated.
     * @param reserve0 The resulting reserve of token0.
     * @param reserve1 The resulting reserve of token1.
     * @param virtualReserve0In The virtual reserve for token0 inputs.
     * @param virtualReserve0Out The virtual reserve for token0 outputs.
     * @param virtualReserve1In The virtual reserve for token1 inputs.
     * @param virtualReserve1Out The virtual reserve for token1 outputs.
     * @param totalSupply The total supply of the LP tokens.
     */
    event ReservesUpdated(
        uint128 reserve0,
        uint128 reserve1,
        uint128 virtualReserve0In,
        uint128 virtualReserve0Out,
        uint128 virtualReserve1In,
        uint128 virtualReserve1Out,
        uint256 totalSupply
    );

    /**
     * @notice Emitted when any of the {TickData} values is updated.
     * @param tickId The combination of the tick number and tick version.
     * @param loans The number of loans in the tick.
     * @param amount The total amount of the borrowed token in this tick.
     * @param collateral The total amount of the collateral token for the loans in this tick.
     * @param isToken0 Whether the tick is for token0.
     */
    event TickDataUpdated(TickId tickId, uint256 loans, uint128 amount, uint128 collateral, bool isToken0);

    /// @dev The action cannot be performed by the caller.
    error UniPoolPairUnauthorized();

    /// @dev Not enough LP tokens were provided.
    error UniPoolPairInsufficientBurnedLiquidity();

    /// @dev Not enough tokens were provided to mint liquidity.
    error UniPoolPairInsufficientMintedLiquidity();

    /// @dev Not enough liquidity to perform the swap.
    error UniPoolPairInsufficientSwapLiquidity();

    /// @dev The callback did not transfer the expected amount of tokens.
    error UniPoolPairInsufficientPayment();

    /// @dev The callback did not transfer the expected amount of collateral for the loan fee.
    error UniPoolPairInsufficientLoanFee();

    /// @dev The borrowed amount exceeds the maximum.
    error UniPoolPairStateBorrowedExceedsMax();

    /// @dev The provided timestamp is too old.
    error UniPoolPairTimestampTooOld();

    /// @dev The provided amount is invalid.
    error UniPoolPairInvalidAmount();

    /// @dev The provided tick number is invalid.
    error UniPoolPairInvalidTick();

    /// @dev Address cannot be the zero address.
    error UniPoolPairZeroAddress();

    /// @dev The receiver of the swap is an invalid address.
    error UniPoolPairInvalidTo();

    /// @dev The input amount is less than required to perform the swap.
    error UniPoolPairInsufficientInput();

    /// @dev The output amount is less than the given minimum amount.
    error UniPoolPairInsufficientOutput();

    /// @dev The swap results in a lower constant K.
    error UniPoolPairInvalidK();

    /// @dev The spread between the buy/sell price and real price would exceed the threshold.
    error UniPoolPairExcessiveSpread();

    /// @dev The swap path is invalid.
    error UniPoolPairInvalidPath();

    /// @dev The pair address was not created through the factory.
    error UniPoolPairPairNotFound();

    /// @dev The sum of pool and liquidity provider fees exceeds maximum.
    error UniPoolPairFeeExceedsMax();

    /// @dev The collateral needed for the auto swap exceeds the collateral from the user in the vault.
    error UniPoolPairInsufficientCollateral();

    /// @dev The collateral needed for this loan would overflow the tick data storage, so this tick cannot be used.
    error UniPoolPairCollateralOverflow();

    /// @dev The input amount exceeds the max slippage.
    error UniPoolPairExceedMaxSwapInput();

    /// @dev The calculated collateral exceeds the allowed slippage.
    error UniPoolPairCollateralSlippageExceeded();

    /// @dev The loan parameters array is empty.
    error UniPoolPairEmptyLoanParams();

    /// @dev The deadline for the operation has passed.
    error UniPoolPairDeadline();

    /**
     * @dev Cannot create a loan with this amount as there is not enough available liquidity on that tick or tick
     * range.
     * @param isToken0 Whether the loan was for token0.
     * @param tick The tick where a loan would be created.
     * @param desiredAmount The amount of the loan which exceeds the available liquidity.
     * @param availableAmount The available amount on the tick or in the tick range containing the tick.
     */
    error UniPoolPairExceedsMaxBorrowable(bool isToken0, int16 tick, uint256 desiredAmount, uint256 availableAmount);

    /// @dev Cannot create a loan with this amount as it would exceed the global liquidity limit.
    error UniPoolPairExceedsMaxTotalBorrow();

    /// @dev The resulting price is smaller than {TickMath.MIN_PRICE}.
    error UniPoolPairPriceTooSmall();

    /// @dev The loan ID doesn't match the provided user index.
    error UniPoolPairInvalidLoanIndex();

    /// @dev The loan was already liquidated.
    error UniPoolPairLoanLiquidated();

    /// @dev The minting amounts are not proportional to the current reserves, which would change the price of the pool.
    error UniPoolPairMintNotProportional();

    /**
     * @notice Returns the number of decimals used for interest multipliers.
     * @return decimals_ Number of decimals for interest multipliers precision.
     */
    function INTEREST_MULTIPLIER_DECIMALS() external pure returns (uint8 decimals_);

    /**
     * @notice Returns the number of decimals used for ray math calculations.
     * @return decimals_ Number of decimals used in ray-based interest calculations.
     */
    function RAY_DECIMALS() external pure returns (uint8 decimals_);

    /**
     * @notice Returns the minimum liquidity required to be locked in the contract.
     * @return minLiquidity_ Amount of minimum locked liquidity.
     */
    function MINIMUM_LIQUIDITY() external pure returns (uint256 minLiquidity_);

    /**
     * @notice EIP712 typehash for the delegation of a loan repayment.
     * @dev Used within EIP712 messages for domain-specific signing, enabling recovery of the signer via
     * [ECDSA-recover](https://docs.openzeppelin.com/contracts/5.x/api/utils#ECDSA).
     * @return typehash_ The EIP712 {repay} typehash.
     */
    function REPAY_TYPEHASH() external pure returns (bytes32 typehash_);

    /**
     * @notice EIP712 typehash for the delegation of a loan transfer.
     * @dev Used within EIP712 messages for domain-specific signing, enabling recovery of the signer via
     * [ECDSA-recover](https://docs.openzeppelin.com/contracts/5.x/api/utils#ECDSA).
     * @return typehash_ The EIP712 {transferLoan} typehash.
     */
    function LOAN_TRANSFER_TYPEHASH() external pure returns (bytes32 typehash_);

    /**
     * @notice Gets both token0 and token1 addresses.
     * @return token0_ The token0 address.
     * @return token1_ The token1 address.
     */
    function getTokens() external view returns (IERC20 token0_, IERC20 token1_);

    /**
     * @notice Gets the address of the factory that created this pool.
     * @return factory_ Address of the UniPool factory.
     */
    function getFactory() external view returns (IUniPoolFactory factory_);

    /**
     * @notice Gets the current actual reserves of the pair (not account for pending liquidations).
     * @return reserve0_ Current reserve of token0.
     * @return reserve1_ Current reserve of token1.
     */
    function getReserves() external view returns (uint256 reserve0_, uint256 reserve1_);

    /**
     * @notice Gets the stored virtual reserves of the pair (at the time of the last state update).
     * @return reserves_ Virtual reserves.
     */
    function getVirtualReserves() external view returns (VirtualReserves memory reserves_);

    /**
     * @notice Previews the reserves and virtual reserves at a given timestamp, accounting for price interpolation and
     * pending liquidations.
     * @dev Liquidations are only simulated at the current block timestamp. For future timestamps, only virtual reserves
     * are updated through price interpolation, potential liquidations from those updated reserves are not simulated.
     * @param timestamp Future timestamp to preview reserves at. If timestamp predates the current block, it gets
     * clamped to the block's timestamp.
     * @return reserve0_ Previewed reserve for token0.
     * @return reserve1_ Previewed reserve for token1.
     * @return vr_ Previewed virtual reserves.
     */
    function previewReserves(uint256 timestamp)
        external
        view
        returns (uint256 reserve0_, uint256 reserve1_, VirtualReserves memory vr_);

    /**
     * @notice Gets the current interest multiplier for token0.
     * @return multiplier0_ Current interest multiplier for token0, with INTEREST_MULTIPLIER_DECIMALS decimals.
     */
    function getInterestMultiplier0() external view returns (uint256 multiplier0_);

    /**
     * @notice Gets the current interest multiplier for token1.
     * @return multiplier1_ Current interest multiplier for token1, with INTEREST_MULTIPLIER_DECIMALS decimals.
     */
    function getInterestMultiplier1() external view returns (uint256 multiplier1_);

    /**
     * @notice Previews the interest multiplier for token0 at a given timestamp, accounting for interests since the
     * last state update.
     * @param timestamp Future timestamp to preview interest at.
     * @return multiplier0_ Previewed interest multiplier for token0.
     */
    function previewInterestMultiplier0(uint256 timestamp) external view returns (uint256 multiplier0_);

    /**
     * @notice Previews the interest multiplier for token1 at a given timestamp, account for interests since the last
     * state update.
     * @param timestamp Future timestamp to preview interest at.
     * @return multiplier1_ Previewed interest multiplier for token1.
     */
    function previewInterestMultiplier1(uint256 timestamp) external view returns (uint256 multiplier1_);

    /**
     * @notice Gets the value of the vault yield accumulator for the tokens at the timestamp of the last state update.
     * @dev Note that the accumulator for token0 is used to adjust the tick prices for token1 loans and vice-versa.
     * @return yieldAcc0_ The vault yield accumulator for token0 (affecting token1 loans' liquidation price).
     * @return yieldAcc1_ The vault yield accumulator for token1 (affecting token0 loans' liquidation price).
     */
    function getLastYieldAccumulator() external view returns (uint256 yieldAcc0_, uint256 yieldAcc1_);

    /**
     * @notice Previews the value of the vault yield accumulator for the tokens.
     * @param isToken0 Whether to preview the yield accumulator for token0 loans or token1 loans.
     * @return yieldAcc_ The previewed vault yield accumulator for the chosen side.
     */
    function previewYieldAccumulator(bool isToken0) external view returns (uint256 yieldAcc_);

    /**
     * @notice Gets the timestamp of the last state update (see {updateState}).
     * @return timestamp_ The timestamp when the state was last updated.
     */
    function getLastUpdateTimestamp() external view returns (uint256 timestamp_);

    /**
     * @notice Gets the ID of the next loan that will be created.
     * @return id_ The next loan ID.
     */
    function getNextLoanId() external view returns (LoanId id_);

    /**
     * @notice Gets the total amount of token0 that has been borrowed.
     * @return borrowed0_ Total borrowed amount of token0.
     */
    function getTotalBorrowed0() external view returns (uint256 borrowed0_);

    /**
     * @notice Gets the total amount of token1 that has been borrowed.
     * @return borrowed1_ Total borrowed amount of token1.
     */
    function getTotalBorrowed1() external view returns (uint256 borrowed1_);

    /**
     * @notice Gets the total number of loans for each token.
     * @dev Some loans might already be liquidated, liquidation must happen before this call to retrieve an accurate
     * number.
     * @return loansToken0_ The total number of token0 loans.
     * @return loansToken1_ The total number of token1 loans.
     */
    function getTotalLoans() external view returns (uint256 loansToken0_, uint256 loansToken1_);

    /**
     * @notice Gets the parameters for the interest rate model.
     * @return paramsToken0_ The parameters of the interest rate model for token 0.
     * @return paramsToken1_ The parameters of the interest rate model for token 1.
     */
    function getInterestParamsBps()
        external
        view
        returns (InterestParams memory paramsToken0_, InterestParams memory paramsToken1_);

    /**
     * @notice Calculates the current variable interest rate for token0.
     * @return rate0_ Current interest rate for token0 with RAY_DECIMALS decimals.
     */
    function calcVariableInterestRate0() external view returns (uint256 rate0_);

    /**
     * @notice Calculates the current variable interest rate for token1.
     * @return rate1_ Current interest rate for token1 with RAY_DECIMALS decimals.
     */
    function calcVariableInterestRate1() external view returns (uint256 rate1_);

    /**
     * @notice Gets the maximum ratio of all liquidity that can be borrowed.
     * @return borrowLimitBps_ Maximum ratio in basis points.
     */
    function getBorrowLimitBps() external view returns (uint16 borrowLimitBps_);

    /**
     * @notice Gets the address of the protocol fee collector.
     * @return feeCollector_ Address of the fee collector.
     */
    function getFeeCollector() external view returns (address feeCollector_);

    /**
     * @notice Gets the value of the swap fee.
     * @return feeLpBps_ Swap fee in basis points going to liquidity providers.
     * @return feePoolBps_ Swap fee in basis points going to the pool.
     * @return burnFeeBps_ Fee in basis points retained in reserves when burning liquidity.
     */
    function getFeesBps() external view returns (uint16 feeLpBps_, uint16 feePoolBps_, uint16 burnFeeBps_);

    /**
     * @notice Gets the loan fees for each token side loans.
     * @return loanFee0_ The value, in basis points, for the fees on new token0 loans.
     * @return loanFee1_ The value, in basis points, for the fees on new token1 loans.
     */
    function getLoanFeesBps() external view returns (uint16 loanFee0_, uint16 loanFee1_);

    /**
     * @notice Gets the accumulated pool fees for token 0 and token 1.
     * @dev These fees are transferred to the `feeCollector` during mint and burn operations, and will be set to zero
     * after each successful transfer.
     * @return feePoolToken0_ The fees for token 0.
     * @return feePoolToken1_ The fees for token 1.
     */
    function getAccumulatedPoolFees() external view returns (uint256 feePoolToken0_, uint256 feePoolToken1_);

    /**
     * @notice Gets the liquidation penalty.
     * @return penaltyBps_ Liquidation penalty in basis points.
     */
    function getLiquidationPenaltyBps() external view returns (uint16 penaltyBps_);

    /**
     * @notice Gets essential information about the pair at the current block timestamp.
     * @return reserve0_ The reserve of token0.
     * @return reserve1_ The reserve of token1.
     * @return virtualReserves_ The virtual reserves.
     * @return feeLpBps_ The fee for liquidity providers.
     * @return feePoolBps_ The protocol fee.
     */
    function getReservesAndFees()
        external
        view
        returns (
            uint128 reserve0_,
            uint128 reserve1_,
            VirtualReserves memory virtualReserves_,
            uint16 feeLpBps_,
            uint16 feePoolBps_
        );

    /**
     * @notice Gets the price decay period (duration for the virtual reserves to reach the value of the real reserves).
     * @return decay_ Price decay in seconds.
     */
    function getPriceDecay() external view returns (uint128 decay_);

    /**
     * @notice Gets the swap price spread tolerance.
     * @return toleranceBps_ Spread tolerance in basis points.
     */
    function getSwapPriceToleranceBps() external view returns (uint16 toleranceBps_);

    /**
     * @notice Gets the ratio of how much of the liquidity available on a single tick and tick range can be borrowed.
     * @dev This can be greater than 100%.
     * @return maxBorrowPerTickBps_ Maximum borrowable ratio per tick in basis points.
     * @return maxBorrowPerTickRangeBps_ Maximum borrowable ratio per tick range in basis points.
     */
    function getMaxBorrowPerTickAndRange()
        external
        view
        returns (uint32 maxBorrowPerTickBps_, uint32 maxBorrowPerTickRangeBps_);

    /**
     * @notice Gets the information for a loan.
     * @param loanId The unique identifier of the loan.
     * @return info_ Information about the loan.
     */
    function getLoan(LoanId loanId) external view returns (LoanInfo memory info_);

    /**
     * @notice Count the number of loans for a user.
     * @dev Some loans in the list might already be liquidated. The tick version can be used to verify if the loan is
     * active.
     * @param user The address of the owner.
     * @return count_ The number of loans owned by the user.
     */
    function countUserLoans(address user) external view returns (uint256 count_);

    /**
     * @notice Count the number of active loans for a user.
     * @param user The address of the owner.
     * @return count_ The number of active loans owned by the user.
     */
    function countActiveUserLoans(address user) external view returns (uint256 count_);

    /**
     * @notice Gets the information for the loan of a user identified by its index.
     * @param user The address of the owner.
     * @param index The index of the loan in the list of user loans. Must be smaller than {countUserLoans}.
     * @return info_ Information about the loan.
     * @return loanId_ The loan ID.
     */
    function getUserLoan(address user, uint256 index) external view returns (LoanInfo memory info_, LoanId loanId_);

    /**
     * @notice Gets the current version for a tick.
     * @param tick The tick number.
     * @param isToken0 Whether to look for token0 loans.
     * @return version_ The current tick version.
     */
    function getTickVersion(int16 tick, bool isToken0) external view returns (uint232 version_);

    /**
     * @notice Gets the information for a tick of token0 loans.
     * @param tick The tick number.
     * @param tickVersion The version of the tick.
     * @return data_ Information about the tick.
     */
    function getTickData0(int16 tick, uint232 tickVersion) external view returns (TickData memory data_);

    /**
     * @notice Gets the information for a tick of token1 loans.
     * @param tick The tick number.
     * @param tickVersion The version of the tick.
     * @return data_ Information about the tick.
     */
    function getTickData1(int16 tick, uint232 tickVersion) external view returns (TickData memory data_);

    /**
     * @notice Gets the lowest tick number which contains an active loan for token0.
     * @dev If there are pending liquidations, this tick could contain underwater positions until {liquidate} is called.
     * @return tick_ The lowest tick number for token0 loans.
     */
    function getLowestTick0() external view returns (int16 tick_);

    /**
     * @notice Gets the lowest tick number which contains an active loan for token1.
     * @dev If there are pending liquidations, this tick could contain underwater positions until {liquidate} is called.
     * @return tick_ The lowest tick number for token1 loans.
     */
    function getLowestTick1() external view returns (int16 tick_);

    /**
     * @notice Convert a tick number into the corresponding liquidation price, taking into account the due interests.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {previewInterestMultiplier0} and {previewInterestMultiplier1} with the current
     * timestamp.
     * @param tick The tick number.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param collatYieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the multiplier adjustment result.
     * @return price_ The liquidation price corresponding to the tick.
     */
    function calcPriceAtTick(int16 tick, uint256 interestMultiplier, uint256 collatYieldAccumulator, bool roundUp)
        external
        view
        returns (uint256 price_);

    /**
     * @notice Convert a liquidation price (which takes into account accrued interests) into the corresponding tick
     * number.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {previewInterestMultiplier0} and {previewInterestMultiplier1} with the current
     * timestamp.
     * @param price The liquidation price.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param collatYieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the conversion result.
     * @return tick_ The tick number corresponding to the liquidation price.
     */
    function calcTickAtPrice(uint256 price, uint256 interestMultiplier, uint256 collatYieldAccumulator, bool roundUp)
        external
        view
        returns (int16 tick_);

    /**
     * @notice Initializes the pair with the given parameters.
     * @param params The parameters for initializing the pair.
     */
    function initialize(InitPairParams calldata params) external;

    /**
     * @notice Adds liquidity to the pool.
     * @dev Should be called from a contract that makes safety checks, like the {UniPoolRouter}.
     * @param amount0 Amount of token0 to add.
     * @param amount1 Amount of token1 to add.
     * @param to Address receiving the LP tokens.
     * @param data The additional data required to perform the token transfer with the callback.
     * @return liquidity_ Amount of LP tokens minted.
     */
    function mint(uint128 amount0, uint128 amount1, address to, bytes calldata data)
        external
        returns (uint256 liquidity_);

    /**
     * @notice Removes liquidity from the pool.
     * @dev Should be called from a contract that makes safety checks, like the {UniPoolRouter}.
     * The call will revert if removing liquidity would lead to an excessive loan utilization.
     * @param to Address receiving the withdrawn tokens.
     * @return amount0_ Amount of token0 returned.
     * @return amount1_ Amount of token1 returned.
     */
    function burn(address to) external returns (uint128 amount0_, uint128 amount1_);

    /**
     * @notice Swaps tokens on the pool.
     * @param params The swap parameters.
     * @dev The pair calls the `msg.sender`'s callback to retrieve the tokens.
     */
    function swap(SwapParams calldata params) external;

    /**
     * @notice Collects extra tokens that do not belong to the contract's reserves.
     * @param to Address receiving the collected tokens.
     */
    function skim(address to) external;

    /**
     * @notice Borrows a token from the pair, while providing the other token as collateral.
     * @dev The pair calls the `msg.sender`'s callback to retrieve the collateral if possible. Otherwise, the token must
     * be approved for spending.
     * If `params.owner` supports the {IUniPoolPairLoanTransferCallback} interface, the
     * {IUniPoolPairLoanTransferCallback-uniPoolPairLoanTransferCallback} callback will be executed.
     * @param params The parameters for the loan.
     * @return loanId_ The unique identifier for the loan.
     * @return userIndex_ The index of the loan in the owner's loan list.
     * @return collateral_ Amount paid as collateral (other token compared to borrowed token).
     */
    function borrow(BorrowParams calldata params)
        external
        returns (LoanId loanId_, uint256 userIndex_, uint128 collateral_);

    /**
     * @notice Borrows a token from the pair, while providing the other token as collateral.
     * This function creates a loan for every element in the `loanParams` array.
     * @dev The pair calls the `msg.sender`'s callback to retrieve the collateral if possible. Otherwise, the token must
     * be approved for spending.
     * If `params.owner` supports the {IUniPoolPairLoanTransferCallback} interface, the
     * {IUniPoolPairLoanTransferCallback-uniPoolPairLoansTransferCallback} callback will be executed.
     * @param params The parameters for the loan.
     * @return loanIds_ The unique identifiers of every created loan.
     * @return firstUserIndex_ The index of the first newly created loan in the owner's loan list (increment by one for
     * all other loans).
     * @return collateral_ Amount paid as collateral (other token compared to borrowed token).
     */
    function borrow(BorrowMultipleParams calldata params)
        external
        returns (LoanId[] memory loanIds_, uint256 firstUserIndex_, uint128 collateral_);

    /**
     * @notice Repays the entirety or part of a loan.
     * @dev The pair calls the `msg.sender`'s callback to retrieve the amount if possible. Otherwise, the token must
     * be approved for spending.
     * @param params The parameters of the repay action.
     * @return success_ Whether the loan could be repaid (true) or was liquidated (false).
     * @return remainingAmount_ The remaining loan size.
     */
    function repay(RepayParams calldata params) external returns (bool success_, uint256 remainingAmount_);

    /**
     * @notice Transfers the ownership of the loan to a new owner.
     * @dev If `to` supports the {IUniPoolPairLoanTransferCallback} interface, the
     * {IUniPoolPairLoanTransferCallback-uniPoolPairLoanTransferCallback} callback will be executed.
     * @param loanId The ID of the loan to transfer.
     * @param userIndex The index of the loan in the user's list of loans.
     * @param to The recipient of the loan.
     * @param deadline The deadline timestamp after which the transaction is invalid.
     * @param delegationSignature The signature to provide in case of a delegation.
     */
    function transferLoan(
        LoanId loanId,
        uint256 userIndex,
        address to,
        uint40 deadline,
        bytes memory delegationSignature
    ) external;

    /**
     * @notice Liquidates positions that have reached their liquidation threshold.
     * @dev This function processes all underwater ticks based on the current virtual price.
     * This function is called internally before each user action.
     * @return result_ The result of the liquidation process.
     */
    function liquidate() external returns (LiquidationResult memory result_);

    /**
     * @notice Updates the virtual reserves and recalculates the interest multipliers.
     * @dev This function is called internally before each user action.
     */
    function updateState() external;

    /// @notice Transfers accumulated protocol fees to the fee collector and resets their counters.
    function distributeProtocolFees() external;

    /**
     * @notice Sets the address that will receive fees.
     * @dev This function can only be called by the factory.
     * @param feeCollector New address that will receive fees.
     */
    function setFeeCollector(address feeCollector) external;

    /**
     * @notice Sets `feeLpBps` and `feePoolBps` for this pair.
     * @dev This function can only be called by the factory.
     * @param feeLpBps New fee going to liquidity providers.
     * @param feePoolBps New fee going to the protocol.
     * @param burnFeeBps New burn fee retained in reserves when burning liquidity.
     */
    function setFees(uint16 feeLpBps, uint16 feePoolBps, uint16 burnFeeBps) external;

    /**
     * @notice Sets `loanFeeBps` for the specified token.
     * @dev This function can only be called by the factory.
     * @param loanFeeBps The value of the loan fee, in basis points.
     * @param isToken0 Whether to update the fee for token0 (true) or token1 (false) loans.
     */
    function setLoanFeeBps(uint16 loanFeeBps, bool isToken0) external;

    /**
     * @notice Sets the interest rate parameters for the borrow curve.
     * @dev This function can only be called by the factory.
     * @param params The interest rate model parameters.
     * @param isToken0 True if interest rate of token 0 should be updated, false otherwise.
     */
    function setInterestRates(InterestParams calldata params, bool isToken0) external;

    /**
     * @notice Sets the maximum ratio of all liquidity that can be borrowed.
     * @dev This function can only be called by the factory.
     * @param borrowLimitBps Borrow limit expressed in basis points.
     */
    function setBorrowLimitBps(uint16 borrowLimitBps) external;

    /**
     * @notice Sets the liquidation penalty.
     * @dev This function can only be called by the factory.
     * This percentage is added to the required collateral amount which is given to the LP in case of liquidation.
     * @param liquidationPenaltyBps Penalty fee in basis points applied to liquidated positions.
     */
    function setLiquidationPenaltyBps(uint16 liquidationPenaltyBps) external;

    /**
     * @notice Sets the maximum ratio that can be borrowed compared to the available liquidity (tick and tick range).
     * @dev This function can only be called by the factory.
     * @param maxBorrowPerTickBps Max borrow ratio per tick in basis points.
     * @param maxBorrowPerTickRangeBps Max borrow ratio per tick range in basis points.
     */
    function setMaxBorrowPerTickAndRange(uint32 maxBorrowPerTickBps, uint32 maxBorrowPerTickRangeBps) external;

    /**
     * @notice Sets the price decay period.
     * @dev This function can only be called by the factory. Updates the state before changing the value.
     * @param priceDecay Time (seconds) over which price decays.
     */
    function setPriceDecay(uint128 priceDecay) external;

    /**
     * @notice Sets the swap price tolerance.
     * @dev This function can only be called by the factory.
     * @param swapPriceToleranceBps Tolerance in basis points for price spread validation.
     */
    function setSwapPriceToleranceBps(uint16 swapPriceToleranceBps) external;
}
