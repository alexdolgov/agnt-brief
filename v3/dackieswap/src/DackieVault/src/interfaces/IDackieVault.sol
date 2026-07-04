// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title IDackieVault
 * @notice Interface for DackieVault - a vault for managing full-range Uniswap V3 liquidity
 * positions on WETH/DACKIE pair with automatic fee collection and conversion to cbBTC
 */
interface IDackieVault {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a user deposits liquidity into the vault
     * @param user The address of the user making the deposit
     * @param liquidity The amount of liquidity added
     * @param amountWETH The amount of WETH deposited
     * @param amountDACKIE The amount of DACKIE deposited
     */
    event Deposit(address indexed user, uint128 liquidity, uint256 amountWETH, uint256 amountDACKIE);

    /**
     * @notice Emitted when a user withdraws liquidity from the vault
     * @param user The address of the user making the withdrawal
     * @param liquidity The amount of liquidity removed
     * @param amountWETH The amount of WETH withdrawn
     * @param amountDACKIE The amount of DACKIE withdrawn
     */
    event Withdraw(address indexed user, uint128 liquidity, uint256 amountWETH, uint256 amountDACKIE);

    /**
     * @notice Emitted when fees are collected for a user
     * @param user The address of the user collecting fees
     * @param amountWETH The amount of WETH fees collected
     * @param amountDACKIE The amount of DACKIE fees collected
     */
    event FeesCollected(address indexed user, uint256 amountWETH, uint256 amountDACKIE);

    /**
     * @notice Emitted when fees are converted to cbBTC and split
     * @param user The address of the user for whom fees were converted
     * @param amountWETHIn The amount of WETH converted
     * @param amountDACKIEIn The amount of DACKIE converted
     * @param amountCbBTCUser The amount of cbBTC sent to user
     * @param amountCbBTCTreasury The amount of cbBTC sent to treasury
     */
    event FeesConverted(
        address indexed user,
        uint256 amountWETHIn,
        uint256 amountDACKIEIn,
        uint256 amountCbBTCUser,
        uint256 amountCbBTCTreasury
    );

    /**
     * @notice Emitted when treasury configuration is updated
     * @param treasury The new treasury address
     * @param feeBps The new treasury fee in basis points
     */
    event TreasuryUpdated(address indexed treasury, uint16 feeBps);

    /**
     * @notice Emitted when swap paths are updated
     * @param pathWETH New path for WETH to cbBTC swaps
     * @param pathDACKIE New path for DACKIE to cbBTC swaps
     */
    event SwapPathsUpdated(bytes pathWETH, bytes pathDACKIE);

    /**
     * @notice Emitted when the swap router is updated
     * @param router New swap router address
     */
    event SwapRouterUpdated(address indexed router);

    /**
     * @notice Emitted when liquidity is locked
     * @param user The address of the user locking liquidity
     * @param liquidityAdded The amount of liquidity locked
     * @param lockedUntil The timestamp when the liquidity can be unlocked
     */
    event LiquidityLocked(address indexed user, uint128 liquidityAdded, uint64 lockedUntil);

    /**
     * @notice Emitted when normal liquidity is converted to locked
     * @param user The address of the user converting liquidity
     * @param liquidityConverted The amount of liquidity converted
     * @param lockedUntil The timestamp when the liquidity can be unlocked
     */
    event LiquidityConvertedToLocked(address indexed user, uint128 liquidityConverted, uint64 lockedUntil);

    /**
     * @notice Emitted when locked liquidity is unlocked
     * @param user The address of the user whose liquidity was unlocked
     * @param liquidityUnlocked The amount of liquidity unlocked
     */
    event LockedLiquidityUnlocked(address indexed user, uint128 liquidityUnlocked);

