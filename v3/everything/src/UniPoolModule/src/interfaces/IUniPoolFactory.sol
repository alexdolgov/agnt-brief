// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "./IUniPoolPair.sol";
import { IUniPoolVault } from "./IUniPoolVault.sol";

/**
 * @title IUniPoolFactory
 * @notice Interface for the UniPool Factory contract which manages pair creation and settings.
 */
interface IUniPoolFactory {
    /**
     * @notice The storage struct for the factory state variables.
     * @dev This struct is stored at a fixed storage slot and accessed via assembly for upgradeable contract
     * compatibility.
     * @param feeLpBps The fee going to liquidity providers.
     * @param feePoolBps The fee going to the protocol.
     * @param burnFeeBps The fee applied when burning liquidity.
     * @param interestProtocolFeeBps The fee taken on collected interests.
     * @param optimalPointBps The optimal utilization rate for lending.
     * @param interestRateBaseBps The base interest rate for lending.
     * @param interestRateOptimalBps The variable interest rate applied at the optimal utilization point.
     * @param interestRateAddBps The additional interest rate progressively added when utilization exceeds the optimal
     * point.
     * @param borrowLimitBps The maximum ratio of all liquidity that can be borrowed.
     * @param maxBorrowPerTickBps The maximum ratio that can be borrowed on a single tick, compared to the available
     * liquidity.
     * @param maxBorrowPerTickRangeBps The maximum ratio that can be borrowed on a tick range, compared to the available
     * liquidity.
     * @param liquidationPenaltyBps The penalty for liquidating a loan (additional collateral required).
     * @param loanFeeBps Fee taken on new loans, relative to the borrowed amount, taken in collateral denomination.
     * @param swapPriceToleranceBps The maximum allowed spread between the real price and buy/sell prices in basis
     * points.
     * @param priceDecay The decay period of the virtual price.
     * @param pair A double mapping that returns the address of the pair contract for two tokens (tokenA => tokenB =>
     * pair).
     * @param allPairs An array containing all created pair addresses.
     * @param feeCollector The address that will receive the protocol fees.
     * @param aavePool The address of the Aave v3 protocol pool.
     * @param beaconAddress The address of the UniPoolPair beacon contract.
     * @param vault The address of the vault.
     */
    struct Storage {
        uint16 feeLpBps;
        uint16 feePoolBps;
        uint16 burnFeeBps;
        uint16 interestProtocolFeeBps;
        uint16 optimalPointBps;
        uint32 interestRateBaseBps;
        uint32 interestRateOptimalBps;
        uint32 interestRateAddBps;
        uint16 borrowLimitBps;
        uint32 maxBorrowPerTickBps;
        uint32 maxBorrowPerTickRangeBps;
        uint16 liquidationPenaltyBps;
        uint16 loanFeeBps;
        uint16 swapPriceToleranceBps;
        uint128 priceDecay;
        mapping(address => mapping(address => address)) pair;
        address[] allPairs;
        address feeCollector;
        address aavePool;
        address beaconAddress;
        IUniPoolVault vault;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   Events                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Emitted when a UniPoolPair is created.
     * @param token0 Address of the token0.
     * @param token1 Address of the token1.
     * @param pair Address of the UniPoolPair created.
     * @param totalPairs Number of UniPoolPair created so far.
     */
    event PairCreated(address indexed token0, address indexed token1, address pair, uint256 totalPairs);

    /**
     * @notice Emitted when liquidity provider and protocol fees are updated.
     * @param feeLpBps New fee for liquidity providers.
     * @param feePoolBps New fee for the protocol.
     * @param burnFeeBps New burn fee applied when burning liquidity.
     */
    event FeesUpdated(uint16 feeLpBps, uint16 feePoolBps, uint16 burnFeeBps);

    /**
     * @notice Emitted when the default loan fee has been updated.
     * @param loanFeeBps New fee for loan creation.
     */
    event LoanFeeUpdated(uint16 loanFeeBps);

    /**
     * @notice Emitted when the `feeCollector` is updated.
     * @param previousFeeCollector The previous fee collector address.
     * @param newFeeCollector The new fee collector address.
     */
    event FeeCollectorUpdated(address indexed previousFeeCollector, address indexed newFeeCollector);

