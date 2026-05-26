// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

/**
 * @title Errors library
 * @author Aave & Radiant
 * @custom:security-contact security@radiant.capital
 * @notice Defines the error messages emitted by the different contracts of the Aave & Radiant protocols
 * @dev Error messages prefix glossary:
 *  - VL = ValidationLogic
 *  - MATH = Math libraries
 *  - CT = Common errors between tokens (AToken, VariableDebtToken and StableDebtToken)
 *  - AT = AToken
 *  - SDT = StableDebtToken
 *  - VDT = VariableDebtToken
 *  - LP = LendingPool
 *  - LPAPR = LendingPoolAddressesProviderRegistry
 *  - LPC = LendingPoolConfiguration
 *  - RL = ReserveLogic
 *  - LPCM = LendingPoolCollateralManager
 *  - P = Pausable
 */
library Errors {
    // Common errors
    error AddressZero();
    error AmountZero();
    error NotAContract();
    error NotAuthorized();

    // Oracle specific errors
    error NoFeedSet();
    error NoFallbackFeedSet();
    error NoPriceAvailable();
    error PoolDisabled();
    error PoolNotDisabled();
    // Oracle specific errors
    error RoundNotComplete();

    // Oracles General errors
    error InvalidOracleProviderType();
    error InvalidFeed();
    error NegativePythPriceValue(int64 price);
    error NegativeChainlinkPriceValue(int256 answer);
    error ExponentOutOfRange(int32 expo);

    // Riz Registry errors
    error PoolRegisteredAlready();
    error NoAddressProvider();
    error NotLPConfigurator();

    // Riz LockZap errors
    error CannotRizZap();
    error InvalidLendingPool();
    error InvalidRatio();
    error InvalidLockLength();
    error SlippageTooHigh();
    error SpecifiedSlippageExceedLimit();
    error InvalidZapETHSource();
    error ReceivedETHOnAlternativeAssetZap();
    error InsufficientETH();
    error SwapFailed(address asset, uint256 amount);
    error WrongRoute(address fromToken, address toToken);

    // RizLendingPoolConfigurator errors
    error DecimalsOutOfRange(uint256 decimals);

    // RizLendingPoolAddressesProvider errors
    error InvalidId(bytes32 id);
    error MarketIdAlreadySet();

    // Riz Leverager errors
    error ReceiveNotAllowed();
    error FallbackNotAllowed();

    /// @notice Disallow a loop count of 0
    error InvalidLoopCount();

    /// @notice Thrown when deployer sets the margin too high
    error MarginTooHigh();

    // Revenue Management errors
    error OutputTokenConfigLengthMismatch();
    error InputTokenConfigLengthMismatch();
    error IndexOutOfBounds();
    error OutputTokenBalanceOutOfRange();
    error TokenAlreadyAdded();
    error TokenNotPresent();
    error PercentageMismatch();
    error InvalidSwapStrategy();
    error DexSwapFailed();
    error ReceivedLessThanMinOutput();
    error InvalidInputData();
    error AddressNotApproved();
    error NativeAssetsNotSupported();
    error DuplicateOutputToken();

    // Bad Debt Manager errors
    error OnlyLendingPool();
    error UserAlreadyWithdrawn();
    error BadDebtIsZero();
    error UserAllowanceZero();
    error NotEmergencyAdmin();
    error InvalidAssetsLength();

    // BaseStrategy errors
    error NotSelf();

    // TokenizedStrategy errors
    error ReentrantCall();
    error NotManagement();
    error NotKeeper();
    error NotEmergencyAuthorized();
    error AlreadyInitialized();
    error InvalidChainID();
    error CannotBeSelf();
    error ZeroShares();
    error ZeroAssets();
    error DepositMoreThanMax();
    error MintMoreThanMax();
    error WithdrawMoreThanMax();
    error RedeemMoreThanMax();
    error SelfMint();
    error ExceedsMaxBPS();
    error TooMuchLoss();
    error NotShutdown();
    error NotPending();
    error ExceedsMaxFee();
    error TooLong();
    error InvalidTransfer();
    error CannotMintToAddressZero();
    error CannotBurnToAddressZero();
    error CannotApproveAddressZero();
    error InsufficientAllowance();
    error PermitDeadlineExpired();
    error InvalidSigner();

    // Common aave errors
    string public constant CALLER_NOT_POOL_ADMIN = "33"; // 'The caller must be the pool admin'
    string public constant BORROW_ALLOWANCE_NOT_ENOUGH = "59"; // User borrows on behalf, but allowance are too small

    // Contract specific errors
    string public constant VL_INVALID_AMOUNT = "1"; // 'Amount must be greater than 0'
    string public constant VL_NO_ACTIVE_RESERVE = "2"; // 'Action requires an active reserve'
    string public constant VL_RESERVE_FROZEN = "3"; // 'Action cannot be performed because the reserve is frozen'
    string public constant VL_CURRENT_AVAILABLE_LIQUIDITY_NOT_ENOUGH = "4"; // 'The current liquidity is not enough'
    string public constant VL_NOT_ENOUGH_AVAILABLE_USER_BALANCE = "5"; // 'User cannot withdraw more than the available
        // balance'
    string public constant VL_TRANSFER_NOT_ALLOWED = "6"; // 'Transfer cannot be allowed.'
    string public constant VL_BORROWING_NOT_ENABLED = "7"; // 'Borrowing is not enabled'
    string public constant VL_INVALID_INTEREST_RATE_MODE_SELECTED = "8"; // 'Invalid interest rate mode selected'
    string public constant VL_COLLATERAL_BALANCE_IS_0 = "9"; // 'The collateral balance is 0'
    string public constant VL_HEALTH_FACTOR_LOWER_THAN_LIQUIDATION_THRESHOLD = "10"; // 'Health factor is lesser than
        // the liquidation threshold'
    string public constant VL_COLLATERAL_CANNOT_COVER_NEW_BORROW = "11"; // 'There is not enough collateral to cover a
        // new borrow'
    string public constant VL_STABLE_BORROWING_NOT_ENABLED = "12"; // stable borrowing not enabled
    string public constant VL_COLLATERAL_SAME_AS_BORROWING_CURRENCY = "13"; // collateral is (mostly) the same currency
        // that is being borrowed
    string public constant VL_AMOUNT_BIGGER_THAN_MAX_LOAN_SIZE_STABLE = "14"; // 'The requested amount is greater than
        // the max loan size in stable rate mode
    string public constant VL_NO_DEBT_OF_SELECTED_TYPE = "15"; // 'for repayment of stable debt, the user needs to have
        // stable debt, otherwise, he needs to have variable debt'
    string public constant VL_NO_EXPLICIT_AMOUNT_TO_REPAY_ON_BEHALF = "16"; // 'To repay on behalf of an user an
        // explicit amount to repay is needed'
    string public constant VL_NO_STABLE_RATE_LOAN_IN_RESERVE = "17"; // 'User does not have a stable rate loan in
        // progress on this reserve'
    string public constant VL_NO_VARIABLE_RATE_LOAN_IN_RESERVE = "18"; // 'User does not have a variable rate loan in
        // progress on this reserve'
    string public constant VL_UNDERLYING_BALANCE_NOT_GREATER_THAN_0 = "19"; // 'The underlying balance needs to be
        // greater than 0'
    string public constant VL_DEPOSIT_ALREADY_IN_USE = "20"; // 'User deposit is already being used as collateral'
    string public constant LP_NOT_ENOUGH_STABLE_BORROW_BALANCE = "21"; // 'User does not have any stable rate loan for
        // this reserve'
    string public constant LP_INTEREST_RATE_REBALANCE_CONDITIONS_NOT_MET = "22"; // 'Interest rate rebalance conditions
        // were not met'
    string public constant LP_LIQUIDATION_CALL_FAILED = "23"; // 'Liquidation call failed'
    string public constant LP_NOT_ENOUGH_LIQUIDITY_TO_BORROW = "24"; // 'There is not enough liquidity available to
        // borrow'
    string public constant LP_REQUESTED_AMOUNT_TOO_SMALL = "25"; // 'The requested amount is too small for a FlashLoan.'
    string public constant LP_INCONSISTENT_PROTOCOL_ACTUAL_BALANCE = "26"; // 'The actual balance of the protocol is
        // inconsistent'
    string public constant LP_CALLER_NOT_LENDING_POOL_CONFIGURATOR = "27"; // 'The caller of the function is not the
        // lending pool configurator'
    string public constant LP_INCONSISTENT_FLASHLOAN_PARAMS = "28";
    string public constant CT_CALLER_MUST_BE_LENDING_POOL = "29"; // 'The caller of this function must be a lending
        // pool'
    string public constant CT_CANNOT_GIVE_ALLOWANCE_TO_HIMSELF = "30"; // 'User cannot give allowance to himself'
    string public constant CT_TRANSFER_AMOUNT_NOT_GT_0 = "31"; // 'Transferred amount needs to be greater than zero'
    string public constant RL_RESERVE_ALREADY_INITIALIZED = "32"; // 'Reserve has already been initialized'
    string public constant LPC_RESERVE_LIQUIDITY_NOT_0 = "34"; // 'The liquidity of the reserve needs to be 0'
    string public constant LPC_INVALID_ATOKEN_POOL_ADDRESS = "35"; // 'The liquidity of the reserve needs to be 0'
    string public constant LPC_INVALID_STABLE_DEBT_TOKEN_POOL_ADDRESS = "36"; // 'The liquidity of the reserve needs to
        // be 0'
    string public constant LPC_INVALID_VARIABLE_DEBT_TOKEN_POOL_ADDRESS = "37"; // 'The liquidity of the reserve needs
        // to be 0'
    string public constant LPC_INVALID_STABLE_DEBT_TOKEN_UNDERLYING_ADDRESS = "38"; // 'The liquidity of the reserve
        // needs to be 0'
    string public constant LPC_INVALID_VARIABLE_DEBT_TOKEN_UNDERLYING_ADDRESS = "39"; // 'The liquidity of the reserve
        // needs to be 0'
    string public constant LPC_INVALID_ADDRESSES_PROVIDER_ID = "40"; // 'The liquidity of the reserve needs to be 0'
    string public constant LPC_INVALID_CONFIGURATION = "75"; // 'Invalid risk parameters for the reserve'
    string public constant LPC_CALLER_NOT_EMERGENCY_ADMIN = "76"; // 'The caller must be the emergency admin'
    string public constant LPAPR_PROVIDER_NOT_REGISTERED = "41"; // 'Provider is not registered'
    string public constant LPCM_HEALTH_FACTOR_NOT_BELOW_THRESHOLD = "42"; // 'Health factor is not below the threshold'
    string public constant LPCM_COLLATERAL_CANNOT_BE_LIQUIDATED = "43"; // 'The collateral chosen cannot be liquidated'
    string public constant LPCM_SPECIFIED_CURRENCY_NOT_BORROWED_BY_USER = "44"; // 'User did not borrow the specified
        // currency'
    string public constant LPCM_NOT_ENOUGH_LIQUIDITY_TO_LIQUIDATE = "45"; // "There isn't enough liquidity available to
        // liquidate"
    string public constant LPCM_NO_ERRORS = "46"; // 'No errors'
    string public constant LP_INVALID_FLASHLOAN_MODE = "47"; //Invalid flashloan mode selected
    string public constant MATH_MULTIPLICATION_OVERFLOW = "48";
    string public constant MATH_ADDITION_OVERFLOW = "49";
    string public constant MATH_DIVISION_BY_ZERO = "50";
    string public constant RL_LIQUIDITY_INDEX_OVERFLOW = "51"; //  Liquidity index overflows uint128
    string public constant RL_VARIABLE_BORROW_INDEX_OVERFLOW = "52"; //  Variable borrow index overflows uint128
    string public constant RL_LIQUIDITY_RATE_OVERFLOW = "53"; //  Liquidity rate overflows uint128
    string public constant RL_VARIABLE_BORROW_RATE_OVERFLOW = "54"; //  Variable borrow rate overflows uint128
    string public constant RL_STABLE_BORROW_RATE_OVERFLOW = "55"; //  Stable borrow rate overflows uint128
    string public constant CT_INVALID_MINT_AMOUNT = "56"; //invalid amount to mint
    string public constant LP_FAILED_REPAY_WITH_COLLATERAL = "57";
    string public constant CT_INVALID_BURN_AMOUNT = "58"; //invalid amount to burn
    string public constant LP_FAILED_COLLATERAL_SWAP = "60";
    string public constant LP_INVALID_EQUAL_ASSETS_TO_SWAP = "61";
    string public constant LP_REENTRANCY_NOT_ALLOWED = "62";
    string public constant LP_CALLER_MUST_BE_AN_ATOKEN = "63";
    string public constant LP_IS_PAUSED = "64"; // 'Pool is paused'
    string public constant LP_NO_MORE_RESERVES_ALLOWED = "65";
    string public constant LP_INVALID_FLASH_LOAN_EXECUTOR_RETURN = "66";
    string public constant RC_INVALID_LTV = "67";
    string public constant RC_INVALID_LIQ_THRESHOLD = "68";
    string public constant RC_INVALID_LIQ_BONUS = "69";
    string public constant RC_INVALID_DECIMALS = "70";
    string public constant RC_INVALID_RESERVE_FACTOR = "71";
    string public constant LPAPR_INVALID_ADDRESSES_PROVIDER_ID = "72";
    string public constant VL_INCONSISTENT_FLASHLOAN_PARAMS = "73";
    string public constant LP_INCONSISTENT_PARAMS_LENGTH = "74";
    string public constant UL_INVALID_INDEX = "77";
    string public constant LP_NOT_CONTRACT = "78";
    string public constant SDT_STABLE_DEBT_OVERFLOW = "79";
    string public constant SDT_BURN_EXCEEDS_BALANCE = "80";

    /**
     * @dev Custom Radiant codes added +200 to avoid conflicts with the AaveV2/V3 ones
     * @custom:borrow-and-supply-caps
     */
    string public constant INVALID_BORROW_CAP = "201"; // Invalid borrow cap value
    string public constant INVALID_SUPPLY_CAP = "202"; // Invalid supply cap value
    string public constant BORROW_CAP_EXCEEDED = "203"; // Borrow cap is exceeded
    string public constant SUPPLY_CAP_EXCEEDED = "204"; // Supply cap is exceeded

    enum CollateralManagerErrors {
        NO_ERROR,
        NO_COLLATERAL_AVAILABLE,
        COLLATERAL_CANNOT_BE_LIQUIDATED,
        CURRRENCY_NOT_BORROWED,
        HEALTH_FACTOR_ABOVE_THRESHOLD,
        NOT_ENOUGH_LIQUIDITY,
        NO_ACTIVE_RESERVE,
        HEALTH_FACTOR_LOWER_THAN_LIQUIDATION_THRESHOLD,
        INVALID_EQUAL_ASSETS_TO_SWAP,
        FROZEN_RESERVE
    }
}
