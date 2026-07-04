// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

// ERC support
import {SafeERC20} from "@openzeppelin/openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC20Upgradeable} from "@openzeppelin/openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC20} from "@openzeppelin/openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IERC721Receiver} from "@openzeppelin/openzeppelin-contracts/token/ERC721/IERC721Receiver.sol";

import {ICLFactory} from "./imported/SlipstreamWrappers/ICLFactory.sol";
import {ICLPool} from "./imported/SlipstreamWrappers/ICLPool.sol";
import {TickMath} from "./imported/TickMath.sol";
import {LiquidityAmounts} from "./imported/Libs.sol";
import {ICLMintCallback} from "@aerodrome-finance/slipstream/core/interfaces/callback/ICLMintCallback.sol";
import {ICLSwapCallback} from "@aerodrome-finance/slipstream/core/interfaces/callback/ICLSwapCallback.sol";
import {INonfungiblePositionManager} from "./imported/SlipstreamWrappers/INonfungiblePositionManager.sol";
import {ICLGauge} from "./imported/SlipstreamWrappers/ICLGauge.sol";

// Util support
import {PausableUpgradeable} from "@openzeppelin/openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin/openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Strings} from "@openzeppelin/openzeppelin-contracts/utils/Strings.sol";
import {IHelper} from "./imported/IHelper.sol";
// Sundry
import {IBareVaultRegistry} from "./imported/IBareVaultRegistry.sol";
import {IVeloStakedPositionManager} from "./interfaces/IVeloStakedPositionManager.sol";