    /**
     * @notice Emitted when interest rate parameters are updated.
     * @param protocolFeeBps New protocol fee taken on collected interests.
     * @param optimalPointBps New optimal utilization point in basis points.
     * @param interestRateBaseBps New interest rate in basis points (offset applied over the full utilization range).
     * @param interestRateOptimalBps New interest rate at the optimal utilization in basis points.
     * @param interestRateAddBps New interest rate at the maximum utilization in basis points.
     */
    event InterestRatesUpdated(
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
     * @notice Emitted when the max borrow per tick and tick range are updated.
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

    /* -------------------------------------------------------------------------- */
    /*                                   Errors                                   */
    /* -------------------------------------------------------------------------- */

    /// @notice Thrown when attempting to create a pair with identical token addresses.
    error UniPoolFactoryIdenticalAddresses();

    /// @notice Thrown when one of the token addresses provided is a zero address.
    error UniPoolFactoryInvalidAddress();

    /// @notice Thrown when attempting to create a pair that already exists.
    error UniPoolFactoryPairAlreadyExists();

    /// @notice Thrown when a basis point input exceeds the maximum allowed value.
    error UniPoolExceedMaxBps();

    /// @notice Thrown when the optimal utilization point is set to zero.
    error UniPoolZeroOptimalPoint();

    /// @notice Thrown when the liquidation penalty exceeds the allowed maximum.
    error UniPoolMaxPenaltyExceeded();

    /// @notice Thrown when the combined liquidity provider and protocol fee exceeds the allowed maximum.
    error UniPoolExceedMaxFeesBps();

    /// @notice Thrown when the sum of interest rate parameters exceeds the allowed maximum.
    error UniPoolExceedMaxInterest();

    /// @notice Thrown when a provided price decay value is zero.
    error UniPoolFactoryInvalidPriceDecay();

    /// @notice Thrown when the swap price tolerance is below the minimum allowed value.
    error UniPoolFactoryInvalidSwapPriceTolerance();

    /// @notice Thrown when trying to initialize the vault more than once.
    error UniPoolFactoryVaultAlreadyInitialized();

    /// @notice Thrown when the vault is not initialized and the factory tries to create a new pair.
    error UniPoolFactoryVaultNotInitialized();

    /// @notice Thrown when the address given for the vault is the address 0.
    error UniPoolFactoryInvalidVaultAddress();

    /* -------------------------------------------------------------------------- */
    /*                                  Functions                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Initializes the proxy with the required addresses and default parameters.
     * @dev The owner must call {setVault} after the initialization before users can be able to create pairs.
     * @param owner The owner of the contract.
     * @param beaconAddress The address of the UniPoolPair beacon contract.
     * @param feeCollector Address that will collect the protocol fees.
     * @param aavePool The address of the Aave v3 pool.
     */
    function initialize(address owner, address beaconAddress, address feeCollector, address aavePool) external;

    /**
     * @notice Sets the vault address token pairs will use.
     * @dev This function can only be called once.
     * @param vault The address of the vault contract.
     */
    function setVault(IUniPoolVault vault) external;

    /**
     * @notice Gets the address of the protocol fee collector.
     * @return feeCollector_ Address of the fee collector.
     */
    function getFeeCollector() external view returns (address feeCollector_);

    /**
     * @notice Gets the address of the beacon contract used for deploying new pairs.
     * @return beaconAddress_ The address of the beacon contract.
     */
    function getBeaconAddress() external view returns (address beaconAddress_);

    /**
     * @notice Gets the address of the collateral vault.
     * @return vault_ The address of the vault.
     */
    function getVault() external view returns (address vault_);

    /**
     * @notice Gets the address of the aave V3 pool the vault will interact with.
     * @return aavePool_ The address of the aave pool.
     */
    function getAavePool() external view returns (address aavePool_);

    /**
     * @notice Gets the address of the token pair.
     * @dev The order of the token arguments does not matter.
     * @param token0 Address of the token0.
     * @param token1 Address of the token1.
     * @return pair_ Address of the pair.
     */
    function getPair(address token0, address token1) external view returns (address pair_);

    /**
     * @notice Gets the address of the pair at index provided.
     * @param index Index of the pair.
     * @return pair_ Address of the pair.
     */
    function getPairAtIndex(uint256 index) external view returns (address pair_);

    /**
     * @notice Gets the total number of pairs.
     * @return length_ Total number of pairs.
     */
    function getAllPairsLength() external view returns (uint256 length_);

    /**
     * @notice Gets the default values for the fees in basis points.
     * @return feeLpBps_ Fee going to liquidity providers.
     * @return feePoolBps_ Fee going to the protocol.
     * @return burnFeeBps_ Fee applied when burning liquidity.
     * @return loanFeeBps_ Fee applied on new loans.
     */
    function getFeesBps()
        external
        view
        returns (uint16 feeLpBps_, uint16 feePoolBps_, uint16 burnFeeBps_, uint16 loanFeeBps_);

    /**
     * @notice Gets the default parameters for the interest rate model.
     * @return params_ The interest rate model parameters.
     */
    function getInterestParamsBps() external view returns (InterestParams memory params_);

    /**
     * @notice Gets the maximum utilization rate for borrowing.
     * @return borrowLimitBps_ Maximum utilization in basis points.
     */
    function getBorrowLimitBps() external view returns (uint16 borrowLimitBps_);

    /**
     * @notice Gets the liquidation penalty.
     * @return liquidationPenaltyBps_ Liquidation penalty in basis points.
     */
    function getLiquidationPenaltyBps() external view returns (uint16 liquidationPenaltyBps_);

    /**
     * @notice Gets the ratio of how much of the liquidity available can be borrowed (per tick and tick range).
     * @dev This can be greater than 100%.
     * @return maxBorrowPerTickBps_ Maximum borrowable ratio per tick in basis points.
     * @return maxBorrowPerTickRangeBps_ Maximum borrowable ratio per tick range in basis points.
     */
    function getMaxBorrowPerTickAndRange()
        external
        view
        returns (uint32 maxBorrowPerTickBps_, uint32 maxBorrowPerTickRangeBps_);

    /**
     * @notice Gets the price decay period (duration for the virtual reserves to reach the value of the real reserves).
     * @return priceDecay_ Price decay in seconds.
     */
    function getPriceDecay() external view returns (uint128 priceDecay_);

    /**
     * @notice Gets the swap price tolerance.
     * @return swapPriceToleranceBps_ Maximum allowed spread between real and virtual prices in basis points.
     */
    function getSwapPriceToleranceBps() external view returns (uint16 swapPriceToleranceBps_);

    /**
     * @notice Creates a pair with two addresses.
     * @param token0 Address of token0.
     * @param token1 Address of token1.
     * @return pair_ Address of the pair created.
     */
    function createPair(address token0, address token1) external returns (IUniPoolPair pair_);

    /**
     * @notice Sets the address that will receive fees.
     * @param feeCollector New address that will receive fees.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setFeeCollector(address feeCollector, IUniPoolPair[] calldata pairs) external;

    /**
     * @notice Sets default fees or fees for a set of given pairs.
     * @dev Note that the loan fee must be set with {setLoanFeeBps}, because it can be different for both tokens in each
     * pair.
     * @param feeLpBps New fee going to liquidity providers.
     * @param feePoolBps New fee going to the protocol.
     * @param burnFeeBps New fee applied when burning liquidity.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setFees(uint16 feeLpBps, uint16 feePoolBps, uint16 burnFeeBps, IUniPoolPair[] calldata pairs) external;

    /**
     * @notice Sets the default loan fee or loan fee for a set of given tokens in some pairs.
     * @param loanFeeBps The new value for the loan fee in basis points.
     * @param tokens Optional list of tokens (pair-boolean tuples) to update (if empty, the default parameter for new
     * pairs are changed).
     */
    function setLoanFeeBps(uint16 loanFeeBps, PairToken[] calldata tokens) external;

    /**
     * @notice Sets the interest rate parameters for the borrow curve.
     * @param params The parameters of the interest model.
     * @param tokens Optional list of tokens (pair-boolean tuples) to update (if empty, the default parameters for new
     * pairs are changed).
     */
    function setInterestRates(InterestParams calldata params, PairToken[] calldata tokens) external;

    /**
     * @notice Sets the maximum ratio of all liquidity that can be borrowed.
     * @param borrowLimitBps Borrow limit expressed in basis points.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setBorrowLimitBps(uint16 borrowLimitBps, IUniPoolPair[] calldata pairs) external;

    /**
     * @notice Sets the liquidation penalty.
     * @param liquidationPenaltyBps Penalty fee in basis points applied to liquidated positions.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setLiquidationPenaltyBps(uint16 liquidationPenaltyBps, IUniPoolPair[] calldata pairs) external;

    /**
     * @notice Sets the maximum ratio that can be borrowed compared to the available liquidity (tick and tick range).
     * @param maxBorrowPerTickBps Max borrow ratio per tick in basis points.
     * @param maxBorrowPerTickRangeBps Max borrow ratio per tick range in basis points.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setMaxBorrowPerTickAndRange(
        uint32 maxBorrowPerTickBps,
        uint32 maxBorrowPerTickRangeBps,
        IUniPoolPair[] calldata pairs
    ) external;

    /**
     * @notice Sets the price decay period.
     * @param priceDecay Time (seconds) over which price decays.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setPriceDecay(uint128 priceDecay, IUniPoolPair[] calldata pairs) external;

    /**
     * @notice Sets the swap price tolerance.
     * @param swapPriceToleranceBps Tolerance in basis points for price spread validation. If using `uint16.max`, then
     * the check is disabled and any spread is acceptable.
     * @param pairs Optional list of pairs to update (if empty, the default parameters for new pairs are changed).
     */
    function setSwapPriceToleranceBps(uint16 swapPriceToleranceBps, IUniPoolPair[] calldata pairs) external;
}
