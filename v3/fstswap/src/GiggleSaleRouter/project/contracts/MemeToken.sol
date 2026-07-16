// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { LPDividendVault } from "./LPDividendVault.sol";


interface IPancakeFactoryLike {
    function createPair(address tokenA, address tokenB) external returns (address pair);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IPancakeRouter02Like {
    function factory() external view returns (address);
    function WETH() external pure returns (address);
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);
}

interface IPancakePairLike {
    function sync() external;
}

/// @title MemeToken - Meme Token with built-in tax, dividend, and liquidity mechanisms
contract GiggleSale is ERC20 {
    // ===== Custom name/symbol storage (set in initialize, returned via overrides) =====
    string private _tokenName;
    string private _tokenSymbol;

    /// @notice Deployer of this token (platform factory when deployed via MemeLaunchFactory).
    /// @dev Set in initialize() (clone mode: constructors don't run for proxies).
    address public deployerFactory;

    /// @notice One-time initialization flag.
    bool public initialized;

    // ===== Access control =====
    // No owner/admin after initialization.
    function owner() external pure returns (address) { return address(0); }
    function renounceOwnership() external pure { revert("NO_OWNER"); }

    // ===== Constants =====
    uint16 public constant BPS_DENOMINATOR = 10_000;
    uint16 public constant MAX_SELL_TAX_BPS = 2_000; // 20%
    uint16 public constant BASE_DEV_FEE_BPS = 20; // 0.2%
    address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

    // Safety cap: if holder count is small, we can fully distribute token dividends in one tx.
    // Otherwise fall back to batched distribution to avoid gas blowups.
    uint16 public constant AUTO_TOKEN_FULL_PAY_MAX = 200;

    uint256 private constant DEFAULT_AUTOSWAP_TOKENS = 100_000;
    uint256 private constant DECIMALS_18 = 1e18;

    uint8 public constant FIXED_DECIMALS = 18;
    uint256 public constant FIXED_TOTAL_SUPPLY = 1_000_000_000 * 1e18;

    // ===== Routers / Factories =====
    // router/factory are the *active* ones used by auto mechanisms.
    IPancakeRouter02Like public router;
    IPancakeFactoryLike public factory;
    address public wbnb;

    // Two pairs (internal + external)
    address public internalPair;
    address public launchPair; // external pair (pancake)
    address public internalBaseToken;

    mapping(address => bool) public isAMMPair;
    mapping(address => bool) public isTaxExempt;

    // ===== Sell-tax switch =====
    uint16 public sellTaxBps; // 0 => no mechanisms
    uint16 public devFeeBps; // base dev fee (part of sellTaxBps)
    address public devReceiver;
    uint256 public devFeePaidBaseTotal;

    // ===== Internal / External mode =====
    // - Internal mode (pre-launch): only allow transfers involving internalPair (plus mint/burn)
    //   and a small whitelist for launch operations.
    // - External mode (post-launch): normal transfers.
    // Launch will flip it to external mode.
    bool public externalMode;
    /// @dev Controller address (launchRouter). Public because the internal AMM pair reads it
    ///      via staticcall to `internalController()` for custody/forceWithdraw authorization.
    address public internalController;

    // ===== Saved initial config (restored automatically during switchToExternalTrading) =====
    uint16 private savedSellTaxBps;
    uint16[4] private savedAllocBps; // [addLiq, lpDiv, tokenDiv, burn]
    bool private savedAutoSwapEnabled;
    uint256 private savedAutoSwapThreshold;
    uint16 private savedPoolBurnBps;
    uint256 private savedPoolBurnInterval;

    mapping(address => bool) public pools;

    event InternalControllerConfigured(address indexed internalController);
    // Backward-compatible events (2 params). We only configure internal at deploy;
    // launch chooses a target router/factory and switches `router/factory` in one function.
    event RoutersConfigured(address indexed internalRouter, address indexed externalRouter);
    event FactoriesConfigured(address indexed internalFactory, address indexed externalFactory);
    event ExternalModeChanged(bool externalMode);

    event LaunchedToExternal(address indexed operator, address indexed pair);

    bool public launched;
    bool public bootstrapComplete;

    // ===== Mechanism allocations (bps of the SELL tax) =====
    // They can all coexist: fee gets split by these ratios.
    uint16 public allocAddLiquidityBps; // 1
    uint16 public allocLpDividendBps; // 2
    uint16 public allocTokenDividendBps; // 3
    uint16 public allocBurnTokenBps; // 4
    // NOTE: pool-burn is NOT part of tax allocation anymore (configured separately)

    event SellTaxConfigured(uint16 sellTaxBps);
    event DevFeeConfigured(address indexed devReceiver, uint16 devFeeBps);
    event DevFeePaid(address indexed devReceiver, uint256 baseAmount);
    event AllocationConfigured(uint16 addLp, uint16 lpDiv, uint16 tokenDiv, uint16 burnToken);
    event RouterConfigured(address indexed router, address indexed wbnb);
    event PairsCreated(address indexed internalPair, address indexed launchPair);
    event HolderRecorded(address indexed holder);

    event PoolBurnConfigured(uint16 burnBps, uint256 intervalSeconds, address indexed pair);
    event PoolBurned(address indexed pair, uint256 amount);

    event TradingConfigured(
        address indexed router,
        address indexed factory,
        address indexed pair,
        address wbnb,
        bool externalMode,
        bool launched
    );

    // ===== Swap controls =====
    bool public autoSwapEnabled;
    uint256 public autoSwapThreshold;
    bool private _inSwap;

    // Pending buckets (in this token)
    uint256 public pendingAddLiquidity;
    uint256 public pendingLpDividend;
    uint256 public pendingTokenDividend;
    uint256 public pendingDevFee;

    // ===== Mode 1: add liquidity =====
    /// @notice 初始铸币接收者（通常为发射路由/托管合约），用于"持币分红"候选种子地址。
    address public tokenReceiver;

    /// @notice "加池"机制产生的 LP 接收地址（例如项目方/金库地址），用于"LP 分红"候选种子地址。
    address public lpReceiver;

    // ===== Mode 2: LP dividend (auto) =====
    LPDividendVault public lpVault;
    address public rewardToken; // default WBNB, can set to any existing token
    uint256 public lpDividendThreshold; // default 100 (raw units)
    uint16 public constant AUTO_LP_PAY_COUNT = 10;

    // ===== Mode 3: Token dividend (auto) =====
    // Uses a dedicated vault, similar to LP dividend.
    LPDividendVault public tokenDividendVault;
    address public tokenDividendRewardToken; // default = this token (本币)

    // ===== Pool burn (independent of tax) =====
    // Burns a percentage of the pair's token balance every interval.
    // burnBps supports up to 50% (5000 bps).
    uint16 public poolBurnBps;
    uint256 public poolBurnInterval;
    uint256 public lastPoolBurnAt;

    // Addresses list: record unique senders who transferred into either pair
    address[] public holders;
    mapping(address => bool) public isHolder;
    uint256 public holderCursor;

    // ===== Mode 3: token dividend (fully auto, round-robin) =====
    // Record unique RECEIVERS as token holders.
    address[] public tokenHolders;
    mapping(address => bool) public isTokenHolder;

    // Auto bucket cursor to avoid starvation across mechanisms.
    // 0: addLiquidity, 1: lpDividend, 2: tokenDividend
    uint8 public autoBucketCursor;
    uint256 public tokenHolderCursor;
    uint256 public tokenDividendThreshold; // default 100 (raw units)

    event TokenDividendAutoPaid(uint256 amount, uint256 paidCount);

    // ===== Feature: Limit Buy =====
    bool public limitBuyEnabled;
    uint256 public maxBuyPerTx;

    // ===== Feature: High Tax (anti-sandwich) =====
    bool public highTaxEnabled;
    mapping(bytes32 => uint256) public txHashBuyCount;

    // ===== Feature: Fission =====
    bool public fissionEnabled;
    uint8 public fissionCount;
    uint256 public fissionNonce;

    // ===== Feature: Burn Dividend =====
    bool public burnDividendEnabled;
    uint256 public burnDividendAmount;
    address public burnDividendToken;

    struct FeatureConfig {
        uint8 flags;           // bit0=limitBuy, bit1=highTax, bit2=fission, bit3=burnDividend
        uint256 maxBuyPerTx;
        uint8 fissionCount;
        uint256 burnDividendAmount;
        address burnDividendToken;
    }

    event LimitBuyTriggered(address indexed buyer, uint256 amount, uint256 max);
    event HighTaxBurn(address indexed buyer, bytes32 key, uint256 burnAmount);
    event Fission(address indexed trigger, address indexed to, uint256 amount);
    event BurnDividendExecuted(address indexed from, uint256 burnAmount);

    constructor() ERC20("", "") {
        // Implementation contract: mark as initialized to prevent direct use.
        // Clones will have initialized == false (fresh storage).
        initialized = true;
    }

    // ===== ERC20 metadata overrides =====
    function name() public view override returns (string memory) {
        return _tokenName;
    }

    function symbol() public view override returns (string memory) {
        return _tokenSymbol;
    }

    function decimals() public pure override returns (uint8) {
        return FIXED_DECIMALS;
    }

    /// @notice 一次性初始化 MemeToken（内盘/税点/分红/燃烧等）并将 100% 初始发行量 mint 给 initialReceiver。
    /// @dev 仅允许调用一次。Clone 模式下 deployerFactory 在首次 initialize 时设为 msg.sender。
    function initialize(
        string calldata _name_param,
        string calldata _symbol_param,
        address initialReceiver,
        address _lpReceiver,
        address _internalController,
        address _internalBaseToken,
        uint16 _sellTaxBps,
        uint16[4] calldata allocBps,
        address _rewardToken,
        address _tokenDividendRewardToken,
        uint256 _lpDividendThreshold,
        uint16 _poolBurnBps,
        uint256 _poolBurnInterval,
        address _devReceiver,
        FeatureConfig calldata _features
    ) external {
        require(initialReceiver != address(0), "RECEIVER_ZERO");
        require(_lpReceiver != address(0), "LP_RECEIVER_ZERO");
        require(_internalBaseToken != address(0), "NO_BASE_TOKEN");
        require(!initialized, "ALREADY_INITIALIZED");

        initialized = true;
        deployerFactory = msg.sender;

        _tokenName = _name_param;
        _tokenSymbol = _symbol_param;

        tokenReceiver = initialReceiver;
        lpReceiver = _lpReceiver;

        // No internal PancakeV2 router/factory anymore.
        emit RoutersConfigured(address(0), address(0));
        emit FactoriesConfigured(address(0), address(0));

        internalController = _internalController;
        emit InternalControllerConfigured(_internalController);

        internalBaseToken = _internalBaseToken;

        devReceiver = _devReceiver;
        require(devReceiver != address(0), "DEV_RECEIVER_ZERO");
        _setSellTax(_sellTaxBps);
        _setAllocations(allocBps);

        // Before launch, `wbnb` is unknown (router not set). Default to base token.
        rewardToken = _rewardToken == address(0) ? internalBaseToken : _rewardToken;
        lpDividendThreshold = _lpDividendThreshold == 0 ? _defaultRewardThreshold(rewardToken) : _lpDividendThreshold;

        // Default exemptions
        isTaxExempt[initialReceiver] = true;
        isTaxExempt[_lpReceiver] = true;
        if (_internalController != address(0)) {
            isTaxExempt[_internalController] = true;
        }
        isTaxExempt[address(this)] = true;

        // PairSwap 已弃用：不再在初始化时自动创建内盘交易合约。
        // internalPair = address(0);
        // launchPair = address(0);
        // emit PairsCreated(address(0), address(0));

        // Pool burn config (independent)
        if (_poolBurnBps > 0) {
            require(_poolBurnBps <= 5_000, "POOL_BURN_TOO_HIGH");
        }
        poolBurnBps = _poolBurnBps;
        poolBurnInterval = _poolBurnInterval;
        lastPoolBurnAt = block.timestamp;

        // Start in internal mode by default
        externalMode = false;
        launched = false;
        emit ExternalModeChanged(false);

        // Internal transfer whitelist for launch operations
        pools[initialReceiver] = true;
        pools[_lpReceiver] = true;
        pools[address(this)] = true;
        if (_internalController != address(0)) {
            pools[_internalController] = true;
        }

        // LP dividend vault: only create when LP dividend allocation is non-zero
        if (allocLpDividendBps > 0 && rewardToken != address(0)) {
            lpVault = new LPDividendVault(rewardToken);
            pools[address(lpVault)] = true;
        }

        // Token dividend reward token comes from frontend (initialize param).
        // address(0) => 本币 (MEME)
        tokenDividendRewardToken = _tokenDividendRewardToken == address(0) ? address(this) : _tokenDividendRewardToken;
        tokenDividendThreshold = _defaultRewardThreshold(tokenDividendRewardToken);
        if (allocTokenDividendBps > 0) {
            tokenDividendVault = new LPDividendVault(tokenDividendRewardToken);
            pools[address(tokenDividendVault)] = true;
        }

        // Ensure custody addresses are included in dividend candidate lists from the very beginning.
        // - holders: LP dividend uses LP token balances
        // - tokenHolders: token dividend uses MEME balances
        _recordHolder(_lpReceiver);
        if (_internalController != address(0)) {
            _recordHolder(_internalController);
        }
        _recordTokenHolder(initialReceiver);
        if (_internalController != address(0)) {
            _recordTokenHolder(_internalController);
        }

        // Auto-swap defaults
        autoSwapEnabled = true;
        autoSwapThreshold = DEFAULT_AUTOSWAP_TOKENS * DECIMALS_18;

        // Save initial config for auto-restore during switchToExternalTrading
        savedSellTaxBps = sellTaxBps;
        savedAllocBps = [allocAddLiquidityBps, allocLpDividendBps, allocTokenDividendBps, allocBurnTokenBps];
        savedAutoSwapEnabled = true;
        savedAutoSwapThreshold = DEFAULT_AUTOSWAP_TOKENS * DECIMALS_18;
        savedPoolBurnBps = poolBurnBps;
        savedPoolBurnInterval = poolBurnInterval;

        // ===== Feature config =====
        if (_features.flags & 1 != 0) {
            limitBuyEnabled = true;
            maxBuyPerTx = _features.maxBuyPerTx;
        }
        if (_features.flags & 2 != 0) {
            highTaxEnabled = true;
        }
        if (_features.flags & 4 != 0) {
            require(_features.fissionCount >= 1 && _features.fissionCount <= 5, "FISSION_COUNT");
            fissionEnabled = true;
            fissionCount = _features.fissionCount;
        }
        if (_features.flags & 8 != 0) {
            burnDividendEnabled = true;
            burnDividendAmount = _features.burnDividendAmount;
            burnDividendToken = _features.burnDividendToken;
        }

        // Mint total supply to caller (the factory / LaunchSeedLib context)
        _mint(msg.sender, FIXED_TOTAL_SUPPLY);

    }

    /// @notice 配置"内盘阶段"的交易地址（router/factory/pair）。
    /// @dev PairSwap 已移除；内盘/外盘的差异仅体现在 router/pair 地址。
    ///      该函数用于让 internalMode 下允许用户与指定 pair 交互。
    ///      一次性函数：launched 后不可再调用。
    function configureInternalTrading(address targetRouter, address targetFactory, address targetPair)
        external
    {
        require(msg.sender == internalController || msg.sender == deployerFactory, "UNAUTHORIZED");
        require(!launched, "ALREADY_LAUNCHED");
        require(targetRouter != address(0) && targetFactory != address(0) && targetPair != address(0), "ZERO_ADDR");

        // clear old pair tracking
        if (internalPair != address(0)) isAMMPair[internalPair] = false;

        router = IPancakeRouter02Like(targetRouter);
        factory = IPancakeFactoryLike(targetFactory);
        wbnb = router.WETH();

        // If thresholds were computed before `wbnb` was known, they may be incorrect for WBNB.
        // Recompute safely after `wbnb` is set.
        if (wbnb != address(0)) {
            if (rewardToken == wbnb && lpDividendThreshold == 10 * DECIMALS_18) {
                lpDividendThreshold = DECIMALS_18 / 10;
            }
            if (tokenDividendRewardToken == wbnb && tokenDividendThreshold == 10 * DECIMALS_18) {
                tokenDividendThreshold = DECIMALS_18 / 10;
            }
        }

        internalPair = targetPair;
        isAMMPair[targetPair] = true;

        // 默认把"托管 LP / 托管代币"的地址加入分红候选列表：
        // - holders: LP 分红按 LP 余额分配，因此需要确保 LP 托管方在 holders 里
        // - tokenHolders: 持币分红按代币余额分配，因此需要确保代币托管方在 tokenHolders 里
        _recordHolder(lpReceiver);
        _recordTokenHolder(tokenReceiver);

        emit RouterConfigured(targetRouter, wbnb);
        emit PairsCreated(internalPair, launchPair);
        emit TradingConfigured(targetRouter, targetFactory, targetPair, wbnb, externalMode, launched);
    }

    /// @notice Mark bootstrap as complete (called after auto-buy)
    function setBootstrapComplete() external {
        require(msg.sender == internalController || msg.sender == deployerFactory, "UNAUTHORIZED");
        bootstrapComplete = true;
    }

    /// @notice 切换到"外盘阶段"的交易地址（router/factory/pair）。
    /// @dev 一次性函数：launched 后不可再调用。自动关税、切换、恢复税率。
    function switchToExternalTrading(address targetRouter, address targetFactory, address targetPair)
        external
    {
        require(msg.sender == internalController || msg.sender == deployerFactory, "UNAUTHORIZED");
        require(!launched, "ALREADY_LAUNCHED");
        require(targetRouter != address(0) && targetFactory != address(0) && targetPair != address(0), "ZERO_ADDR");

        // Step 1: disable mechanisms (clear pending, no tax during migration)
        sellTaxBps = 0;
        devFeeBps = 0;
        allocAddLiquidityBps = 0;
        allocLpDividendBps = 0;
        allocTokenDividendBps = 0;
        allocBurnTokenBps = 0;
        pendingAddLiquidity = 0;
        pendingLpDividend = 0;
        pendingTokenDividend = 0;
        pendingDevFee = 0;
        autoSwapEnabled = false;
        poolBurnBps = 0;
        poolBurnInterval = 0;

        // Step 2: switch router/pair to external
        // clear old pair tracking
        if (internalPair != address(0)) isAMMPair[internalPair] = false;
        if (launchPair != address(0) && launchPair != internalPair) isAMMPair[launchPair] = false;

        router = IPancakeRouter02Like(targetRouter);
        factory = IPancakeFactoryLike(targetFactory);
        wbnb = router.WETH();

        // Recompute thresholds for WBNB once router is known.
        if (wbnb != address(0)) {
            if (rewardToken == wbnb && lpDividendThreshold == 10 * DECIMALS_18) {
                lpDividendThreshold = DECIMALS_18 / 10;
            }
            if (tokenDividendRewardToken == wbnb && tokenDividendThreshold == 10 * DECIMALS_18) {
                tokenDividendThreshold = DECIMALS_18 / 10;
            }
        }

        launchPair = targetPair;
        internalPair = targetPair;
        isAMMPair[targetPair] = true;

        externalMode = true;
        launched = true;

        // Step 3: auto-restore mechanisms from saved initial config
        _setSellTax(savedSellTaxBps);
        _setAllocations(savedAllocBps);
        autoSwapEnabled = savedAutoSwapEnabled;
        autoSwapThreshold = savedAutoSwapThreshold;
        poolBurnBps = savedPoolBurnBps;
        poolBurnInterval = savedPoolBurnInterval;

        emit RouterConfigured(targetRouter, wbnb);
        emit ExternalModeChanged(true);
        emit LaunchedToExternal(msg.sender, targetPair);
        emit PairsCreated(internalPair, launchPair);
        // Step 4: renounce controller — no admin functions after graduation
        internalController = address(0);

        emit TradingConfigured(targetRouter, targetFactory, targetPair, wbnb, true, true);
    }

    function _defaultRewardThreshold(address token) internal view returns (uint256) {
        // BNB/WBNB: 0.1
        if (token == wbnb) {
            return DECIMALS_18 / 10; // 0.1 * 1e18
        }

        // USDT/USD1/FIST (as base token): 10
        if (token != address(0) && token == internalBaseToken) {
            return 10 * DECIMALS_18;
        }

        // Fallback
        return 100;
    }

    // NOTE: 发射/迁移逻辑已移动到"发射路由/控制合约"（例如 MemeLaunchRouter）。
    // MemeToken 本身不再包含发射函数。



    // ===== Views =====
    function holdersLength() external view returns (uint256) {
        return holders.length;
    }

    function tokenHoldersLength() external view returns (uint256) {
        return tokenHolders.length;
    }

    // Mode 3 is fully automatic now.
    function claimTokenDividend() external pure {
        revert("TOKEN_DIVIDEND_AUTO");
    }

    // ===== Internals =====
    function _setSellTax(uint16 _sellTaxBps) internal {
        require(_sellTaxBps <= MAX_SELL_TAX_BPS, "SELL_TAX_TOO_HIGH");
        sellTaxBps = _sellTaxBps;
        emit SellTaxConfigured(_sellTaxBps);

        devFeeBps = _sellTaxBps >= BASE_DEV_FEE_BPS ? BASE_DEV_FEE_BPS : _sellTaxBps;
        emit DevFeeConfigured(devReceiver, devFeeBps);

        // strict rule: if no sell tax, mechanisms effectively disabled
        if (_sellTaxBps == 0) {
            pendingAddLiquidity = 0;
            pendingLpDividend = 0;
            pendingTokenDividend = 0;
            pendingDevFee = 0;
        }
    }

    function _setAllocations(uint16[4] memory allocBps) internal {
        allocAddLiquidityBps = allocBps[0];
        allocLpDividendBps = allocBps[1];
        allocTokenDividendBps = allocBps[2];
        allocBurnTokenBps = allocBps[3];

        uint256 sum =
            uint256(allocAddLiquidityBps) +
            uint256(allocLpDividendBps) +
            uint256(allocTokenDividendBps) +
            uint256(allocBurnTokenBps);
        require(sum <= BPS_DENOMINATOR, "ALLOC_SUM_OOB");
        emit AllocationConfigured(allocAddLiquidityBps, allocLpDividendBps, allocTokenDividendBps, allocBurnTokenBps);
    }

    function _createOrGetPairWithFactory(IPancakeFactoryLike f, address baseToken) internal returns (address pair) {
        pair = f.getPair(address(this), baseToken);
        if (pair == address(0)) {
            pair = f.createPair(address(this), baseToken);
        }
    }

    // ===== Core transfer logic (OZ ERC20 _update override) =====
    /// @dev All transfers (transfer, transferFrom, _mint, _burn) flow through _update.
    ///      We inject tax/restriction logic here. For mint (from==0) and burn (to==0),
    ///      just pass through to super. For normal transfers, apply internal-mode
    ///      restrictions and sell-tax mechanisms.
    function _update(address from, address to, uint256 amount) internal override {
        // Mint and burn: pass through (no tax/restriction)
        if (from == address(0) || to == address(0)) {
            super._update(from, to, amount);
            return;
        }

        _maybePoolBurn(from, to);

        // ===== Feature: Burn Dividend (on every transfer) =====
        // Skip burn dividend when sender or receiver is a tracked pool (AMM pair) to avoid K invariant issues
        if (burnDividendEnabled && burnDividendAmount > 0 && !_inSwap && !isAMMPair[from]) {
            uint256 contractBal = balanceOf(address(this));
            if (contractBal >= burnDividendAmount) {
                super._update(address(this), DEAD, burnDividendAmount);
                emit BurnDividendExecuted(from, burnDividendAmount);
            }
        }

        // ===== Feature: Internal Limit Buy =====
        // Skip limit check for tax-exempt addresses
        bool _isInternalBuy = !externalMode && isAMMPair[from] && !isAMMPair[to];
        if (_isInternalBuy && limitBuyEnabled && maxBuyPerTx > 0 && !isTaxExempt[to] && bootstrapComplete) {
            require(amount <= maxBuyPerTx, "EXCEED_MAX_BUY");
            emit LimitBuyTriggered(to, amount, maxBuyPerTx);
        }

        // ===== Feature: High Tax (anti-sandwich) =====
        uint256 _highTaxBurnAmt = 0;
        if (_isInternalBuy && highTaxEnabled) {
            bytes32 key = keccak256(abi.encodePacked(tx.origin, block.number));
            txHashBuyCount[key]++;
            if (txHashBuyCount[key] > 1) {
                _highTaxBurnAmt = (amount * 20) / 100;
            }
        }

        // Internal mode restriction (pre-launch) — Flap style
        // ONLY_ROUTER check removed - pair contract handles transfer restrictions
        // Dividend vaults need to transfer to holders which triggered false positives

        bool isTradeWithTrackedPools = isAMMPair[from] || isAMMPair[to];

        // tax only on trades with internal/launch pools
        if (!isTradeWithTrackedPools || sellTaxBps == 0 || isTaxExempt[from] || isTaxExempt[to]) {
            // Apply high tax burn if applicable
            if (_highTaxBurnAmt > 0 && amount > _highTaxBurnAmt) {
                uint256 afterBurn = amount - _highTaxBurnAmt;
                super._update(from, DEAD, _highTaxBurnAmt);
                super._update(from, to, afterBurn);
                emit HighTaxBurn(to, keccak256(abi.encodePacked(tx.origin, block.number)), _highTaxBurnAmt);
            } else {
                super._update(from, to, amount);
            }
            _recordTokenHolder(to);
            // Fission on buy/sell
            if (fissionEnabled && isTradeWithTrackedPools) {
                _doFission(from);
            }
            return;
        }

        // record senders that transfer into either pair (for LP dividend)
        if (isAMMPair[to]) {
            _recordHolder(from);
        }

        // Try auto processing on sells (to tracked pools)
        // IMPORTANT: run it BEFORE transferring the user's tokens into the pair.
        // Otherwise, auto swaps that touch the same pair may sync reserves and erase the
        // (balance - reserve) delta relied upon by fee-on-transfer supporting router swaps.
        if (isAMMPair[to]) {
            _processAuto();
        }

        uint256 feeTotal = (amount * uint256(sellTaxBps)) / uint256(BPS_DENOMINATOR);
        if (feeTotal == 0) {
            super._update(from, to, amount);
            _recordTokenHolder(to);
            return;
        }

        uint256 devFee = 0;
        if (devFeeBps > 0) {
            devFee = (amount * uint256(devFeeBps)) / uint256(BPS_DENOMINATOR);
            if (devFee > feeTotal) devFee = feeTotal;
        }
        uint256 fee = feeTotal - devFee;

        uint256 received = amount - feeTotal;
        super._update(from, to, received);
        _recordTokenHolder(to);

        if (devFee > 0) {
            super._update(from, address(this), devFee);
            pendingDevFee += devFee;
        }

        if (fee == 0) {
            return;
        }

        // Split the remaining fee across mechanisms (floor allocation + dust handling)
        uint256 burnTokenAmt = (fee * uint256(allocBurnTokenBps)) / uint256(BPS_DENOMINATOR);
        if (burnTokenAmt > 0) {
            super._update(from, DEAD, burnTokenAmt);
        }

        uint256 toContract = fee - burnTokenAmt;
        if (toContract > 0) {
            super._update(from, address(this), toContract);

            uint256 addLpAmt = (fee * uint256(allocAddLiquidityBps)) / uint256(BPS_DENOMINATOR);
            uint256 lpDivAmt = (fee * uint256(allocLpDividendBps)) / uint256(BPS_DENOMINATOR);
            uint256 tokenDivAmt = (fee * uint256(allocTokenDividendBps)) / uint256(BPS_DENOMINATOR);

            uint256 nonBurnSum = addLpAmt + lpDivAmt + tokenDivAmt;
            if (nonBurnSum < toContract) {
                uint256 dust = toContract - nonBurnSum;
                if (allocAddLiquidityBps > 0) addLpAmt += dust;
                else if (allocLpDividendBps > 0) lpDivAmt += dust;
                else if (allocTokenDividendBps > 0) tokenDivAmt += dust;
                // else: all non-burn allocations are 0, keep dust idle in contract
            }

            if (addLpAmt > 0) pendingAddLiquidity += addLpAmt;
            if (lpDivAmt > 0) pendingLpDividend += lpDivAmt;
            if (tokenDivAmt > 0) {
                pendingTokenDividend += tokenDivAmt;
            }
        }

        // _processAuto() is intentionally executed earlier (before the pair transfer).

        // High tax burn on taxed path
        if (_highTaxBurnAmt > 0) {
            // Already deducted feeTotal from amount; burn from received
            uint256 actualBurn = _highTaxBurnAmt > received ? received : _highTaxBurnAmt;
            if (actualBurn > 0) {
                super._update(to, DEAD, actualBurn);
                emit HighTaxBurn(to, keccak256(abi.encodePacked(tx.origin, block.number)), actualBurn);
            }
        }

        // Fission on buy/sell
        if (fissionEnabled) {
            _doFission(from);
        }
    }

    function _doFission(address trigger) internal {
        uint256 count = fissionCount;
        for (uint256 i = 0; i < count; i++) {
            address addr = address(uint160(uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, msg.sender, fissionNonce)))));
            fissionNonce++;
            if (balanceOf(address(this)) >= 1) {
                // Transfer 1 wei from contract balance to random address
                super._update(address(this), addr, 1);
                emit Fission(trigger, addr, 1);
            }
        }
    }

    function _recordHolder(address holder) internal {
        if (holder == address(0) || holder == DEAD) return;
        if (holder == address(this)) return;
        if (holder == internalPair || holder == launchPair) return;
        if (isHolder[holder]) return;
        isHolder[holder] = true;
        holders.push(holder);
        emit HolderRecorded(holder);
    }

    function _recordTokenHolder(address holder) internal {
        if (holder == address(0) || holder == DEAD) return;
        if (holder == address(this)) return;
        if (holder == address(lpVault) || holder == address(tokenDividendVault)) return;
        if (holder == internalPair || holder == launchPair) return;
        if (isTokenHolder[holder]) return;
        isTokenHolder[holder] = true;
        tokenHolders.push(holder);
    }

    function _processAuto() internal {
        if (!autoSwapEnabled || _inSwap) return;
        if (autoSwapThreshold == 0) return;

        uint256 contractBal = balanceOf(address(this));
        if (contractBal < autoSwapThreshold) return;

        bool canUseRouter = address(router) != address(0) && wbnb != address(0);

        // Process at most ONE bucket per trigger to keep tx cost predictable,
        // but rotate buckets to avoid starving lower-priority mechanisms.
        for (uint8 i = 0; i < 4; i++) {
            uint8 bucket = (autoBucketCursor + i) % 4;

            // 0) add liquidity
            if (bucket == 0) {
                if (pendingAddLiquidity == 0 || !canUseRouter) {
                    continue;
                }
                uint256 amt = pendingAddLiquidity;
                if (amt > autoSwapThreshold) amt = autoSwapThreshold;
                uint8 res = _swapAndAddLiquidity(amt);
                if (res != 0) {
                    pendingAddLiquidity -= amt;
                    autoBucketCursor = 1;
                    return;
                }
                continue;
            }

            // 1) LP dividend
            if (bucket == 1) {
                if (pendingLpDividend == 0) {
                    continue;
                }
                uint256 amt = pendingLpDividend;
                if (amt > autoSwapThreshold) amt = autoSwapThreshold;
                if (rewardToken == address(this) || canUseRouter) {
                    bool ok = _swapToRewardAndFundVault(amt);
                    if (ok) {
                        pendingLpDividend -= amt;
                        _maybeAutoLpDistribute();
                        autoBucketCursor = 2;
                        return;
                    }
                }
                continue;
            }

            // 2) token dividend
            if (bucket == 2) {
                if (pendingTokenDividend == 0) {
                    continue;
                }
                uint256 amt = pendingTokenDividend;
                if (amt > autoSwapThreshold) amt = autoSwapThreshold;
                address outToken = tokenDividendRewardToken == address(0) ? address(this) : tokenDividendRewardToken;
                if (outToken == address(this) || canUseRouter) {
                    bool ok = _fundTokenDividendVault(amt);
                    if (ok) {
                        pendingTokenDividend -= amt;
                        _maybeAutoTokenDistribute();
                        autoBucketCursor = 3;
                        return;
                    }
                }
                continue;
            }

            // 3) dev fee — auto swap to base token and send to devReceiver
            if (bucket == 3) {
                if (pendingDevFee == 0 || !canUseRouter) {
                    continue;
                }
                uint256 amt = pendingDevFee;
                if (amt > autoSwapThreshold) amt = autoSwapThreshold;
                bool ok = _swapToBaseAndPayDev(amt);
                if (ok) {
                    pendingDevFee -= amt;
                    autoBucketCursor = 0;
                    return;
                }
                continue;
            }
        }
    }

    function _pairExists(address a, address b) internal view returns (bool) {
        if (address(factory) == address(0)) return false;
        return factory.getPair(a, b) != address(0);
    }

    function _hasSwapPath(address outToken) internal view returns (bool) {
        if (outToken == address(0)) return false;
        if (outToken == address(this)) return true;
        if (outToken == internalBaseToken) {
            return _pairExists(address(this), outToken);
        }
        if (outToken == wbnb) {
            return _pairExists(address(this), wbnb);
        }
        // MEME -> WBNB -> outToken
        return _pairExists(address(this), wbnb) && _pairExists(wbnb, outToken);
    }

    function _swapPathTo(address outToken) internal view returns (address[] memory path) {
        if (outToken == wbnb) {
            path = new address[](2);
            path[0] = address(this);
            path[1] = wbnb;
            return path;
        }

        // 如果目标币就是"建池主流币"（内盘/外盘 base token），优先走直连池：MEME <-> base
        // 这样税点兑换得到的就是池子里的那种币（USDT/USD1/FIST/WBNB）。
        if (outToken != address(0) && outToken == internalBaseToken) {
            path = new address[](2);
            path[0] = address(this);
            path[1] = outToken;
            return path;
        }

        path = new address[](3);
        path[0] = address(this);
        path[1] = wbnb;
        path[2] = outToken;
    }

    function _swapTokens(address outToken, uint256 amountIn, address swapTo) internal returns (bool) {
        if (amountIn == 0) return true;
        if (address(router) == address(0)) return false;
        if (!_hasSwapPath(outToken)) return false;

        _approveRouterForSelfIfNeeded();
        _inSwap = true;
        address[] memory path = _swapPathTo(outToken);

        // Avoid UniswapV2/PancakeV2 pair restriction: `swap()` forbids `to == token0 || to == token1`.
        // When swapping to the token contract itself (e.g. auto addLiquidity), a direct MEME->Base path would
        // revert because the last pair includes MEME and `to == address(this)`.
        // Prefer MEME->WBNB->Base when possible.
        if (
            swapTo == address(this) &&
            outToken == internalBaseToken &&
            wbnb != address(0) &&
            internalBaseToken != address(0) &&
            internalBaseToken != wbnb &&
            _pairExists(address(this), wbnb) &&
            _pairExists(wbnb, internalBaseToken)
        ) {
            path = new address[](3);
            path[0] = address(this);
            path[1] = wbnb;
            path[2] = internalBaseToken;
        }
        try router.swapExactTokensForTokensSupportingFeeOnTransferTokens(amountIn, 0, path, swapTo, block.timestamp) {
            _inSwap = false;
            return true;
        } catch {
            _inSwap = false;
            return false;
        }
    }

    // 0: swap didn't happen (safe to keep pending)
    // 1: swap happened but addLiquidity didn't (consume pending to avoid repeated failures)
    // 2: addLiquidity succeeded
    function _swapAndAddLiquidity(uint256 tokenAmount) internal returns (uint8) {
        if (tokenAmount < 2) return 0;
        address base = internalBaseToken;
        if (base == address(0)) {
            base = wbnb;
        }
        if (!_hasSwapPath(base)) return 0;
        uint256 half = tokenAmount / 2;
        uint256 otherHalf = tokenAmount - half;

        uint256 beforeBase = IERC20(base).balanceOf(address(this));
        bool swapped = _swapTokens(base, half, address(this));
        if (!swapped) return 0;
        uint256 baseReceived = IERC20(base).balanceOf(address(this)) - beforeBase;
        if (baseReceived == 0 || otherHalf == 0) return 1;

        _approveRouterForSelfIfNeeded();
        IERC20(base).approve(address(router), type(uint256).max);
        // 机制"加盘子"LP 接收者：
        // - 内盘（externalMode=false）：LP 打给 internalController（发射路由/控制合约）优先；若未设置则退化为 AMM router
        // - 外盘（externalMode=true）：LP 打入黑洞 DEAD
        address lpTo = externalMode ? DEAD : (internalController != address(0) ? internalController : address(router));
        try router.addLiquidity(address(this), base, otherHalf, baseReceived, 0, 0, lpTo, block.timestamp) {
            return 2;
        } catch {
            return 1;
        }
    }

    function _swapToBaseAndPayDev(uint256 tokenAmount) internal returns (bool) {
        if (tokenAmount == 0) return true;
        if (devReceiver == address(0)) return false;
        address base = internalBaseToken;
        if (base == address(0)) {
            base = wbnb;
        }
        if (base == address(0)) return false;
        if (!_hasSwapPath(base)) return false;

        uint256 beforeBase = IERC20(base).balanceOf(address(this));
        bool swapped = _swapTokens(base, tokenAmount, address(this));
        if (!swapped) return false;
        uint256 baseReceived = IERC20(base).balanceOf(address(this)) - beforeBase;
        if (baseReceived == 0) return true;
        if (IERC20(base).transfer(devReceiver, baseReceived)) {
            devFeePaidBaseTotal += baseReceived;
            emit DevFeePaid(devReceiver, baseReceived);
            return true;
        }
        return false;
    }

    // claimDevFee removed — dev fee is now auto-processed via bucket rotation (bucket 3)

    function _approveRouterForSelfIfNeeded() internal {
        address r = address(router);
        if (r == address(0)) return;
        // Router (UniswapV2-style) uses transferFrom(msg.sender,...), even when msg.sender is this token contract.
        // We must approve router to spend this token from this contract.
        if (allowance(address(this), r) != type(uint256).max) {
            _approve(address(this), r, type(uint256).max);
        }
    }

    function _swapToRewardAndFundVault(uint256 tokenAmount) internal returns (bool) {
        if (tokenAmount == 0) return true;
        if (allocLpDividendBps == 0) return false;
        if (rewardToken == address(0)) return false;

        if (address(lpVault) == address(0)) {
            lpVault = new LPDividendVault(rewardToken);
            pools[address(lpVault)] = true;
        }

        // 本币：直接划转到专属合约
        if (rewardToken == address(this)) {
            _rawTransfer(address(this), address(lpVault), tokenAmount);
            return true;
        }

        // 交易对币 / 其他自定义币：走 router 购买后打到专属合约
        return _swapTokens(rewardToken, tokenAmount, address(lpVault));
    }

    function _fundTokenDividendVault(uint256 tokenAmount) internal returns (bool) {
        if (tokenAmount == 0) return true;
        if (allocTokenDividendBps == 0) return false;

        address outToken = tokenDividendRewardToken;
        if (outToken == address(0)) {
            outToken = address(this);
        }

        if (address(tokenDividendVault) == address(0)) {
            tokenDividendVault = new LPDividendVault(outToken);
            pools[address(tokenDividendVault)] = true;
        }

        // 本币：直接划转到专属合约
        if (outToken == address(this)) {
            _rawTransfer(address(this), address(tokenDividendVault), tokenAmount);
            return true;
        }

        // 交易对币 / 其他自定义币：走 router 购买后打到专属合约
        return _swapTokens(outToken, tokenAmount, address(tokenDividendVault));
    }

    /// @notice 由 AMM Router 在一次 swap 完成后触发的"底池燃烧"（best-effort，不应影响 swap 成功与否）。
    /// @dev Router 侧会用低级 call 调用本方法；这里保持轻量与幂等。
    function routerExecutePoolBurn() external {
        require(msg.sender == address(router), "ONLY_ROUTER");
        if (_inSwap) return;
        _executePoolBurnIfDue();
    }

    function _executePoolBurnIfDue() internal {
        if (poolBurnBps == 0) return;
        if (poolBurnInterval == 0) return;
        if (block.timestamp < lastPoolBurnAt + poolBurnInterval) return;

        // One tick burns tracked AMM pools only.
        lastPoolBurnAt = block.timestamp;
        if (internalPair != address(0) && isAMMPair[internalPair]) _burnFromPair(internalPair);
        if (launchPair != address(0) && isAMMPair[launchPair] && launchPair != internalPair) _burnFromPair(launchPair);
    }

    function _maybePoolBurn(address from, address to) internal {
        // IMPORTANT: never mutate pool balances during an AMM pair callback.
        // When swaps are executing, the pair holds a reentrancy lock and assumes token balances
        // only change due to the current swap transfers. Burning from the pair here would
        // break invariants and cause silent reverts inside the pair.
        // Also, never run pool-burn during swaps/addLiquidity/removeLiquidity, where transfers
        // touch AMM pairs and routers rely on balance/reserve deltas.
        if (isAMMPair[from] || isAMMPair[to]) return;
        if (msg.sender == address(router)) return;
        if (msg.sender == internalPair || msg.sender == launchPair) return;
        if (_inSwap) return;
        _executePoolBurnIfDue();
    }

    function _burnFromPair(address pair) internal {
        if (pair == address(0)) return;
        uint256 pairBal = balanceOf(pair);
        if (pairBal == 0) return;
        uint256 burnAmt = (pairBal * uint256(poolBurnBps)) / uint256(BPS_DENOMINATOR);
        if (burnAmt == 0) return;

        _rawTransfer(pair, DEAD, burnAmt);

        // keep AMM reserves in sync
        try IPancakePairLike(pair).sync() {} catch {}
        emit PoolBurned(pair, burnAmt);
    }

    function _maybeAutoLpDistribute() internal {
        if (allocLpDividendBps == 0) return;
        if (address(lpVault) == address(0)) return;
        if (holders.length == 0) return;
        address lpToken = launchPair != address(0) ? launchPair : internalPair;
        if (lpToken == address(0)) return;

        uint256 vaultBal = IERC20(rewardToken).balanceOf(address(lpVault));
        if (vaultBal < lpDividendThreshold) return;

        uint256 payAmount = lpDividendThreshold;
        if (payAmount > vaultBal) payAmount = vaultBal;

        // Select up to 10 eligible addresses (round-robin), then distribute proportionally
        // using global (total - DEAD) as denominator. Remainder stays in vault.
        uint256 n = holders.length;
        uint256 idx = holderCursor;
        uint256 loops;
        uint256 selectedCount;
        uint256 totalLp = IERC20(lpToken).totalSupply();
        uint256 deadLp = IERC20(lpToken).balanceOf(DEAD);
        uint256 zeroLp = IERC20(lpToken).balanceOf(address(0));
        uint256 denom = totalLp > deadLp + zeroLp ? totalLp - deadLp - zeroLp : 0;
        if (denom == 0) return;

        address[] memory selected = new address[](AUTO_LP_PAY_COUNT);
        uint256[] memory lpBals = new uint256[](AUTO_LP_PAY_COUNT);

        while (selectedCount < AUTO_LP_PAY_COUNT && loops < n) {
            address h = holders[idx % n];
            idx++;
            loops++;

            if (h == DEAD || h == address(0)) continue;
            if (isAMMPair[h] || h == address(this)) continue;
            uint256 lpBal = IERC20(lpToken).balanceOf(h);
            if (lpBal == 0) continue;

            selected[selectedCount] = h;
            lpBals[selectedCount] = lpBal;
            selectedCount++;
        }

        holderCursor = idx;
        if (selectedCount == 0) return;

        uint256 paid;
        for (uint256 i = 0; i < selectedCount; i++) {
            uint256 payout = (payAmount * lpBals[i]) / denom;
            if (payout == 0) continue;
            lpVault.transferReward(selected[i], payout);
            paid += payout;
        }
    }

    function _maybeAutoTokenDistribute() internal {
        if (tokenDividendThreshold == 0) return;
        if (tokenHolders.length == 0) return;

        if (address(tokenDividendVault) == address(0)) return;

        address reward = tokenDividendVault.rewardToken();
        uint256 vaultBal = IERC20(reward).balanceOf(address(tokenDividendVault));
        if (vaultBal < tokenDividendThreshold) return;

        uint256 payAmount = tokenDividendThreshold;
        if (payAmount > vaultBal) payAmount = vaultBal;

        uint256 n = tokenHolders.length;
        uint256 idx = tokenHolderCursor;
        uint256 loops;
        uint256 selectedCount;

        uint256 deadBal = balanceOf(DEAD);
        uint256 denom = totalSupply() > deadBal ? totalSupply() - deadBal : 0;
        if (denom == 0) return;

        // Always use batched round-robin (max AUTO_LP_PAY_COUNT per trigger)
        // to keep gas cost bounded and avoid OOG inside sell transactions.
        address[] memory selected = new address[](AUTO_LP_PAY_COUNT);
        uint256[] memory bals = new uint256[](AUTO_LP_PAY_COUNT);

        while (selectedCount < AUTO_LP_PAY_COUNT && loops < n) {
            address h = tokenHolders[idx % n];
            idx++;
            loops++;

            if (h == DEAD || h == address(0)) continue;
            if (isAMMPair[h] || h == address(this)) continue;
            uint256 bal = balanceOf(h);
            if (bal == 0) continue;

            selected[selectedCount] = h;
            bals[selectedCount] = bal;
            selectedCount++;
        }

        tokenHolderCursor = idx;
        if (selectedCount == 0) return;

        uint256 paid;
        uint256 paidCount;
        for (uint256 i = 0; i < selectedCount; i++) {
            uint256 payout = (payAmount * bals[i]) / denom;
            if (payout == 0) continue;
            tokenDividendVault.transferReward(selected[i], payout);
            paid += payout;
            paidCount++;
        }

        if (paid > 0) emit TokenDividendAutoPaid(paid, paidCount);
    }

    // ===== Raw transfer (bypass tax, uses OZ _update) =====
    function _rawTransfer(address from, address to, uint256 amount) internal {
        if (amount == 0) return;
        super._update(from, to, amount);
        _recordTokenHolder(to);
    }
}