contract VeloStakedPositionManager is
    Initializable,
    ERC20Upgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    IVeloStakedPositionManager,
    ICLMintCallback,
    ICLSwapCallback,
    IERC721Receiver
{
    using SafeERC20 for IERC20;

    // Storage

    uint256 internal constant PRECISION = 1e18;

    // Custom errors
    error WithdrawTooLittleToken0();
    error WithdrawTooLittleToken1();
    error InvalidRecipient();
    error SharesZero();
    error InvalidMaxTickChange();
    error InvalidTwapInterval();
    error InvalidTokenOrder();
    error PoolNotFound();
    error ZeroDeposit();
    error VaultNotActive();
    error InvalidTotalWeight();
    error InvalidSwapAmount();
    error PositionsOutOfOrder();
    error Imbalance1();
    error Imbalance0();
    error NotPool();
    error MintCallbackNotProtected();
    error SwapCallbackNotProtected();
    error NotStrategyCreator();

    /// @dev Can collect Steer fees
    bytes32 internal constant STEER_ROLE = keccak256("STEER_ROLE");
    /// @dev Can call tend function
    bytes32 internal constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    uint256 internal constant DIVISOR = 100_00;
    /// @dev maximum value that can be passed in total weight parameter of tend
    uint256 internal constant TOTAL_WEIGHT_MAX = 100_00;

    uint256 internal constant DIVISOR100 = 100;

    uint256 internal constant FIVE = 5;

    /// @dev maxTickChange value should be greater than MAX_TICK_CHANGE_MIN
    int24 internal constant MAX_TICK_CHANGE_MIN = 9;
    /// @dev maxTickChange value should be less than MAX_TICK_CHANGE_MAX
    int24 internal constant MAX_TICK_CHANGE_MAX = 2001;
    /// @dev twapInterval value should be greater than TWAP_INTERVAL_MIN
    uint32 internal constant TWAP_INTERVAL_MIN = 30;
    /// @dev twapInterval value should be less than TWAP_INTERVAL_MAX
    uint32 internal constant TWAP_INTERVAL_MAX = 600;

    /// @dev Address of CL Factory
    ICLFactory internal constant FACTORY =
        ICLFactory(0x5e7BB104d84c7CB9B682AaC2F3d509f5F406809A); // velo opt

    INonfungiblePositionManager internal constant _nftManager =
        INonfungiblePositionManager(0x827922686190790b37229fd06084350E74485b72);

    ICLGauge internal gauge;

    /// @dev Address of vault registry
    ///      Address strategist can collect strategist fees, but is not stored here.
    address internal vaultRegistry;

    /// @notice Addresses of Token0 and Token1
    IERC20 public token0;
    IERC20 public token1;
    IERC20 public rewardToken;

    bool public rewardIsPoolToken;
    bool public rewardIsToken0;

    // If reward token is token 0 or 1, adjust accounting
    uint256 internal rewardBal0;
    uint256 internal rewardBal1;

    /// @dev Fees currently owed to Steer
    uint256 public accruedSteerFees;
    uint256 public claimedSteerFees;

    /// @dev Fees currently owed to strategist
    uint256 public accruedStrategistFees;
    uint256 public claimedStrategistFees;

    /// @notice Address of CL pool
    ICLPool public pool;

    /// @dev For depositing
    /// Roughly corresponds to a 5% diff between current price and twap price
    int24 public maxTickChange;

    /// @dev Number of seconds to get the time-weighted average over
    uint32 public twapInterval;

    //For mint Callback Protection
    bool internal mintCallBackProtection;

    //For swap Callback Protection
    bool internal swapCallBackProtection;

    uint256 internal accumulatedRewardsPerShareP;

    // user => last
    mapping(address => uint256) internal userRewardDebt;

    address internal helper;

    LiquidityPositions internal positions;
    IHelper.NewLiquidityPositions[] internal opPositions;

    uint256[] internal tokenIds;

    // Events

    /// @dev Pool/vault info as of the end of a tend
    /// @param sqrtPriceX96 Current pool price
    /// @param totalAmount0 The total user-owned token0, including funds held in the vault
    ///                     and funds deposited into the pool
    /// @param totalSupply The total number of shares in this vault.
    event Snapshot(
        uint160 sqrtPriceX96,
        uint256 totalAmount0,
        uint256 totalAmount1,
        uint256 totalSupply
    );

    ///
    /// @param user User that recieved rewards
    /// @param rewards amount of rewards
    event RewardClaim(address indexed user, uint256 rewards);

    /// @dev Deposit info
    /// @param sender The address which provided the tokens
    /// @param to The receiver of vault shares from this deposit, generally the same as sender
    /// @param shares The number of shares that have been minted by this deposit
    /// @param amount0 The amount of t0 that was used to mint the shares
    /// @param amount1 The amount of t1 that was used to mint the shares
    event Deposit(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );

    /// @dev Withdraw info
    /// @param sender msg.sender and the owner of the shares being burned
    /// @param to The receiver of the tokens earned via the burn
    /// @param shares The number of shares being burned
    /// @param amount0 The amount of t0 earned via the burn
    /// @param amount1 The amount of t1 earned via the burn
    event Withdraw(
        address indexed sender,
        address indexed to,
        uint256 shares,
        uint256 amount0,
        uint256 amount1,
        uint256 fees
    );

    /// @dev Info on protocol fees earned. Triggers whenever a withdraw or a tend happens.
    /// @param amountEarned Total reward tokens earned, including fees going to steer and strategist.
    event FeesEarned(uint256 amountEarned);

    // Constructor
    constructor() {
        _disableInitializers();
    }

    function withdraw(
        uint256 shares,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    ) external returns (uint256 amount0, uint256 amount1, uint256 rewards) {
        // Move validation to a separate function to reduce stack variables
        _validateWithdraw(shares, to);

        // Save original share balance for later
        uint256 originalUserShares = balanceOf(msg.sender);

        // Create a struct to hold intermediate calculations
        WithdrawCache memory cache;

        // Update global rewards
        updateRewards();

        // Settle rewards before any share changes
        rewards = pullRewards(msg.sender);

        // Get the current totalSupply BEFORE burning shares
        cache.preBurnSupply = totalSupply();

        // Calculate token amounts to withdraw
        (amount0, amount1) = _calculateWithdrawAmounts(
            shares,
            cache.preBurnSupply
        );

        // Validate slippage protection
        if (amount0 < amount0Min) revert WithdrawTooLittleToken0();
        if (amount1 < amount1Min) revert WithdrawTooLittleToken1();

        // Burn the shares
        _burn(msg.sender, shares);

        // Update reward debt based on remaining balance
        uint256 remainingShares = originalUserShares - shares;
        if (remainingShares > 0) {
            userRewardDebt[msg.sender] =
                (remainingShares * accumulatedRewardsPerShareP) /
                PRECISION;
        } else {
            userRewardDebt[msg.sender] = 0;
        }

        // Transfer tokens to recipient
        _transferTokens(to, amount0, amount1);

        emit Withdraw(msg.sender, to, shares, amount0, amount1, rewards);
        return (amount0, amount1, rewards);
    }

    // Define a struct to hold intermediate calculations
    struct WithdrawCache {
        uint256 preBurnSupply;
    }

    // Helper function to calculate withdraw amounts
    function _calculateWithdrawAmounts(
        uint256 shares,
        uint256 preBurnSupply
    ) internal returns (uint256 amount0, uint256 amount1) {
        // Figure out how many vault-held tokens correspond to those shares
        uint256 vaultShare0 = (_getBalance0() * shares) / preBurnSupply;
        uint256 vaultShare1 = (_getBalance1() * shares) / preBurnSupply;

        // Withdraw the same fraction from all staked positions in the pool
        (uint256 poolShare0, uint256 poolShare1) = _burnAndCollect(
            shares,
            preBurnSupply
        );

        // Sum vault-held portion + pool portion
        amount0 = vaultShare0 + poolShare0;
        amount1 = vaultShare1 + poolShare1;
    }

    /**
     * @dev Validate basic conditions for a withdraw.
     */
    function _validateWithdraw(uint256 shares, address to) internal pure {
        if (to == address(0)) revert InvalidRecipient();
        if (shares == 0) revert SharesZero();
    }

    // Pull ALL user rewards
    // @note assumes update already called
    ///
    function pullRewards(address user) internal returns (uint256 rewards) {
        uint256 userShares = super.balanceOf(user);
        if (userShares > 0) {
            rewards =
                ((userShares * accumulatedRewardsPerShareP) / PRECISION) -
                userRewardDebt[user];

            if (rewards > 0) {
                // Update reward debt based on current shares only
                userRewardDebt[user] =
                    (userShares * accumulatedRewardsPerShareP) /
                    PRECISION;
                if (rewardIsPoolToken) {
                    if (rewardIsToken0) {
                        rewardBal0 -= rewards;
                    } else {
                        rewardBal1 -= rewards;
                    }
                }
                rewardToken.safeTransfer(user, rewards);
                emit RewardClaim(user, rewards);
            }
        }
    }

    /// @notice Used by periphery to verify vault is depositable.
    function supportsInterface(
        bytes4 interfaceId
    ) public view override returns (bool) {
        return
            IBareVaultRegistry(vaultRegistry).doISupportInterface(interfaceId);
    }

    /// @dev Pause and unpause
    function pause() external onlyRole(STEER_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(STEER_ROLE) {
        _unpause();
    }

    /// @dev Initializes vault
    /// @param _vaultManager is the address which will manage the vault being created, pass orchestrator address if the vault is meant to be managed by the orchestrator
    /// @param _steer The steer multisig address, responsible for some governance functions.
    /// @param _params All other parameters this vault will use
    function initialize(
        address _vaultManager,
        address, //orchestrator not needed here as, if this vault is to be managed by orchestrator, _vaultManager parameter should be the orchestrator address
        address _steer,
        bytes memory _params
    ) public override initializer {
        // _token0 is address of token0
        // _token1 is address of token1
        // _tickSpacing is the pool fee, how much is charged for a swap
        // _maxTickChange is max difference between TWAP tick and current tick,
        //      useful for protection against frontrunning. Cannot be negative.
        // _twapInterval is the number of seconds to get the time-weighted average over
        (
            address _token0,
            address _token1,
            uint24 _tickSpacing,
            int24 _maxTickChange,
            uint32 _twapInterval
        ) = abi.decode(_params, (address, address, uint24, int24, uint32));

        // Validate input parameters
        // Below values should be chosen according to the chain this contract is deployed on and
        // the volume of the pool it manages
        if (_maxTickChange <= MAX_TICK_CHANGE_MIN || _maxTickChange >= MAX_TICK_CHANGE_MAX) revert InvalidMaxTickChange();
        if (_twapInterval <= TWAP_INTERVAL_MIN || _twapInterval >= TWAP_INTERVAL_MAX) revert InvalidTwapInterval();

        // Context inits
        vaultRegistry = msg.sender;
        token0 = IERC20(_token0);
        token1 = IERC20(_token1);

        _internalInits(int24(_tickSpacing));

        gauge = ICLGauge(pool.gauge());

        rewardToken = IERC20(gauge.rewardToken());
        if (address(rewardToken) == address(token0)) {
            rewardIsPoolToken = true;
            rewardIsToken0 = true;
        } else if (address(rewardToken) == address(token1)) {
            rewardIsPoolToken = true;
            // rewardIsToken0 = false; // - false by default
        }

        helper = IBareVaultRegistry(vaultRegistry).vaultHelper();

        _grantRole(STEER_ROLE, _steer);
        _grantRole(MANAGER_ROLE, _vaultManager);

        // Set security params
        maxTickChange = _maxTickChange;
        twapInterval = _twapInterval;
    }

    function _internalInits(int24 tickSpacing) internal {
        if (address(token0) >= address(token1)) revert InvalidTokenOrder();

        // Get relevant pool from uniswap factory
        address _pool = FACTORY.getPool(
            address(token0),
            address(token1),
            tickSpacing
        );

        // Revert if pool doesn't exist yet
        if (_pool == address(0)) revert PoolNotFound();

        // Set pool
        pool = ICLPool(_pool);

        // Init the LP token ERC20 using totalVaultCount from the vaultRegistry
        // Naming system: STEER_VAULT_$TotalVaultCount, i.e. STEER_VAULT_20
        string memory vaultCount = Strings.toString(
            IBareVaultRegistry(vaultRegistry).totalVaultCount() + 1
        );
        __ERC20_init(
            string(abi.encodePacked("STEER_AEROCLMM_VAULT_", vaultCount)),
            string(abi.encodePacked("STEERCLM", vaultCount))
        );

        // Init everything else
        __Pausable_init();
        __AccessControl_init();
    }

    function deposit(
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    )
        public
        whenNotPaused
        returns (uint256 shares, uint256 amount0Used, uint256 amount1Used)
    {
        _validateDeposit(amount0Desired, amount1Desired, to);

        // 1. Compute how many shares we will mint, and how much of each token is used.
        (shares, amount0Used, amount1Used) = _computeDepositShares(
            amount0Desired,
            amount1Desired,
            amount0Min,
            amount1Min
        );

        // 2. Pull tokens in from the depositor.
        _pullInDepositTokens(amount0Used, amount1Used);

        // 3. Update reward state, handle any accrued user rewards, and mint shares.
        _finalizeDeposit(to, shares);

        emit Deposit(msg.sender, to, shares, amount0Used, amount1Used);
        return (shares, amount0Used, amount1Used);
    }

    /**
     * @dev Basic checks on deposit parameters and vault state.
     */
    function _validateDeposit(
        uint256 amount0Desired,
        uint256 amount1Desired,
        address to
    ) internal view {
        if (to == address(0)) revert InvalidRecipient();
        // Optionally ensure at least one desired deposit is nonzero
        if (amount0Desired == 0 && amount1Desired == 0) revert ZeroDeposit();

        IBareVaultRegistry.VaultState state = IBareVaultRegistry(vaultRegistry)
            .getVaultDetails(address(this))
            .state;
        if (state == IBareVaultRegistry.VaultState.PendingApproval || state == IBareVaultRegistry.VaultState.Paused || state == IBareVaultRegistry.VaultState.Retired) revert VaultNotActive();
    }

    /**
     * @dev Calculates how many shares to mint, and how many tokens will actually be used.
     */
    function _computeDepositShares(
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min
    )
        internal
        view
        returns (uint256 shares, uint256 amount0Used, uint256 amount1Used)
    {
        // Current total holdings of the vault:
        (uint256 total0, uint256 total1) = getTotalAmounts();

        // Use helper to figure out final amounts
        (shares, amount0Used, amount1Used) = IHelper(helper).getShares(
            totalSupply(),
            total0,
            total1,
            amount0Desired,
            amount1Desired,
            amount0Min,
            amount1Min,
            1 // MIN_SHARES
        );
        return (shares, amount0Used, amount1Used);
    }

    /**
     * @dev Pulls the actual token amounts from depositor to vault.
     */
    function _pullInDepositTokens(
        uint256 amount0Used,
        uint256 amount1Used
    ) internal {
        if (amount0Used > 0) {
            token0.safeTransferFrom(msg.sender, address(this), amount0Used);
        }
        if (amount1Used > 0) {
            token1.safeTransferFrom(msg.sender, address(this), amount1Used);
        }
    }

    function _finalizeDeposit(address to, uint256 shares) internal {
        // Update global reward state
        updateRewards();

        // 1. If the user already has shares, calculate and distribute any accrued rewards
        // But don't try to account for shares that haven't been minted yet
        pullRewards(to); // Changed from passing 'shares' to passing '0'

        // 2. Mint the new shares
        _mint(to, shares);

        // 3. Now that shares are minted, update the reward debt to reflect the new total
        // Only update reward debt if the user has a non-zero balance after minting
        uint256 newTotalShares = balanceOf(to);
        if (newTotalShares > 0) {
            userRewardDebt[to] =
                (newTotalShares * accumulatedRewardsPerShareP) /
                PRECISION;
        }
    }

    // Brings rewards into contract
    function updateRewards() internal {
        uint startingBalance = rewardToken.balanceOf(address(this));
        // pull all rewards from staked positions
        for (uint256 i = 0; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            gauge.getReward(tokenId);
        }
        uint256 fees = rewardToken.balanceOf(address(this)) - startingBalance;
        if (rewardIsPoolToken) {
            if (rewardIsToken0) {
                rewardBal0 += fees;
            } else {
                rewardBal1 += fees;
            }
        }
        // handle fees
        // take protocol fees
        if (fees > 0) {
            uint256 netSteerFees = (fees * 10_00) / DIVISOR;
            uint256 netStrategistFees = (fees * 5_00) / DIVISOR;
            accruedSteerFees += netSteerFees;
            accruedStrategistFees += netStrategistFees;
            uint256 netGain = fees - (netSteerFees + netStrategistFees);
            uint256 totalSupply = totalSupply();
            if (totalSupply != 0) {
                accumulatedRewardsPerShareP += ((netGain * PRECISION) /
                    totalSupply);
            }
            else {
                // In edge case where fees are earned with no supply credit Steer
                accruedSteerFees += netGain;
            }
        }
        emit FeesEarned(fees);
    }

    function _transferTokens(
        address to,
        uint256 amount0,
        uint256 amount1
    ) internal {
        if (amount0 > 0) {
            token0.safeTransfer(to, amount0);
        }
        if (amount1 > 0) {
            token1.safeTransfer(to, amount1);
        }
    }

    /// @notice Balance of token0 in vault not used in any position.
    function _getBalance0() internal view returns (uint256) {
        return token0.balanceOf(address(this)) - rewardBal0;
    }

    /// @notice Balance of token1 in vault not used in any position.
    function _getBalance1() internal view returns (uint256) {
        return token1.balanceOf(address(this)) - rewardBal1;
    }

    /// @dev Get current positions held by the vault
    /// This function is used for mainly read calls so looping shouldn't be a problem
    function getPositions()
        external
        view
        returns (int24[] memory, int24[] memory, uint16[] memory)
    {
        uint256 length = opPositions.length;
        LiquidityPositions memory oldPositions;

        // Initialize the dynamic arrays with the correct length
        oldPositions.lowerTick = new int24[](length);
        oldPositions.upperTick = new int24[](length);
        oldPositions.relativeWeight = new uint16[](length);

        for (uint256 i; i != length; ++i) {
            oldPositions.lowerTick[i] = opPositions[i].lowerTick;
            oldPositions.upperTick[i] = opPositions[i].upperTick;
            oldPositions.relativeWeight[i] = opPositions[i].relativeWeight;
        }

        return (
            oldPositions.lowerTick,
            oldPositions.upperTick,
            oldPositions.relativeWeight
        );
    }

    /// @dev A struct for holding intermediate state during a `tend(...)`.
    struct TendCache {
        int256 swapAmount;
        uint160 sqrtPriceLimitX96;
        uint160 sqrtPriceX96;
        int24 currentTick;
        bool zeroForOne;
        uint256 balance0;
        uint256 balance1;
    }

    function tend(
        uint256 totalWeight,
        LiquidityPositions memory newPositions,
        bytes calldata timeSensitiveData
    ) external onlyRole(MANAGER_ROLE) whenNotPaused {
        if (totalWeight > TOTAL_WEIGHT_MAX) revert InvalidTotalWeight();

        // 1. Decode the swap parameters
        TendCache memory cache;
        (cache.swapAmount, cache.sqrtPriceLimitX96) = abi.decode(
            timeSensitiveData,
            (int256, uint160)
        );

        // 2. Load current pool state into `cache`
        (cache.sqrtPriceX96, cache.currentTick, , , , ) = pool.slot0();

        // 3. Protect against MEV / flashloan by verifying tick vs. TWAP
        _doVolatilityCheck(cache.currentTick);

        // 4. Update global rewards and remove existing liquidity
        updateRewards();
        _burnAndCollect(1, 1);
        delete tokenIds;

        // There are 4 conditions of position and weight inputs:
        // -    defined positions,   totalWeight > 0    = Normal functionality
        // -    undefined positions, totalWeight > 0    = Previous positions are used
        // -    defined positions,   totalWeight = 0    = Empty positions, no liquidity deployed
        // -    undefined positions, totalWeight = 0    = Empty positions, no liquidity deployed

        // 5. Handle position migration and deletion based on conditions
        if (newPositions.lowerTick.length > 0 && totalWeight > 0) {
            // Only migrate if new positions are provided AND will be used
            migratePositions(newPositions);
        } else if (newPositions.lowerTick.length > 0 || totalWeight == 0) {
            // Delete positions if new positions provided (but not used) OR totalWeight is 0
            delete opPositions;
        }

        // 6. (Optional) Perform the swap
        _performSwap(cache);

        // 7. Snapshot post‐swap balances & log
        cache.balance0 = _getBalance0();
        cache.balance1 = _getBalance1();
        emit Snapshot(
            cache.sqrtPriceX96,
            cache.balance0,
            cache.balance1,
            totalSupply()
        );

        // 8. If totalWeight > 0, deposit new liquidity
        if (totalWeight > 0) {
            _setBins(
                cache.sqrtPriceX96,
                (cache.balance0 * totalWeight) / DIVISOR,
                (cache.balance1 * totalWeight) / DIVISOR,
                cache.swapAmount
            );
            _validatePostMintBalances(cache, totalWeight);
        }
    }

    /**
     * @dev Checks if currentTick is within `maxTickChange` of the TWAP tick
     *      to protect from MEV or flashloan manipulations.
     */
    function _doVolatilityCheck(int24 currentTick) internal view {
        // This references a helper library to validate that currentTick is
        // within the allowable range of the TWAP tick.
        IHelper(helper).uniVolatilityCheck(
            currentTick,
            twapInterval,
            maxTickChange,
            address(pool)
        );
    }

    /**
     * @dev If swapAmount != 0, executes a swap on the pool. Updates sqrtPrice.
     */
    function _performSwap(TendCache memory cache) internal {
        if (cache.swapAmount == 0) {
            return; // no swap needed
        }
        if (cache.swapAmount == type(int256).min) revert InvalidSwapAmount();

        // Determine swap direction
        cache.zeroForOne = (cache.swapAmount > 0);
        swapCallBackProtection = true;

        // Perform the swap
        pool.swap(
            address(this),
            cache.zeroForOne,
            cache.zeroForOne ? cache.swapAmount : -cache.swapAmount,
            cache.sqrtPriceLimitX96,
            ""
        );

        // Update sqrtPriceX96, since swapping moves the price
        (cache.sqrtPriceX96, , , , , ) = pool.slot0();
    }

    /// @dev Calculates the vault's total holdings of token0 and token1.
    ///      in other words, how much of each token the vault would hold if it withdrew
    ///      all its liquidity from the pool.
    ///      This function DOES NOT include fees earned since the last burn.
    ///      To include fees, first poke() and then call getTotalAmounts.
    ///      There's a function inside the periphery to do so.
    function getTotalAmounts()
        public
        view
        returns (uint256 total0, uint256 total1)
    {
        // get current sqrtRatio
        (uint160 sqrtPriceX96, , , , , ) = pool.slot0();

        total0 += _getBalance0();
        total1 += _getBalance1();

        // Loop through each tokenId
        uint tokenIdLength = tokenIds.length;
        for (uint256 i = 0; i < tokenIdLength; i++) {
            // Process each tokenId
            (
                ,
                ,
                ,
                ,
                ,
                int24 lower,
                int24 upper,
                uint128 totalPositionLiquidity,
                ,
                ,
                ,

            ) = _nftManager.positions(tokenIds[i]);
            (uint256 amount0, uint256 amount1) = LiquidityAmounts
                .getAmountsForLiquidity(
                    sqrtPriceX96,
                    TickMath.getSqrtRatioAtTick(lower),
                    TickMath.getSqrtRatioAtTick(upper),
                    totalPositionLiquidity
                );
            total0 += amount0;
            total1 += amount1;
        }
    }

    /// @dev Given desired positions, desired relative weights, and a current token amount,
    ///      This function deposits as much liquidity as possible into each position
    ///      while respecting relative weights.
    /// @param sqrtPriceX96 The current sqrtPriceX96 of the pool
    /// @param t0ToDeposit The vault's current balance of token0 ready to be deposited
    ///                 (excluding steer and strategist fees)
    /// @param t1ToDeposit The vault's current balance of token1 ready to be deposited
    ///                 (excluding steer and strategist fees)
    /// @param swapAmount The amount to be swapped from one token to another this tend.
    ///                   zeroForOne if positive, oneForZero if negative.
    ///                   Here it is mainly used to determine which direction the swap was,
    ///                   so that we can check whether the swap was too large.
    function _setBins(
        uint160 sqrtPriceX96,
        uint256 t0ToDeposit,
        uint256 t1ToDeposit,
        int256 swapAmount
    ) internal {
        // Pack parameters into a struct to reduce stack variables
        MintParams memory params = MintParams({
            sqrtPriceX96: sqrtPriceX96,
            t0ToDeposit: t0ToDeposit,
            t1ToDeposit: t1ToDeposit,
            swapAmount: swapAmount
        });
        // Process positions and calculate requested amounts
        PositionData memory posData = _calculatePositionRequests(
            params.sqrtPriceX96
        );

        // Now add liquidity to those bins based on their weights vs total token weights
        _mintPositions(posData, params);
    }

    /// @dev Calculates the token amounts requested for each position
    /// @param sqrtPriceX96 The current sqrtPriceX96 of the pool
    /// @return PositionData containing the calculated position requests
    function _calculatePositionRequests(
        uint160 sqrtPriceX96
    ) private view returns (PositionData memory) {
        IHelper.NewLiquidityPositions[] memory _positions = opPositions;
        uint256 positionCount = _positions.length;

        PositionData memory posData = PositionData({
            positionT0Requested: new uint256[](positionCount),
            positionT1Requested: new uint256[](positionCount),
            totalT0Requested: 0,
            totalT1Requested: 0,
            positionCount: positionCount
        });

        // For each bin, figure out how much of the bin will be in token0,
        // and how much will be in token1.
        for (uint256 i; i != positionCount; ++i) {
            // Verify position order
            if (i >= 1) {
                if (_positions[i - 1].lowerTick >= _positions[i].lowerTick || _positions[i - 1].upperTick >= _positions[i].upperTick) revert PositionsOutOfOrder();
            }

            // Calculate token amounts for the position
            (uint256 amount0Wanted, uint256 amount1Wanted) = LiquidityAmounts
                .getAmountsForLiquidity(
                    sqrtPriceX96,
                    TickMath.getSqrtRatioAtTick(_positions[i].lowerTick),
                    TickMath.getSqrtRatioAtTick(_positions[i].upperTick),
                    uint128(PRECISION * _positions[i].relativeWeight)
                );

            // Record amounts for this position
            posData.positionT0Requested[i] = amount0Wanted;
            posData.positionT1Requested[i] = amount1Wanted;

            // Add to totals
            posData.totalT0Requested += amount0Wanted;
            posData.totalT1Requested += amount1Wanted;
        }

        return posData;
    }

    /// @dev Mints positions based on calculated token amounts
    /// @param posData The position data containing requested amounts
    /// @param params The parameters for minting
    function _mintPositions(
        PositionData memory posData,
        MintParams memory params
    ) private {
        IHelper.NewLiquidityPositions[] memory _positions = opPositions;

        for (uint256 i; i != posData.positionCount; ++i) {
            // Calculate token amounts for this position
            uint256 positionT0Amount = posData.totalT0Requested > 0
                ? ((posData.positionT0Requested[i] * params.t0ToDeposit) /
                    posData.totalT0Requested)
                : 0;

            uint256 positionT1Amount = posData.totalT1Requested > 0
                ? ((posData.positionT1Requested[i] * params.t1ToDeposit) /
                    posData.totalT1Requested)
                : 0;

            // Calculate liquidity from token amounts
            uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
                params.sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(_positions[i].lowerTick),
                TickMath.getSqrtRatioAtTick(_positions[i].upperTick),
                positionT0Amount,
                positionT1Amount
            );

            // Create the position inside the pool if liquidity > 0
            if (liquidity > 0) {
                mintCallBackProtection = true;
                token0.forceApprove(address(_nftManager), positionT0Amount);
                token1.forceApprove(address(_nftManager), positionT1Amount);
                (uint256 tokenId, , , ) = _nftManager.mint(
                    INonfungiblePositionManager.MintParams({
                        token0: address(token0),
                        token1: address(token1),
                        tickSpacing: pool.tickSpacing(),
                        tickLower: _positions[i].lowerTick,
                        tickUpper: _positions[i].upperTick,
                        amount0Desired: positionT0Amount,
                        amount1Desired: positionT1Amount,
                        amount0Min: 0,
                        amount1Min: 0,
                        recipient: address(this),
                        deadline: block.timestamp,
                        sqrtPriceX96: 0 //params.sqrtPriceX96
                    })
                );
                // deposit
                _nftManager.approve(address(gauge), tokenId);
                gauge.deposit(tokenId);
                tokenIds.push(tokenId);
            }
        }
    }

    /// @dev Validates that the correct amount of tokens were deposited
    /// @param cache The tend parameters including swap direction
    /// @param totalWeight the total weight of positions of liquidity 
    function _validatePostMintBalances(TendCache memory cache, uint256 totalWeight) private view {
        // If swapAmount > 0, that means zeroForOne. Otherwise, oneForZero.
        if (cache.swapAmount > 0) {
            uint t1ToDeposit = (cache.balance1 * totalWeight) / DIVISOR;
            uint expectedLeftOver1 = cache.balance1 - t1ToDeposit;
            // Require that at least 95% of t1 has been deposited
            // This means the remaining balance should be less than 5% of what was supposed to be deposited
            if (_getBalance1() - expectedLeftOver1 >= (t1ToDeposit * FIVE) / DIVISOR100) revert Imbalance1();
        } else if (cache.swapAmount < 0) {
            uint t0ToDeposit = (cache.balance0 * totalWeight) / DIVISOR;
            uint expectedLeftOver0 = cache.balance0 - t0ToDeposit; // Fixed variable name
            // Require that at least 95% of t0 has been deposited
            // This means the remaining balance should be less than 5% of what was supposed to be deposited
            if (_getBalance0() - expectedLeftOver0 >= (t0ToDeposit * FIVE) / DIVISOR100) revert Imbalance0();
        }
    }

    /// @dev Burns liquidity + collects for a single position, returning the tokens burned.
    function _burnAndCollect(
        uint256 shares,
        uint256 totalShares
    ) internal returns (uint256 totalAmount0, uint256 totalAmount1) {
        // IHelper.NewLiquidityPositions[] memory _positions = opPositions;
        uint256 count = opPositions.length;

        for (uint256 i = 0; i < count; ++i) {
            uint256 tokenId = tokenIds[i];

            // Get total position liquidity
            (, , , , , , , uint128 totalPosLiquidity, , , , ) = _nftManager
                .positions(tokenId);

            // Calculate portion to burn (shares / totalShares)
            uint128 liquidityToBurn = uint128(
                (totalPosLiquidity * shares) / totalShares
            );

            // Burn and collect, then accumulate
            (uint256 burned0, uint256 burned1) = _burnAndCollectSingle(
                tokenId,
                liquidityToBurn,
                shares,
                totalShares
            );

            totalAmount0 += burned0;
            totalAmount1 += burned1;
        }
    }

    /**
     * @dev Helper function to burn & collect from a single position ID.
     *      Returns how many of each token were actually burned/collected.
     */
    function _burnAndCollectSingle(
        uint256 tokenId,
        uint128 liquidityToBurn,
        uint256 shares,
        uint256 totalShares
    ) internal returns (uint256 posBurned0, uint256 posBurned1) {
        // If there's no liquidity to burn, short‐circuit.
        if (liquidityToBurn == 0) {
            return (0, 0);
        }

        // 1. Withdraw from gauge first
        gauge.withdraw(tokenId);

        // 2. Burn the liquidity
        (posBurned0, posBurned1) = _nftManager.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidityToBurn,
                amount0Min: 0,
                amount1Min: 0,
                deadline: block.timestamp
            })
        );

        // 3. Collect the tokens
        _nftManager.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: uint128(posBurned0),
                amount1Max: uint128(posBurned1)
            })
        );

        // 4. If shares < total, deposit leftover again
        if (shares < totalShares) {
            _nftManager.approve(address(gauge), tokenId);
            gauge.deposit(tokenId);
        }

        // Return how much token0 & token1 got burned
        return (posBurned0, posBurned1);
    }

    function claimSteerFees()
        external
        onlyRole(STEER_ROLE)
        returns (uint256 steerFee)
    {
        steerFee = accruedSteerFees - claimedSteerFees;
        if (steerFee > 0) {
            claimedSteerFees = accruedSteerFees;
            if (rewardIsPoolToken) {
                if (rewardIsToken0) {
                    rewardBal0 -= steerFee;
                } else {
                    rewardBal1 -= steerFee;
                }
            }
            rewardToken.safeTransfer(msg.sender, steerFee);
        }
    }

    function transfer(
        address to,
        uint256 value
    ) public override returns (bool) {
        address sender = msg.sender;
        updateRewards();

        // Pull rewards for sender and recipient first to settle any outstanding rewards
        pullRewards(sender);
        pullRewards(to);

        // At this point, both users' reward debts are properly synchronized

        // Perform the transfer
        bool success = super.transfer(to, value);

        // After transfer, update the reward debts to reflect new balances
        // We're setting (not adjusting) the reward debt to the correct value based on new balances
        userRewardDebt[sender] =
            (balanceOf(sender) * accumulatedRewardsPerShareP) /
            PRECISION;
        userRewardDebt[to] =
            (balanceOf(to) * accumulatedRewardsPerShareP) /
            PRECISION;

        return success;
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public override returns (bool) {
        updateRewards();

        // Pull rewards for both parties to settle any outstanding rewards
        pullRewards(from);
        pullRewards(to);

        // Perform the transfer
        bool success = super.transferFrom(from, to, value);

        // After transfer, update the reward debts to reflect new balances
        userRewardDebt[from] =
            (balanceOf(from) * accumulatedRewardsPerShareP) /
            PRECISION;
        userRewardDebt[to] =
            (balanceOf(to) * accumulatedRewardsPerShareP) /
            PRECISION;

        return success;
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    function claimStrategistFees() external returns (uint256 stratFee) {
        if (
            msg.sender !=
            IBareVaultRegistry(vaultRegistry).getStrategyCreatorForVault(
                address(this)
            )
        ) revert NotStrategyCreator();
        stratFee = accruedStrategistFees - claimedStrategistFees;
        if (stratFee > 0) {
            claimedStrategistFees = accruedStrategistFees;
            if (rewardIsPoolToken) {
                if (rewardIsToken0) {
                    rewardBal0 -= stratFee;
                } else {
                    rewardBal1 -= stratFee;
                }
            }
            rewardToken.safeTransfer(msg.sender, stratFee);
        }
    }

    function claimUserRewards() external returns (uint256) {
        updateRewards();
        return pullRewards(msg.sender);
    }

    function migratePositions(LiquidityPositions memory _positions) internal {
        uint256 newPosLength = _positions.lowerTick.length;
        delete opPositions;
        IHelper.NewLiquidityPositions memory temp;
        for (uint256 i; i != newPosLength; ++i) {
            temp = IHelper.NewLiquidityPositions({
                lowerTick: _positions.lowerTick[i],
                upperTick: _positions.upperTick[i],
                relativeWeight: _positions.relativeWeight[i]
            });
            opPositions.push(temp);
        }
    }

    /// @dev Callback for CL pool.
    function uniswapV3MintCallback(
        uint256 amount0,
        uint256 amount1,
        bytes calldata /* data */
    ) external override {
        if (msg.sender != address(pool)) revert NotPool();
        if (!mintCallBackProtection) revert MintCallbackNotProtected();
        mintCallBackProtection = false;
        _transferTokens(msg.sender, amount0, amount1);
    }

    /// @dev Callback for CL pool.
    function uniswapV3SwapCallback(
        int256 amount0Wanted,
        int256 amount1Wanted,
        bytes calldata /* data */
    ) external override {
        if (msg.sender != address(pool)) revert NotPool();
        if (!swapCallBackProtection) revert SwapCallbackNotProtected();
        swapCallBackProtection = false;
        uint256 amount0;
        uint256 amount1;
        if (amount0Wanted > 0) {
            amount0 = uint256(amount0Wanted);
        }
        if (amount1Wanted > 0) {
            amount1 = uint256(amount1Wanted);
        }
        _transferTokens(msg.sender, amount0, amount1);
    }
}
