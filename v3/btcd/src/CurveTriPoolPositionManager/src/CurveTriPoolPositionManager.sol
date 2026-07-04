// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {ICurveStableSwapNG} from "./interfaces/ICurveStableSwapNG.sol";
import {ICurveLiquidityGauge} from "./interfaces/ICurveLiquidityGauge.sol";

interface ICurveMinter {
    function mint(address gauge_addr) external;
    function minted(address user, address gauge) external view returns (uint256);
}

/// @title CurveTriPoolPositionManager
/// @notice Manages a position in a Curve StableSwap NG tripool (e.g., cbBTC/HemiBTC/WBTC)
/// @dev Supports both direct LP token holding and gauge staking for CRV rewards
///      Pattern-matches existing strategies: Ownable, SafeERC20, delegate(), rescue()
contract CurveTriPoolPositionManager is Ownable {
    using SafeERC20 for IERC20;
    using Address for address;

    // ═══════════════════════════════════════ Constants ═══════════════════════════════════════

    uint256 public constant N_COINS = 3;
    uint256 public constant PRECISION = 1e18;
    uint256 public constant FEE_DENOMINATOR = 1e10;

    // ═══════════════════════════════════════ Structs ═══════════════════════════════════════

    struct MultiCallArgs {
        bool delegateCall;
        address target;
        uint256 value;
        bytes data;
    }

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

    struct TokenBalanceInfo {
        address token;
        uint256 balance;
        address balanceOfAddress;
    }

    struct PoolTokenInfo {
        address token;
        string symbol;
        uint8 decimals;
        uint256 balance;
    }

    struct InvestedAssetInfo {
        PoolTokenInfo[3] tokenBalances;
        uint256 singleTokenAmount;
        uint256 totalLpAmount;
    }

    // ═══════════════════════════════════════ Errors ═══════════════════════════════════════

    error ZeroAddress();
    error ZeroAmount();
    error InvalidCoinIndex(uint256 index);
    error InvalidSlippageBPS();
    error DelegatecallFailed();
    error ArrayLengthMismatch();
    error NoGaugeConfigured();
    error InsufficientLpBalance(uint256 available, uint256 required);
    error SlippageExceeded(uint256 maxLpToBurn, uint256 calculatedLpToBurn);
    error GaugeHasStakedBalance(uint256 stakedBalance);
    error PendingRewardExists(uint256 rewardIndex);
    error InsufficientTokenBalance(address token, uint256 available, uint256 required);

    // ═══════════════════════════════════════ Events ═══════════════════════════════════════

    event LiquidityAdded(uint256[] amounts, uint256 lpReceived);
    event LiquidityRemoved(uint256 lpBurned, uint256 amountReceived, address indexed receiver);
    event LiquidityRemovedOneCoin(
        uint256 lpBurned, uint256 coinIndex, uint256 amountReceived, address indexed receiver
    );
    event Exchanged(uint256 coinIn, uint256 coinOut, uint256 amountIn, uint256 amountOut);
    event Staked(uint256 amount);
    event Unstaked(uint256 amount);
    event RewardsClaimed(address indexed token, uint256 amount, address indexed receiver);
    event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);
    event GaugeUpdated(address indexed oldGauge, address indexed newGauge);
    event GaugeControllerUpdated(address indexed oldController, address indexed newController);
    event TricryptoCrvUSDWETHCRVPoolUpdated(address indexed oldPool, address indexed newPool);
    event MinterUpdated(address indexed oldMinter, address indexed newMinter);

    // ═══════════════════════════════════════ Immutables ═══════════════════════════════════════

    /// @notice Strategy type identifier
    /// @dev Format: <subtype>:<investment>:<io token>:<version>
    string public TYP;

    /// @notice The Curve StableSwap NG pool (also the LP token)
    ICurveStableSwapNG public immutable POOL;

    /// @notice The asset token this manager handles (WBTC, cbBTC, or HemiBTC)
    address public immutable ASSET;

    /// @notice The index of ASSET in the pool (0, 1, or 2)
    int128 public immutable ASSET_INDEX;

    // ═══════════════════════════════════════ State ═══════════════════════════════════════

    /// @notice Optional liquidity gauge for staking LP tokens and earning rewards
    ICurveLiquidityGauge public gauge;
    uint8 public crvRewardIndex;

    /// @notice Gauge controller address for fetching relative weight
    address public gaugeController;

    /// @notice Tricrypto pool address for CRV price oracle (crvUSD/WETH/CRV)
    address public tricryptoCrvUSDWETHCRVPool;

    /// @notice CRV token address (derived from gauge)
    address public immutable CRV;

    /// @notice CRV Minter contract
    address public minter;

    // ═══════════════════════════════════════ Constructor ═══════════════════════════════════════

    /// @notice Initialize the position manager
    /// @param pool_ Address of the Curve StableSwap NG pool
    /// @param gauge_ Address of the liquidity gauge (optional, can be address(0))
    /// @param owner_ Address of the contract owner
    /// @param asset_ Address of the asset token this manager handles
    /// @param crv_ Address of the CRV token
    /// @param minter_ Address of the CRV minter
    /// @param gaugeController_ Address of the gauge controller for fetching relative weight
    /// @param tricryptoCrvUSDWETHCRVPool_ Address of the tricrypto pool for CRV price oracle
    /// @param typ_ Strategy type identifier string
    constructor(
        address pool_,
        address gauge_,
        address owner_,
        address asset_,
        address crv_,
        address minter_,
        address gaugeController_,
        address tricryptoCrvUSDWETHCRVPool_,
        string memory typ_
    ) Ownable(owner_) {
        require(pool_ != address(0) && owner_ != address(0) && asset_ != address(0), ZeroAddress());
        require(gaugeController_ != address(0), ZeroAddress());
        require(tricryptoCrvUSDWETHCRVPool_ != address(0), ZeroAddress());
        require(ICurveStableSwapNG(pool_).N_COINS() == N_COINS, "Not a tripool");

        POOL = ICurveStableSwapNG(pool_);
        TYP = typ_;
        ASSET = asset_;
        CRV = crv_;
        minter = minter_;
        gaugeController = gaugeController_;
        tricryptoCrvUSDWETHCRVPool = tricryptoCrvUSDWETHCRVPool_;

        // Find the index of the asset in the pool
        uint256 assetIdx = type(uint256).max;
        for (uint256 i = 0; i < N_COINS; i++) {
            if (POOL.coins(i) == asset_) {
                assetIdx = i;
                break;
            }
        }
        require(assetIdx != type(uint256).max, "Asset not found in pool");
        ASSET_INDEX = int128(uint128(assetIdx));

        // Approve pool to spend all pool coins (for add_liquidity)
        for (uint256 i = 0; i < N_COINS; i++) {
            IERC20(POOL.coins(i)).forceApprove(pool_, type(uint256).max);
        }
        // Set up gauge if provided
        if (gauge_ != address(0)) {
            gauge = ICurveLiquidityGauge(gauge_);
            require(CRV != address(0) && minter != address(0), ZeroAddress());

            // Approve gauge to spend LP tokens
            IERC20(pool_).forceApprove(gauge_, type(uint256).max);
            // get the crv reward index
            uint256 numRewards = gauge.reward_count();
            for (uint8 i = 0; i < numRewards; i++) {
                if (gauge.reward_tokens(i) == CRV) {
                    // found the crv reward index
                    crvRewardIndex = i;
                    break;
                }
            }
        }
    }

    // ═══════════════════════════════════════ Admin Functions ═══════════════════════════════════════

    /// @notice Update the gauge address (e.g., if pool migrates to new gauge)
    /// @param newGauge New gauge address (can be address(0) to disable)
    function setGauge(address newGauge) external onlyOwner {
        address oldGauge = address(gauge);

        if (newGauge != oldGauge && oldGauge != address(0)) {
            uint256 stakedBalance = gauge.balanceOf(address(this));
            require(stakedBalance == 0, GaugeHasStakedBalance(stakedBalance));
            // check if we have crv rewards in the gauge
            RewardInfo[] memory pendingRewards = getClaimableRewards();
            for (uint256 i = 0; i < pendingRewards.length; i++) {
                if (pendingRewards[i].claimable > 0) {
                    revert PendingRewardExists(i);
                }
            }
        }

        // Revoke old gauge approval if exists
        if (oldGauge != address(0)) {
            IERC20(address(POOL)).forceApprove(oldGauge, 0);
        }

        // Set new gauge and approve
        if (newGauge != address(0)) {
            gauge = ICurveLiquidityGauge(newGauge);
            require(CRV != address(0) && minter != address(0), ZeroAddress());

            IERC20(address(POOL)).forceApprove(newGauge, type(uint256).max);

            // find the crv reward index (reset first in case CRV not found)
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

    /// @notice Update the gauge controller address for fetching relative weight
    /// @param newController New gauge controller address (can be address(0) to disable)
    function setGaugeController(address newController) external onlyOwner {
        address oldController = gaugeController;
        gaugeController = newController;
        emit GaugeControllerUpdated(oldController, newController);
    }

    /// @notice Update the tricrypto pool address for CRV price oracle
    /// @param newPool New tricrypto pool address (can be address(0) to disable)
    function setTricryptoCrvUSDWETHCRVPool(address newPool) external onlyOwner {
        address oldPool = tricryptoCrvUSDWETHCRVPool;
        tricryptoCrvUSDWETHCRVPool = newPool;
        emit TricryptoCrvUSDWETHCRVPoolUpdated(oldPool, newPool);
    }

    /// @notice Update the CRV minter address
    /// @param newMinter New minter address (cannot be address(0))
    function setMinter(address newMinter) external onlyOwner {
        require(newMinter != address(0), ZeroAddress());
        address oldMinter = minter;
        minter = newMinter;
        emit MinterUpdated(oldMinter, newMinter);
    }

    // ═══════════════════════════════════════ Liquidity Operations ═══════════════════════════════════════

    /// @notice Add liquidity to the pool
    /// @param amounts_ Amounts of each coin to deposit [coin0, coin1, coin2]
    /// @param minLpOut_ Minimum LP tokens to receive (slippage protection)
    /// @param shouldStake Whether to stake LP tokens in gauge
    /// @return lpReceived Amount of LP tokens received
    function addLiquidity(uint256[] calldata amounts_, uint256 minLpOut_, bool shouldStake)
        external
        onlyOwner
        returns (uint256 lpReceived)
    {
        require(amounts_.length == N_COINS, ArrayLengthMismatch());
        require(amounts_[0] > 0 || amounts_[1] > 0 || amounts_[2] > 0, ZeroAmount());

        lpReceived = POOL.add_liquidity(amounts_, minLpOut_, address(this));

        // Stake in gauge if configured
        if (shouldStake && address(gauge) != address(0)) {
            gauge.deposit(lpReceived);
            emit Staked(lpReceived);
        }
        emit LiquidityAdded(amounts_, lpReceived);
    }

    /// @notice Remove liquidity proportionally from the pool
    /// @param lpAmount_ Amount of LP tokens to burn
    /// @param minAmountOut Minimum amount to receive
    /// @param receiver_ Address to receive the coins
    function removeLiquidity(uint256 lpAmount_, uint256 minAmountOut, address receiver_) public onlyOwner {
        require(lpAmount_ > 0, ZeroAmount());
        require(receiver_ != address(0), ZeroAddress());
        // get the unstaked lp balance first
        uint256 unstakedBalance = IERC20(address(POOL)).balanceOf(address(this));
        uint256 stakedBalance = address(gauge) != address(0) ? gauge.balanceOf(address(this)) : 0;
        require(
            stakedBalance + unstakedBalance >= lpAmount_,
            InsufficientLpBalance(stakedBalance + unstakedBalance, lpAmount_)
        );

        if (lpAmount_ > unstakedBalance && address(gauge) != address(0)) {
            uint256 amountToUnstake = lpAmount_ - unstakedBalance;
            gauge.withdraw(amountToUnstake, false); // TODO determine if we should also claim reward
        }

        // Remove exactly the requested lpAmount_, not the full balance
        uint256 received = POOL.remove_liquidity_one_coin(lpAmount_, ASSET_INDEX, minAmountOut, receiver_);
        emit LiquidityRemoved(lpAmount_, received, receiver_);
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
    /// @dev CRV is minted via Minter.mint(gauge) which mints to msg.sender (this contract)
    ///      Extra reward tokens are claimed via gauge.claim_rewards() directly to this contract
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
            // claim_rewards transfers tokens directly to the specified receiver
            gauge.claim_rewards(address(this), address(this));
        }
    }

    // ═══════════════════════════════════════ Utility Functions ═══════════════════════════════════════

    /// @notice Execute a delegatecall to a target contract
    /// @param target The address of the target contract
    /// @param data The calldata to send
    /// @return result The returned data
    function delegate(address target, bytes calldata data) external onlyOwner returns (bytes memory) {
        require(target != address(0), ZeroAddress());
        (bool success, bytes memory result) = target.delegatecall(data);
        require(success, DelegatecallFailed());
        return result;
    }

    /// @notice Transfer out any ERC20 tokens held by the strategy
    /// @param token Address of the token to rescue
    /// @param to Recipient address
    /// @param amount Amount to rescue
    function transferERC20Tokens(address token, address to, uint256 amount) external onlyOwner {
        require(token != address(0) && to != address(0), ZeroAddress());
        require(amount > 0, ZeroAmount());

        IERC20(token).safeTransfer(to, amount);

        emit TokensWithdrawn(token, to, amount);
    }

    /// @notice Transfer out the full balance of an ERC20 token held by the strategy
    /// @param token Address of the token to rescue
    /// @param to Recipient address
    function sweepERC20Tokens(address token, address to) external onlyOwner {
        require(token != address(0) && to != address(0), ZeroAddress());

        uint256 amount = IERC20(token).balanceOf(address(this));
        if (amount == 0) {
            return;
        }

        IERC20(token).safeTransfer(to, amount);

        emit TokensWithdrawn(token, to, amount);
    }

    /// @notice Execute multiple calls in a single transaction (with optional delegatecall)
    /// @param cdata_ Array of call arguments
    /// @return results Array of return data from each call
    function multiCall(MultiCallArgs[] memory cdata_) public payable onlyOwner returns (bytes[] memory) {
        return _multiCall(cdata_);
    }

    /// @notice Execute multiple static calls for read-only operations
    /// @param cdata_ Array of call arguments
    /// @return results Array of return data from each call
    function multiCallView(MultiCallArgs[] memory cdata_) public view returns (bytes[] memory) {
        return _multiCallView(cdata_);
    }

    /// @notice Validate that the contract holds at least the specified ERC20 token balances
    /// @param expectedBalances Array of expected token balances
    /// @dev Reverts if any token balance is below the expected amount
    function validateERC20Balances(TokenBalanceInfo[] memory expectedBalances) public view {
        for (uint256 i = 0; i < expectedBalances.length; i++) {
            uint256 actualBalance = IERC20(expectedBalances[i].token).balanceOf(expectedBalances[i].balanceOfAddress);
            require(
                actualBalance >= expectedBalances[i].balance,
                InsufficientTokenBalance(expectedBalances[i].token, actualBalance, expectedBalances[i].balance)
            );
        }
    }

    // ═══════════════════════════════════════ View Functions ═══════════════════════════════════════

    /// @notice Get claimable rewards information
    /// @dev Returns all reward tokens from the gauge with their claimable amounts.
    ///      CRV from minter is calculated using integrate_fraction - minted (pure view functions).
    /// @return rewards Array of reward token info with claimable amounts
    function getClaimableRewards() public view returns (RewardInfo[] memory rewards) {
        return getRewardBalances();
    }

    /// @notice Get reward token balances (view-safe version)
    /// @dev Calculates pending CRV using integrate_fraction - minted (pure view functions).
    ///      This is guaranteed to work via eth_call/staticcall.
    /// @return rewards Array of reward token info with claimable amounts
    function getRewardBalances() public view returns (RewardInfo[] memory rewards) {
        if (address(gauge) == address(0)) {
            return new RewardInfo[](0);
        }

        uint256 rewardCount = gauge.reward_count();
        rewards = new RewardInfo[](rewardCount);

        // Calculate pending CRV from minter using view-safe functions
        // integrate_fraction = total CRV ever earned, minted = total CRV already claimed
        // Pending CRV = integrate_fraction - minted
        uint256 pendingCrvFromMinter = 0;
        uint256 integrateFraction = gauge.integrate_fraction(address(this));
        uint256 alreadyMinted = ICurveMinter(minter).minted(address(this), address(gauge));
        if (integrateFraction > alreadyMinted) {
            pendingCrvFromMinter = integrateFraction - alreadyMinted;
        }

        for (uint256 i = 0; i < rewardCount; i++) {
            address token = gauge.reward_tokens(i);
            IERC20Metadata meta = IERC20Metadata(token);
            // claimable_reward is a true view function (doesn't trigger checkpoint)
            uint256 claimable = gauge.claimable_reward(address(this), token);
            if (token == CRV) {
                // Add pending CRV from minter
                claimable += pendingCrvFromMinter;
            }
            rewards[i] = RewardInfo({
                token: token,
                symbol: meta.symbol(),
                decimals: meta.decimals(),
                claimable: claimable,
                balance: IERC20(token).balanceOf(address(this))
            });
        }
    }

    /// @notice Get information about pool coins
    /// @return coins Array of coin information
    function getCoinInfo() public view returns (CoinInfo[3] memory coins) {
        for (uint256 i = 0; i < N_COINS; i++) {
            coins[i] = _getCoinInfo(POOL.coins(i));
        }
    }

    /// @notice Calculate the position's underlying token balances if all LP tokens were withdrawn
    /// @dev Provides a normalized view of the position value by:
    ///      1. Summing all LP tokens (unstaked + staked in gauge)
    ///      2. Calculating proportional withdrawal amounts for each coin
    ///      3. Normalizing all amounts to the highest decimal precision
    ///      4. Summing to get a combined value in the highest-precision units
    /// @return investedAssetInfo Detailed info about the invested assets
    /// @return uninvestedAssetAmount Amount of ASSET token held directly (not invested
    function getRawBalances()
        public
        view
        returns (InvestedAssetInfo memory investedAssetInfo, uint256 uninvestedAssetAmount)
    {
        // Aggregate all LP tokens held by this contract (both unstaked and staked)
        investedAssetInfo.totalLpAmount = _getTotalLPBalance();
        // Calculate expected withdrawal amounts for each coin
        investedAssetInfo.tokenBalances = previewRemoveLiquidity(investedAssetInfo.totalLpAmount);

        // Get uninvested asset amount (direct ASSET token balance held)
        uninvestedAssetAmount = IERC20(ASSET).balanceOf(address(this));

        // Early return if no LP tokens held (but still return actual uninvestedAssetAmount)
        if (investedAssetInfo.totalLpAmount == 0) {
            return (investedAssetInfo, uninvestedAssetAmount);
        }

        investedAssetInfo.singleTokenAmount =
            POOL.calc_withdraw_one_coin(investedAssetInfo.totalLpAmount, int128(ASSET_INDEX));
    }

    /// @notice Estimate LP tokens for a deposit
    /// @param amounts_ Amounts of each coin to deposit
    /// @return expectedLp Expected LP tokens
    function previewAddLiquidity(uint256[] calldata amounts_) external view returns (uint256 expectedLp) {
        require(amounts_.length == N_COINS, ArrayLengthMismatch());
        return POOL.calc_token_amount(amounts_, true);
    }

    /// @notice Estimate coin amounts for proportional withdrawal of all 3 coins
    /// @param lpAmount LP tokens to burn
    /// @return tokenInfo Array of PoolTokenInfo for all 3 coins with expected amounts
    function previewRemoveLiquidity(uint256 lpAmount) public view returns (PoolTokenInfo[3] memory tokenInfo) {
        // Populate metadata even when lpAmount is 0
        for (uint256 i = 0; i < N_COINS; i++) {
            address coin = POOL.coins(i);
            IERC20Metadata meta = IERC20Metadata(coin);
            tokenInfo[i] = PoolTokenInfo({token: coin, symbol: meta.symbol(), decimals: meta.decimals(), balance: 0});
        }

        if (lpAmount == 0) {
            return tokenInfo;
        }

        uint256 totalSupply = IERC20(address(POOL)).totalSupply();
        if (totalSupply == 0) {
            return tokenInfo;
        }

        // Calculate proportional withdrawal amounts
        for (uint256 i = 0; i < N_COINS; i++) {
            uint256 poolBalance = IERC20(tokenInfo[i].token).balanceOf(address(POOL));
            tokenInfo[i].balance = (poolBalance * lpAmount) / totalSupply;
        }
    }

    /// @notice Estimate coin amount for single-coin withdrawal
    /// @param lpAmount LP tokens to burn
    /// @return coinAmount Expected amount of ASSET token
    function previewRemoveLiquiditySingleCoin(uint256 lpAmount) public view returns (uint256 coinAmount) {
        if (lpAmount == 0) {
            return 0;
        }
        coinAmount = POOL.calc_withdraw_one_coin(lpAmount, ASSET_INDEX);
    }

    /// @notice Get comprehensive metadata about the strategy
    /// @return poolName The pool's name
    /// @return poolSymbol The pool's symbol
    /// @return inputAssetDecimals Decimals of the input asset (ASSET token)
    /// @return lpDecimals Decimals of the LP token (always 18 for Curve)
    /// @return totalLpBalance Total LP tokens held (unstaked + staked in gauge)
    /// @return assetBalance Uninvested ASSET token balance held directly
    /// @return lpPriceInAsset Virtual price of 1 LP token in underlying asset units (1e18 precision)
    function extraInfo()
        external
        view
        returns (
            string memory poolName,
            string memory poolSymbol,
            uint256 inputAssetDecimals,
            uint256 lpDecimals,
            uint256 totalLpBalance,
            uint256 assetBalance,
            uint256 lpPriceInAsset
        )
    {
        poolName = POOL.name();
        poolSymbol = POOL.symbol();
        lpDecimals = IERC20Metadata(address(POOL)).decimals();
        inputAssetDecimals = IERC20Metadata(ASSET).decimals();
        totalLpBalance = _getTotalLPBalance();
        assetBalance = IERC20(ASSET).balanceOf(address(this));
        lpPriceInAsset = POOL.get_virtual_price();
    }

    // ═══════════════════════════════════════ Internal Functions ═══════════════════════════════════════

    /// @notice Internal implementation of multiCall
    function _multiCall(MultiCallArgs[] memory cdata_) internal returns (bytes[] memory results) {
        results = new bytes[](cdata_.length);
        for (uint256 i = 0; i < cdata_.length; i++) {
            if (cdata_[i].delegateCall) {
                results[i] = cdata_[i].target.functionDelegateCall(cdata_[i].data);
            } else {
                results[i] = cdata_[i].target.functionCallWithValue(cdata_[i].data, cdata_[i].value);
            }
        }
    }

    /// @notice Internal implementation of multiCallView
    function _multiCallView(MultiCallArgs[] memory cdata_) internal view returns (bytes[] memory results) {
        results = new bytes[](cdata_.length);
        for (uint256 i = 0; i < cdata_.length; i++) {
            results[i] = cdata_[i].target.functionStaticCall(cdata_[i].data);
        }
    }

    /// @notice Get coin information helper
    function _getCoinInfo(address coin) internal view returns (CoinInfo memory info) {
        IERC20Metadata meta = IERC20Metadata(coin);
        info.addr = coin;
        info.symbol = meta.symbol();
        info.decimals = meta.decimals();
    }

    function _getTotalLPBalance() internal view returns (uint256 totalLp) {
        totalLp = IERC20(address(POOL)).balanceOf(address(this));
        if (address(gauge) != address(0)) {
            totalLp += gauge.balanceOf(address(this));
        }
    }
}