    /**
     * @notice Emitted when locked liquidity is increased
     * @param user The address of the user increasing locked liquidity
     * @param liquidityAdded The amount of liquidity added
     * @param lockedUntil The timestamp when the liquidity can be unlocked
     */
    event LockedLiquidityIncreased(address indexed user, uint128 liquidityAdded, uint64 lockedUntil);

    /**
     * @notice Emitted when lock duration is extended
     * @param user The address of the user extending the lock
     * @param oldLockedUntil The previous lock expiry timestamp
     * @param newLockedUntil The new lock expiry timestamp
     */
    event LockDurationExtended(address indexed user, uint64 oldLockedUntil, uint64 newLockedUntil);

    /**
     * @notice Emitted when locked liquidity is increased and duration extended
     * @param user The address of the user
     * @param liquidityAdded The amount of liquidity added
     * @param newLockedUntil The new lock expiry timestamp
     */
    event LockedLiquidityIncreasedAndExtended(address indexed user, uint128 liquidityAdded, uint64 newLockedUntil);

    /**
     * @notice Emitted when expired locked liquidity is converted to normal
     * @param user The address of the user
     * @param liquidityConverted The amount of liquidity converted
     */
    event ExpiredLockedConvertedToNormal(address indexed user, uint128 liquidityConverted);

    /**
     * @notice Emitted when expired lock is extended
     * @param user The address of the user
     * @param newLockedUntil The new lock expiry timestamp
     */
    event ExpiredLockExtended(address indexed user, uint64 newLockedUntil);

    /**
     * @notice Emitted when a new DACKIE reward period starts
     * @param periodNumber The period number
     * @param startTime Period start timestamp
     * @param endTime Period end timestamp
     * @param dackiePerSecond DACKIE emission rate per second
     * @param totalAmount Total DACKIE amount for the period
     */
    event DACKIERewardPeriodStarted(
        uint256 indexed periodNumber,
        uint256 startTime,
        uint256 endTime,
        uint256 dackiePerSecond,
        uint256 totalAmount
    );

    /**
     * @notice Emitted when DACKIE rewards are distributed to a user
     * @param user The address of the user receiving rewards
     * @param amount The amount of DACKIE rewards distributed
     */
    event DACKIERewardDistributed(address indexed user, uint256 amount);

    /**
     * @notice Emitted when the receiver address is updated
     * @param receiver The new receiver address
     */
    event ReceiverUpdated(address indexed receiver);

