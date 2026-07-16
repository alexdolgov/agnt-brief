// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {StrategyBase} from "strategy-base/StrategyBase.sol";
import {ICurveStableSwapNG} from "./interfaces/ICurveStableSwapNG.sol";
import {ICurveLiquidityGauge, ICurveMinter} from "./interfaces/ICurveLiquidityGauge.sol";
import {ILitePSM} from "./interfaces/ILitePSM.sol";

/// @title CurveSUsdsPositionManager
/// @notice Manages a position in the Curve sUSDe/sUSDS StableSwap NG 2-pool
/// @dev Handles USDC↔sUSDS conversion (via LitePSM + sUSDS ERC4626 vault) and
///      Curve pool interaction (add/remove liquidity, gauge staking, CRV reward claiming).
///      Exit is atomic: remove liquidity + sUSDS→USDS→USDC in a single transaction.
contract CurveSUsdsPositionManager is StrategyBase {
    using SafeERC20 for IERC20;

    // ═══════════════════════════════════════ Constants ═══════════════════════════════════════

    uint256 public constant N_COINS = 2;
    uint256 public constant PRECISION = 1e18;
    uint256 public constant FEE_DENOMINATOR = 1e10;

    uint256 private constant USDC_DECIMALS = 6;
    uint256 private constant USDS_DECIMALS = 18;
    uint256 private constant DECIMAL_CONVERSION = 10 ** (USDS_DECIMALS - USDC_DECIMALS); // 1e12

    // ═══════════════════════════════════════ Structs ═══════════════════════════════════════

    struct CoinInfo {
        address addr;
        string symbol;
        uint8 decimals;
    }

    struct RewardInfo {
        address token;
        string symbol;
        uint8 decimals;
        uint256 claimable;
        uint256 balance;
    }

    struct PoolTokenInfo {
        address token;
        string symbol;
        uint8 decimals;
        uint256 balance;
    }

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    error InvalidCoinIndex(uint256 index);
    error ArrayLengthMismatch();
    error NoGaugeConfigured();
    error InsufficientLpBalance(uint256 available, uint256 required);
    error GaugeHasStakedBalance(uint256 stakedBalance);
    error PendingRewardExists(uint256 rewardIndex);
    error InsufficientUsdcReceived(uint256 expected, uint256 received);
    error InsufficientLpReceived(uint256 expected, uint256 received);
    error InsufficientSusdsReceived(uint256 expected, uint256 received);

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    event UsdcConvertedToSusds(uint256 usdcAmount, uint256 susdsReceived);
    event SusdsDepositedToPool(uint256 susdsAmount, uint256 lpReceived);
    event LiquidityRemovedToUsdc(uint256 lpBurned, uint256 usdcReceived, address indexed receiver);
    event Staked(uint256 amount);
    event Unstaked(uint256 amount);
    event RewardsClaimed(address indexed token, uint256 amount, address indexed receiver);
    event GaugeUpdated(address indexed oldGauge, address indexed newGauge);
    event GaugeControllerUpdated(address indexed oldController, address indexed newController);
    event MinterUpdated(address indexed oldMinter, address indexed newMinter);

    // ═══════════════════════════════════════ Immutables ═══════════════════════════════════════

    /// @notice Strategy type identifier
    /// @dev Format: <subtype>:<investment>:<io token>:<version>
    // forge-lint: disable-next-line(mixed-case-variable)
    string public TYP;

    /// @notice The Curve StableSwap NG pool (also the LP token)
    ICurveStableSwapNG public immutable POOL;

    /// @notice USDC token (I/O token for the engine)
    IERC20 public immutable USDC;

    /// @notice USDS token (intermediate for LitePSM conversion)
    IERC20 public immutable USDS;

    /// @notice sUSDS ERC4626 vault (USDS → sUSDS conversion)
    IERC4626 public immutable SUSDS;

    /// @notice LitePSM (USDC ↔ USDS conversion, exposes tin/tout fees)
    ILitePSM public immutable LITE_PSM;

    /// @notice Index of sUSDS in the Curve pool
    int128 public immutable ASSET_INDEX;

    /// @notice CRV token address (derived from gauge)
    address public immutable CRV;

    // ═══════════════════════════════════════ State ═══════════════════════════════════════

    /// @notice Optional liquidity gauge for staking LP tokens and earning rewards
    ICurveLiquidityGauge public gauge;
    uint8 public crvRewardIndex;

    /// @notice Gauge controller address for fetching relative weight
    address public gaugeController;

    /// @notice CRV Minter contract
    address public minter;

    // ═══════════════════════════════════════ Constructor ═══════════════════════════════════════

    /// @param pool_ Address of the Curve StableSwap NG 2-pool (sUSDe/sUSDS)
    /// @param gauge_ Address of the liquidity gauge (optional, can be address(0))
    /// @param owner_ Address of the contract owner
    /// @param usdc_ Address of USDC token
    /// @param usds_ Address of USDS token
    /// @param susds_ Address of sUSDS ERC4626 vault
    /// @param litePsm_ Address of LitePSM wrapper
    /// @param crv_ Address of CRV token
    /// @param minter_ Address of CRV minter
    /// @param gaugeController_ Address of gauge controller
    /// @param typ_ Strategy type identifier string
    constructor(
        address pool_,
        address gauge_,
        address owner_,
        address usdc_,
        address usds_,
        address susds_,
        address litePsm_,
        address crv_,
        address minter_,
        address gaugeController_,
        string memory typ_
    ) Ownable(owner_) {
        require(pool_ != address(0) && owner_ != address(0), ZeroAddress());
        require(
            usdc_ != address(0) && usds_ != address(0) && susds_ != address(0) && litePsm_ != address(0), ZeroAddress()
        );
        require(gaugeController_ != address(0), ZeroAddress());
        require(ICurveStableSwapNG(pool_).N_COINS() == N_COINS, "Not a 2-pool");

        POOL = ICurveStableSwapNG(pool_);
        USDC = IERC20(usdc_);
        USDS = IERC20(usds_);
        SUSDS = IERC4626(susds_);
        LITE_PSM = ILitePSM(litePsm_);
        CRV = crv_;
        minter = minter_;
        gaugeController = gaugeController_;
        TYP = typ_;

        // Find the index of sUSDS in the pool
        uint256 assetIdx = type(uint256).max;
        for (uint256 i = 0; i < N_COINS; i++) {
            if (POOL.coins(i) == susds_) {
                assetIdx = i;
                break;
            }
        }
        require(assetIdx != type(uint256).max, "sUSDS not found in pool");
        // assetIdx is < N_COINS (2), safe to cast
        // forge-lint: disable-next-line(unsafe-typecast)
        ASSET_INDEX = int128(uint128(assetIdx));

        // Pre-approve for gas efficiency
        // LitePSM: USDC → USDS (sellGem) and USDS → USDC (buyGem)
        IERC20(usdc_).forceApprove(litePsm_, type(uint256).max);
        IERC20(usds_).forceApprove(litePsm_, type(uint256).max);

        // sUSDS vault: USDS → sUSDS (deposit)
        IERC20(usds_).forceApprove(susds_, type(uint256).max);

        // Approve pool to spend all pool coins (for add_liquidity)
        for (uint256 i = 0; i < N_COINS; i++) {
            IERC20(POOL.coins(i)).forceApprove(pool_, type(uint256).max);
        }

        // Set up gauge if provided
        if (gauge_ != address(0)) {
            gauge = ICurveLiquidityGauge(gauge_);
            require(CRV != address(0) && minter_ != address(0), ZeroAddress());

            // Approve gauge to spend LP tokens
            IERC20(pool_).forceApprove(gauge_, type(uint256).max);
            // Find the CRV reward index
            uint256 numRewards = gauge.reward_count();
            for (uint8 i = 0; i < numRewards; i++) {
                if (gauge.reward_tokens(i) == CRV) {
                    crvRewardIndex = i;
                    break;
                }
            }
        }
    }

    // ═══════════════════════════════════════ Admin Functions ═══════════════════════════════════════

    /// @notice Update the gauge address
    /// @param newGauge New gauge address (can be address(0) to disable)
    function setGauge(address newGauge) external onlyOwner {
        address oldGauge = address(gauge);

        if (newGauge != oldGauge && oldGauge != address(0)) {
            uint256 stakedBalance = gauge.balanceOf(address(this));
            require(stakedBalance == 0, GaugeHasStakedBalance(stakedBalance));
            RewardInfo[] memory pendingRewards = getClaimableRewards();
            for (uint256 i = 0; i < pendingRewards.length; i++) {
                if (pendingRewards[i].claimable > 0) {
                    revert PendingRewardExists(i);
                }
            }
        }

        if (oldGauge != address(0)) {
            IERC20(address(POOL)).forceApprove(oldGauge, 0);
        }

        if (newGauge != address(0)) {
            gauge = ICurveLiquidityGauge(newGauge);
            require(CRV != address(0) && minter != address(0), ZeroAddress());

            IERC20(address(POOL)).forceApprove(newGauge, type(uint256).max);

            crvRewardIndex = 0;
            uint256 numRewards = gauge.reward_count();
            for (uint8 i = 0; i < numRewards; i++) {
                if (gauge.reward_tokens(i) == CRV) {
                    crvRewardIndex = i;
                    break;
                }
            }
        } else {
            gauge = ICurveLiquidityGauge(address(0));
            crvRewardIndex = 0;
        }

        emit GaugeUpdated(oldGauge, newGauge);
    }

    /// @notice Update the gauge controller address
    function setGaugeController(address newController) external onlyOwner {
        address oldController = gaugeController;
        gaugeController = newController;
        emit GaugeControllerUpdated(oldController, newController);
    }

    /// @notice Update the CRV minter address
    function setMinter(address newMinter) external onlyOwner {
        require(newMinter != address(0), ZeroAddress());
        address oldMinter = minter;
        minter = newMinter;
        emit MinterUpdated(oldMinter, newMinter);
    }

    // ═══════════════════════════════════════ Core Operations ═══════════════════════════════════════

    /// @notice Convert USDC to sUSDS via LitePSM + ERC4626 vault (invest step 1)
    /// @dev The Go driver checks LitePSM tin fee off-chain before generating this call.
    /// @param usdcAmount Amount of USDC to convert (6 decimals)
    /// @param minSusdsOut Minimum sUSDS to receive (slippage protection on vault exchange rate)
    /// @return susdsReceived Amount of sUSDS received
    function convertUsdcToSusds(uint256 usdcAmount, uint256 minSusdsOut)
        external
        onlyOwner
        returns (uint256 susdsReceived)
    {
        require(usdcAmount > 0, ZeroAmount());

        // 1. USDC → USDS via LitePSM
        LITE_PSM.sellGem(address(this), usdcAmount);
        uint256 usdsBalance = USDS.balanceOf(address(this));

        // 2. USDS → sUSDS via ERC4626 vault
        susdsReceived = SUSDS.deposit(usdsBalance, address(this));

        require(susdsReceived >= minSusdsOut, InsufficientSusdsReceived(minSusdsOut, susdsReceived));

        emit UsdcConvertedToSusds(usdcAmount, susdsReceived);
    }

    /// @notice Deposit sUSDS into the Curve pool as single-sided liquidity (invest step 2)
    /// @param susdsAmount Amount of sUSDS to deposit
    /// @param minLpOut Minimum LP tokens to receive (slippage protection on pool deposit)
    /// @param shouldStake Whether to stake LP tokens in the gauge
    /// @return lpReceived Amount of LP tokens received
    function depositSusdsToPool(uint256 susdsAmount, uint256 minLpOut, bool shouldStake)
        external
        onlyOwner
        returns (uint256 lpReceived)
    {
        require(susdsAmount > 0, ZeroAmount());

        // Add sUSDS as single-sided liquidity to Curve pool
        uint256[] memory amounts = new uint256[](N_COINS);
        // ASSET_INDEX is < N_COINS (2), safe to cast
        // forge-lint: disable-next-line(unsafe-typecast)
        amounts[uint128(ASSET_INDEX)] = susdsAmount;
        lpReceived = POOL.add_liquidity(amounts, minLpOut, address(this));

        require(lpReceived >= minLpOut, InsufficientLpReceived(minLpOut, lpReceived));

        // Stake in gauge if configured
        if (shouldStake && address(gauge) != address(0)) {
            gauge.deposit(lpReceived);
            emit Staked(lpReceived);
        }

        emit SusdsDepositedToPool(susdsAmount, lpReceived);
    }

    /// @notice Atomic: remove liquidity from pool as sUSDS, convert to USDS, then to USDC
    /// @dev The Go driver checks LitePSM tout fee off-chain before generating this call.
    /// @param lpAmount Amount of LP tokens to burn
    /// @param minUsdcOut Minimum USDC to receive (slippage protection)
    /// @param receiver Address to receive USDC
    /// @return usdcReceived Amount of USDC received
    function removeLiquidity(uint256 lpAmount, uint256 minUsdcOut, address receiver)
        external
        onlyOwner
        returns (uint256 usdcReceived)
    {
        require(lpAmount > 0, ZeroAmount());
        require(receiver != address(0), ZeroAddress());

        // Unstake from gauge if needed
        uint256 unstakedBalance = IERC20(address(POOL)).balanceOf(address(this));
        uint256 stakedBalance = address(gauge) != address(0) ? gauge.balanceOf(address(this)) : 0;
        require(
            stakedBalance + unstakedBalance >= lpAmount,
            InsufficientLpBalance(stakedBalance + unstakedBalance, lpAmount)
        );

        if (lpAmount > unstakedBalance && address(gauge) != address(0)) {
            uint256 amountToUnstake = lpAmount - unstakedBalance;
            gauge.withdraw(amountToUnstake, false);
        }

        // 1. Remove liquidity as sUSDS
        // minReceived=0 is safe: the entire removeLiquidity flow is atomic and the
        // end-to-end minUsdcOut check protects against sandwich attacks. The Go driver
        // computes minUsdcOut off-chain from pre-manipulation pool state.
        uint256 susdsReceived = POOL.remove_liquidity_one_coin(lpAmount, ASSET_INDEX, 0, address(this));

        // 2. sUSDS → USDS via ERC4626 vault
        uint256 usdsReceived = SUSDS.redeem(susdsReceived, address(this), address(this));

        // 3. USDS → USDC via LitePSM
        uint256 usdcAmount = usdsReceived / DECIMAL_CONVERSION;
        uint256 usdcBalanceBefore = USDC.balanceOf(receiver);
        LITE_PSM.buyGem(receiver, usdcAmount);
        usdcReceived = USDC.balanceOf(receiver) - usdcBalanceBefore;

        require(usdcReceived >= minUsdcOut, InsufficientUsdcReceived(minUsdcOut, usdcReceived));

        emit LiquidityRemovedToUsdc(lpAmount, usdcReceived, receiver);
    }

    // ═══════════════════════════════════════ Gauge / Staking Operations ═══════════════════════════════════════

    /// @notice Stake LP tokens in the gauge to earn CRV rewards
    /// @param amount Amount of LP tokens to stake
    function stake(uint256 amount) external onlyOwner {
        require(address(gauge) != address(0), NoGaugeConfigured());
        require(amount > 0, ZeroAmount());

        uint256 lpBalance = IERC20(address(POOL)).balanceOf(address(this));
        require(amount <= lpBalance, InsufficientLpBalance(lpBalance, amount));

        gauge.deposit(amount);
        emit Staked(amount);
    }

    /// @notice Unstake LP tokens from the gauge
    /// @param amount Amount of LP tokens to unstake
    /// @param shouldClaimRewards Whether to claim pending rewards
    function unstake(uint256 amount, bool shouldClaimRewards) external onlyOwner {
        require(address(gauge) != address(0), NoGaugeConfigured());
        require(amount > 0, ZeroAmount());
        uint256 stakedBalance = gauge.balanceOf(address(this));
        require(amount <= stakedBalance, InsufficientLpBalance(stakedBalance, amount));
        gauge.withdraw(amount, shouldClaimRewards);
        emit Unstaked(amount);
    }

    /// @notice Claim all rewards: mint CRV and claim additional reward tokens
    function claimAllRewards() external onlyOwner {
        require(address(gauge) != address(0), NoGaugeConfigured());

        // 1. Mint CRV rewards from Minter
        uint256 crvBalanceBefore = IERC20(CRV).balanceOf(address(this));
        ICurveMinter(minter).mint(address(gauge));
        uint256 crvClaimed = IERC20(CRV).balanceOf(address(this)) - crvBalanceBefore;
        if (crvClaimed > 0) {
            emit RewardsClaimed(CRV, crvClaimed, address(this));
        }

        // 2. Claim additional reward tokens (non-CRV) from the gauge
        uint256 rewardCount = gauge.reward_count();
        if (rewardCount > 0) {
            gauge.claim_rewards(address(this), address(this));
        }
    }

    // ═══════════════════════════════════════ View Functions ═══════════════════════════════════════

    /// @notice Get raw balances for driver checks
    /// @return totalLpAmount Total LP tokens held (staked + unstaked)
    /// @return usdcBalance Amount of idle USDC held directly
    /// @return uninvestedSusdsBalance Amount of idle sUSDS held directly (pending pool deposit)
    /// @return investedSusdsAmount Equivalent sUSDS amount if all LP were withdrawn single-sided
    function getRawBalances()
        public
        view
        returns (
            uint256 totalLpAmount,
            uint256 usdcBalance,
            uint256 uninvestedSusdsBalance,
            uint256 investedSusdsAmount
        )
    {
        totalLpAmount = _getTotalLpBalance();
        usdcBalance = USDC.balanceOf(address(this));
        uninvestedSusdsBalance = IERC20(address(SUSDS)).balanceOf(address(this));

        if (totalLpAmount == 0) {
            return (totalLpAmount, usdcBalance, uninvestedSusdsBalance, 0);
        }

        // Single token amount in sUSDS terms
        investedSusdsAmount = POOL.calc_withdraw_one_coin(totalLpAmount, ASSET_INDEX);
    }

    /// @notice Get claimable rewards information
    function getClaimableRewards() public view returns (RewardInfo[] memory rewards) {
        return getRewardBalances();
    }

    /// @notice Get reward token balances (view-safe version)
    /// @dev CRV is always included as the first entry (minted via Minter, not gauge rewards).
    ///      Additional gauge reward tokens are appended after CRV.
    function getRewardBalances() public view returns (RewardInfo[] memory rewards) {
        if (address(gauge) == address(0)) {
            return new RewardInfo[](0);
        }

        uint256 rewardCount = gauge.reward_count();

        // Determine if CRV is already in the gauge's reward_tokens list
        bool crvInGaugeRewards = false;
        for (uint256 i = 0; i < rewardCount; i++) {
            if (gauge.reward_tokens(i) == CRV) {
                crvInGaugeRewards = true;
                break;
            }
        }

        // CRV pending from Minter (separate from gauge rewards)
        uint256 pendingCrvFromMinter = 0;
        uint256 integrateFraction = gauge.integrate_fraction(address(this));
        uint256 alreadyMinted = ICurveMinter(minter).minted(address(this), address(gauge));
        if (integrateFraction > alreadyMinted) {
            pendingCrvFromMinter = integrateFraction - alreadyMinted;
        }

        // If CRV is not in gauge rewards, we add it as a separate entry
        uint256 extraEntries = crvInGaugeRewards ? 0 : 1;
        rewards = new RewardInfo[](rewardCount + extraEntries);

        // Always add CRV first if it's not in gauge rewards
        if (!crvInGaugeRewards) {
            IERC20Metadata crvMeta = IERC20Metadata(CRV);
            rewards[0] = RewardInfo({
                token: CRV,
                symbol: crvMeta.symbol(),
                decimals: crvMeta.decimals(),
                claimable: pendingCrvFromMinter,
                balance: IERC20(CRV).balanceOf(address(this))
            });
        }

        for (uint256 i = 0; i < rewardCount; i++) {
            address token = gauge.reward_tokens(i);
            IERC20Metadata meta = IERC20Metadata(token);
            uint256 claimable = gauge.claimable_reward(address(this), token);
            if (token == CRV) {
                claimable += pendingCrvFromMinter;
            }
            rewards[i + extraEntries] = RewardInfo({
                token: token,
                symbol: meta.symbol(),
                decimals: meta.decimals(),
                claimable: claimable,
                balance: IERC20(token).balanceOf(address(this))
            });
        }
    }

    /// @notice Get information about pool coins
    function getCoinInfo() public view returns (CoinInfo[2] memory coins) {
        for (uint256 i = 0; i < N_COINS; i++) {
            coins[i] = _getCoinInfo(POOL.coins(i));
        }
    }

    /// @notice Estimate LP tokens for a deposit
    function previewAddLiquidity(uint256[] calldata amounts_) external view returns (uint256 expectedLp) {
        require(amounts_.length == N_COINS, ArrayLengthMismatch());
        return POOL.calc_token_amount(amounts_, true);
    }

    /// @notice Estimate single-coin withdrawal amount (in sUSDS terms)
    function previewRemoveLiquiditySingleCoin(uint256 lpAmount) public view returns (uint256 coinAmount) {
        if (lpAmount == 0) {
            return 0;
        }
        coinAmount = POOL.calc_withdraw_one_coin(lpAmount, ASSET_INDEX);
    }

    /// @notice Get comprehensive metadata about the strategy
    function extraInfo()
        external
        view
        returns (
            string memory poolName,
            string memory poolSymbol,
            uint256 inputAssetDecimals,
            uint256 lpDecimals,
            uint256 totalLpBalance,
            uint256 usdcBalance,
            uint256 lpPriceInAsset
        )
    {
        poolName = POOL.name();
        poolSymbol = POOL.symbol();
        lpDecimals = IERC20Metadata(address(POOL)).decimals();
        inputAssetDecimals = USDC_DECIMALS;
        totalLpBalance = _getTotalLpBalance();
        usdcBalance = USDC.balanceOf(address(this));
        lpPriceInAsset = POOL.get_virtual_price();
    }

    // ═══════════════════════════════════════ Internal Functions ═══════════════════════════════════════

    function _getCoinInfo(address coin) internal view returns (CoinInfo memory info) {
        IERC20Metadata meta = IERC20Metadata(coin);
        info.addr = coin;
        info.symbol = meta.symbol();
        info.decimals = meta.decimals();
    }

    function _getTotalLpBalance() internal view returns (uint256 totalLp) {
        totalLp = IERC20(address(POOL)).balanceOf(address(this));
        if (address(gauge) != address(0)) {
            totalLp += gauge.balanceOf(address(this));
        }
    }
}