    /**
     * @notice Emitted during emergency DACKIE withdrawal
     * @param recipient The address receiving the emergency withdrawal
     * @param amount The amount of DACKIE withdrawn
     */
    event DACKIEEmergencyWithdraw(address indexed recipient, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Information about a user's position in the vault
     * @param normalLiquidity The user's normal liquidity (withdrawable anytime)
     * @param lockedLiquidity The user's locked liquidity (withdrawable after lockedUntil)
     * @param lockedUntil Timestamp when locked liquidity becomes withdrawable
     * @param pendingWETH Pending WETH fees to be collected
     * @param pendingDACKIE Pending DACKIE fees to be collected
     */
    struct UserInfo {
        uint128 normalLiquidity;
        uint128 lockedLiquidity;
        uint64 lockedUntil;
        uint256 pendingWETH;
        uint256 pendingDACKIE;
    }

    /**
     * @notice Information about the vault's shared position
     * @param tokenId The Uniswap V3 NFT token ID (0 if no position exists)
     * @param liquidity Total liquidity in the shared position
     */
    struct PositionInfo {
        uint256 tokenId;
        uint128 liquidity;
    }

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    error InsufficientLiquidity();
    error SlippageExceeded();
    error DeadlineExpired();
    error InsufficientFees();
    error SwapFailed();
    error InvalidPath();
    error ZeroAmount();
    error InvalidRouter();
    error InvalidLockDuration();
    error InsufficientNormalLiquidity();
    error LiquidityStillLocked();
    error LockExpired();
    error InvalidRewardDuration();
    error InvalidReceiver();
    error NoRewardsAvailable();
    error RewardPeriodExpired();

    /*//////////////////////////////////////////////////////////////
                            MAIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposit tokens to add liquidity to the vault
     * @param amountWETHDesired Desired amount of WETH to deposit
     * @param amountDACKIEDesired Desired amount of DACKIE to deposit
     * @param amountWETHMin Minimum amount of WETH to deposit (slippage protection)
     * @param amountDACKIEMin Minimum amount of DACKIE to deposit (slippage protection)
     * @param deadline Transaction deadline
     */
    function deposit(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external;

    /**
     * @notice Deposit tokens as locked liquidity to the vault
     * @param amountWETHDesired Desired amount of WETH to deposit
     * @param amountDACKIEDesired Desired amount of DACKIE to deposit
     * @param amountWETHMin Minimum amount of WETH to deposit (slippage protection)
     * @param amountDACKIEMin Minimum amount of DACKIE to deposit (slippage protection)
     * @param deadline Transaction deadline
     * @param lockDuration Duration to lock the liquidity in seconds
     */
    function depositLocked(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint32 lockDuration
    ) external;

    /**
     * @notice Convert normal liquidity to locked liquidity
     * @param liquidityToConvert Amount of normal liquidity to convert
     * @param lockDuration Duration to lock the liquidity in seconds
     */
    function convertToLocked(uint128 liquidityToConvert, uint32 lockDuration) external;

    /**
     * @notice Increase locked liquidity without changing lock duration
     * @param amountWETHDesired Desired amount of WETH to deposit
     * @param amountDACKIEDesired Desired amount of DACKIE to deposit
     * @param amountWETHMin Minimum amount of WETH to deposit (slippage protection)
     * @param amountDACKIEMin Minimum amount of DACKIE to deposit (slippage protection)
     * @param deadline Transaction deadline
     */
    function increaseLockedLiquidity(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external;

    /**
     * @notice Extend lock duration without changing liquidity
     * @param lockDuration Additional duration to extend the lock in seconds
     */
    function extendLockDuration(uint32 lockDuration) external;

    /**
     * @notice Increase locked liquidity and extend lock duration
     * @param amountWETHDesired Desired amount of WETH to deposit
     * @param amountDACKIEDesired Desired amount of DACKIE to deposit
     * @param amountWETHMin Minimum amount of WETH to deposit (slippage protection)
     * @param amountDACKIEMin Minimum amount of DACKIE to deposit (slippage protection)
     * @param deadline Transaction deadline
     * @param lockDuration Duration to extend the lock in seconds
     */
    function increaseLockedLiquidityAndExtend(
        uint256 amountWETHDesired,
        uint256 amountDACKIEDesired,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline,
        uint32 lockDuration
    ) external;

    /**
     * @notice Unlock expired locked liquidity
     */
    function unlockExpired() external;

    /**
     * @notice Convert expired locked liquidity to normal liquidity
     */
    function convertExpiredLockedToNormal() external;

    /**
     * @notice Withdraw liquidity from the vault
     * @param liquidityToRemove Amount of liquidity to remove
     * @param amountWETHMin Minimum amount of WETH to receive (slippage protection)
     * @param amountDACKIEMin Minimum amount of DACKIE to receive (slippage protection)
     * @param deadline Transaction deadline
     */
    function withdraw(
        uint256 liquidityToRemove,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external;

    /**
     * @notice Emergency withdraw without fee collection (faster, gas-efficient)
     * @param liquidityToRemove Amount of liquidity to remove
     * @param amountWETHMin Minimum WETH to receive
     * @param amountDACKIEMin Minimum DACKIE to receive
     * @param deadline Transaction deadline
     */
    function withdrawEmergency(
        uint256 liquidityToRemove,
        uint256 amountWETHMin,
        uint256 amountDACKIEMin,
        uint256 deadline
    ) external;

    /**
     * @notice Collect accrued fees and convert them to cbBTC with treasury split
     * @param minWETH Minimum WETH fees expected (0 to skip check)
     * @param minDACKIE Minimum DACKIE fees expected (0 to skip check)
     * @param minCbBTC Minimum cbBTC to receive from conversion (before treasury split)
     * @param deadline Transaction deadline
     * @return cbBTCSentToUser Amount of cbBTC sent to the user
     * @return cbBTCSentToTreasury Amount of cbBTC sent to treasury
     */
    function collectAndConvertFees(
        uint256 minWETH,
        uint256 minDACKIE,
        uint256 minCbBTC,
        uint256 deadline
    ) external returns (uint256 cbBTCSentToUser, uint256 cbBTCSentToTreasury);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Get pending fees for a user
     * @param user Address of the user
     * @return pendingWETH Amount of pending WETH fees
     * @return pendingDACKIE Amount of pending DACKIE fees
     */
    function pendingFees(address user) external view returns (uint256 pendingWETH, uint256 pendingDACKIE);

    /**
     * @notice Get pending DACKIE rewards for a user
     * @param user Address of the user
     * @return pending Amount of pending DACKIE rewards
     */
    function pendingDACKIEReward(address user) external view returns (uint256 pending);

    /**
     * @notice Get information about the vault's shared position
     * @return tokenId The Uniswap V3 NFT token ID (0 if no position)
     * @return liquidity Total liquidity in the position
     */
    function position() external view returns (uint256 tokenId, uint128 liquidity);

    /**
     * @notice Get comprehensive information about a user's position
     * @param user Address of the user
     * @return normalLiquidity User's normal liquidity
     * @return lockedLiquidity User's locked liquidity
     * @return lockedUntil Timestamp when locked liquidity becomes withdrawable
     * @return pendingWETH Pending WETH fees
     * @return pendingDACKIE Pending DACKIE fees
     */
    function userInfo(
        address user
    )
        external
        view
        returns (
            uint128 normalLiquidity,
            uint128 lockedLiquidity,
            uint64 lockedUntil,
            uint256 pendingWETH,
            uint256 pendingDACKIE
        );

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set the swap paths for converting fees to cbBTC
     * @param pathWETHToCbBTC Path for WETH to cbBTC swaps
     * @param pathDACKIEToCbBTC Path for DACKIE to cbBTC swaps
     */
    function setSwapPaths(bytes calldata pathWETHToCbBTC, bytes calldata pathDACKIEToCbBTC) external;

    /**
     * @notice Set the swap router address
     * @param swapRouter Address of the new swap router
     */
    function setSwapRouter(address swapRouter) external;

    /**
     * @notice Set treasury address for fee splitting
     * @param treasury New treasury address
     */
    function setTreasuryAddress(address treasury) external;

    /**
     * @notice Set treasury fee in basis points
     * @param bps New treasury fee in basis points
     */
    function setTreasuryFeeBps(uint16 bps) external;

    /**
     * @notice Update global fee accumulators by syncing with Uniswap V3 position
     * @dev Can be called by anyone to ensure fees are up-to-date
     */
    function updateGlobalFees() external;

    /**
     * @notice Update DACKIE reward period (called by receiver)
     * @param amount Amount of DACKIE to distribute
     * @param duration Period duration in seconds
     */
    function upkeep(uint256 amount, uint256 duration) external;

    /**
     * @notice Set receiver contract address
     * @param receiver Receiver contract address
     */
    function setReceiver(address receiver) external;

    /**
     * @notice Get latest reward period information
     * @return periodNumber Current period number
     * @return startTime Period start timestamp
     * @return endTime Period end timestamp
     * @return dackiePerSecond DACKIE emission rate per second
     */
    function getLatestRewardPeriod()
        external
        view
        returns (uint256 periodNumber, uint256 startTime, uint256 endTime, uint256 dackiePerSecond);
}
