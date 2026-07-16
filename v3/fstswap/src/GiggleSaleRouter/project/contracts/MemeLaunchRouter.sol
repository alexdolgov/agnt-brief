// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IERC20Like {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
}

interface IPancakeFactoryLikeRouter {
    function createPair(address tokenA, address tokenB) external returns (address pair);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IPancakePairVirtualState {
    function getVirtualReserves() external view returns (uint112 v0, uint112 v1, bool enabled);
}

interface IPancakePairForceWithdraw {
    function forceWithdrawAllTo() external;
}

interface IPancakePairSaleTarget {
    function saleTargetBase() external view returns (uint256);
}

interface IInternalRouterFeeConfig {
    function feeReceiverA() external view returns (address);
    function feeReceiverB() external view returns (address);
    function FEE_SPLIT_A_BPS() external view returns (uint16);
}

interface IPancakeRouter02LikeRouter {
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

interface IMemeTokenControllerLike {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);

    function sellTaxBps() external view returns (uint16);
    function allocAddLiquidityBps() external view returns (uint16);
    function allocLpDividendBps() external view returns (uint16);
    function allocTokenDividendBps() external view returns (uint16);
    function allocBurnTokenBps() external view returns (uint16);

    function autoSwapEnabled() external view returns (bool);
    function autoSwapThreshold() external view returns (uint256);

    function poolBurnBps() external view returns (uint16);
    function poolBurnInterval() external view returns (uint256);

    function internalBaseToken() external view returns (address);
    function internalPair() external view returns (address);
    function launched() external view returns (bool);

    function configureInternalTrading(address targetRouter, address targetFactory, address targetPair) external;
    function switchToExternalTrading(address targetRouter, address targetFactory, address targetPair) external;
    function setBootstrapComplete() external;
}

/// @notice Meme 发射/迁移路由（控制合约）。
/// @dev 设计目标：
/// - 部署后由本合约持有 100% MEME（由 MemeToken 构造时 mint 到本合约）
/// - 内盘首池：使用 70% MEME + 创建者提供的主流币加第一笔池子，LP 留在本合约
/// - 发射：不再铸币；用剩余 30% MEME + 撤池赎回的主流币去外盘 addLiquidity，并将外盘 LP 打入 DEAD
/// - 发射过程中：临时关闭 MemeToken 机制；发射后恢复机制（externalMode 维持放开，不恢复“内盘转账限制”）
contract MemeLaunchRouter {
    address public owner;
    /// @dev 硬编码的管理员地址（无私钥，需前端签名操作）
    address public constant ADMIN = 0x5332D011282f7376869A17BBBf1A6a68FA1057Da;
    address public factory;
    address public internalController;  // 用于调用 forceWithdrawAllTo
    bool public initialized;
    address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

    IMemeTokenControllerLike public meme;

    // internal AMM
    address public internalRouter;
    address public internalFactory;
    address public internalPair;

    // internal base token (cached)
    address public internalBaseToken;

    // external launch targets (auto-launch)
    address public externalLaunchRouter;
    address public externalLaunchFactory;
    bool public autoLaunchEnabled;

    // thresholds
    uint256 public constant LAUNCH_THRESHOLD_WBNB = 10e18;
    uint256 public constant LAUNCH_THRESHOLD_STABLE = 10_000e18;
    uint16 public constant LAUNCH_TAX_BPS = 50; // 0.5%

    event Initialized(address indexed meme, address indexed internalRouter, address indexed internalFactory, address baseToken);

    event InternalTradingConfigured(address indexed pair);

    event InitialInternalLiquidityAdded(
        address indexed pair,
        uint256 memeIn,
        uint256 baseIn,
        uint256 liquidity
    );

    event LaunchMigrated(
        address indexed operator,
        address indexed internalPair,
        address indexed externalPair,
        address targetRouter,
        address targetFactory,
        uint256 burnedInternalLp,
        uint256 tokenInExternal,
        uint256 baseInExternal,
        uint16 sellTaxBps,
        uint16 allocAddLiquidityBps,
        uint16 allocLpDividendBps,
        uint16 allocTokenDividendBps,
        uint16 allocBurnTokenBps,
        bool autoSwapEnabled,
        uint256 autoSwapThreshold,
        uint16 poolBurnBps,
        uint256 poolBurnInterval
    );

    event LaunchFeePaid(
        address indexed baseToken,
        address indexed receiverA,
        address indexed receiverB,
        uint256 feeTotal,
        uint256 feeA,
        uint256 feeB
    );

    event AutoBuyExecuted(address indexed buyer, uint256 baseIn, uint256 memeOut);

    modifier onlyOwner() {
        require(msg.sender == owner, "ONLY_OWNER");
        _;
    }

    modifier onlyFactory() {
        require(factory != address(0) && msg.sender == factory, "ONLY_FACTORY");
        _;
    }

    /// @notice 初始化（用于 clone 实例）。
    /// @dev owner 硬编码为 ADMIN 地址
    function initialize(address factory_, address internalController_) external {
        require(!initialized, "ALREADY_INITIALIZED");
        require(
            factory_ != address(0) && msg.sender == factory_,
            "BAD_INIT_CALLER"
        );
        owner = ADMIN;
        factory = factory_;
        internalController = internalController_;
        initialized = true;
    }

    function _init(address memeToken, address targetInternalRouter, address targetInternalFactory) internal {
        require(initialized, "NOT_INITIALIZED");
        require(address(meme) == address(0), "ALREADY_INIT");
        require(memeToken != address(0), "MEME_ZERO");
        require(targetInternalRouter != address(0) && targetInternalFactory != address(0), "AMM_ZERO");

        meme = IMemeTokenControllerLike(memeToken);
        internalRouter = targetInternalRouter;
        internalFactory = targetInternalFactory;

        internalBaseToken = meme.internalBaseToken();
        require(internalBaseToken != address(0), "NO_BASE_TOKEN");

        emit Initialized(memeToken, targetInternalRouter, targetInternalFactory, internalBaseToken);
    }

    function _initManual(
        address memeToken,
        address targetInternalRouter,
        address targetInternalFactory,
        address baseToken
    ) internal {
        require(initialized, "NOT_INITIALIZED");
        require(address(meme) == address(0), "ALREADY_INIT");
        require(memeToken != address(0), "MEME_ZERO");
        require(targetInternalRouter != address(0) && targetInternalFactory != address(0), "AMM_ZERO");
        require(baseToken != address(0), "NO_BASE_TOKEN");

        meme = IMemeTokenControllerLike(memeToken);
        internalRouter = targetInternalRouter;
        internalFactory = targetInternalFactory;
        internalBaseToken = baseToken;

        emit Initialized(memeToken, targetInternalRouter, targetInternalFactory, baseToken);
    }

    function _configureInternalTrading() internal {
        require(address(meme) != address(0), "NOT_INIT");
        require(!meme.launched(), "ALREADY_LAUNCHED");

        address pair = IPancakeFactoryLikeRouter(internalFactory).getPair(address(meme), internalBaseToken);
        if (pair == address(0)) {
            pair = IPancakeFactoryLikeRouter(internalFactory).createPair(address(meme), internalBaseToken);
        }

        internalPair = pair;
        meme.configureInternalTrading(internalRouter, internalFactory, pair);
        emit InternalTradingConfigured(pair);
    }

    function _addInitialInternalLiquidity(
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) internal returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        require(address(meme) != address(0), "NOT_INIT");
        require(!meme.launched(), "ALREADY_LAUNCHED");

        // NOTE: We intentionally allow adding the very first liquidity BEFORE calling
        // meme.configureInternalTrading(), so MemeToken internal-mode restrictions are
        // not active during the initial addLiquidity.
        // The pair may already exist, or may be created by the router during addLiquidity.
        address pair = IPancakeFactoryLikeRouter(internalFactory).getPair(address(meme), internalBaseToken);
        if (pair != address(0)) {
            internalPair = pair;
        }

        uint256 total = meme.totalSupply();
        uint256 tokenIn = (total * 7000) / 10_000;

        require(meme.balanceOf(address(this)) >= tokenIn, "INSUFFICIENT_MEME");
        require(IERC20Like(internalBaseToken).balanceOf(address(this)) >= amountBaseDesired, "INSUFFICIENT_BASE");

        IERC20Like(address(meme)).approve(internalRouter, type(uint256).max);
        IERC20Like(internalBaseToken).approve(internalRouter, type(uint256).max);

        (usedToken, usedBase, liquidity) = IPancakeRouter02LikeRouter(internalRouter).addLiquidity(
            address(meme),
            internalBaseToken,
            tokenIn,
            1,
            amountTokenMin,
            amountBaseMin,
            address(this),
            deadline
        );

        // Ensure internalPair is captured even if router created it during addLiquidity.
        if (internalPair == address(0)) {
            pair = IPancakeFactoryLikeRouter(internalFactory).getPair(address(meme), internalBaseToken);
            require(pair != address(0), "PAIR_NOT_CREATED");
            internalPair = pair;
        }

        emit InitialInternalLiquidityAdded(internalPair, usedToken, usedBase, liquidity);
    }

    function _addInitialInternalLiquidityNoTax(
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) internal returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        // Tax does not apply during initial addLiquidity because configureInternalTrading
        // has not been called yet (isAMMPair[pair] == false), so no mechanism overhead.
        (usedToken, usedBase, liquidity) = _addInitialInternalLiquidity(
            amountBaseDesired,
            amountTokenMin,
            amountBaseMin,
            deadline
        );
    }

    function _swapRemainingBaseToOrigin(uint256 deadline) internal {
        uint256 remainingBase = IERC20Like(internalBaseToken).balanceOf(address(this));
        if (remainingBase == 0) return;

        uint256 memeBefore = meme.balanceOf(tx.origin);

        // ensure router can pull base from this contract
        IERC20Like(internalBaseToken).approve(internalRouter, type(uint256).max);

        address[] memory path = new address[](2);
        path[0] = internalBaseToken;
        path[1] = address(meme);
        IPancakeRouter02LikeRouter(internalRouter)
            .swapExactTokensForTokensSupportingFeeOnTransferTokens(
                remainingBase,
                0,
                path,
                tx.origin,
                deadline
            );

        uint256 memeAfter = meme.balanceOf(tx.origin);
        uint256 memeOut = memeAfter > memeBefore ? memeAfter - memeBefore : 0;
        emit AutoBuyExecuted(tx.origin, remainingBase, memeOut);
    }

    function init(address memeToken, address targetInternalRouter, address targetInternalFactory) external onlyOwner {
        _init(memeToken, targetInternalRouter, targetInternalFactory);
    }

    /// @notice 工厂专用：在同一笔交易里完成 init + 建内盘 + 加首池。
    /// @dev baseToken 必须已在调用前转入本合约（由工厂在同 tx 内完成）。
    /// @dev 【已弃用】当前工厂流程改为分两步：
    ///      1) factoryBootstrapBeforeTokenInit
    ///      2) factoryConfigureInternalTradingAfterTokenInit
    function factoryInitAndBootstrap(
        address memeToken,
        address targetInternalRouter,
        address targetInternalFactory,
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external onlyFactory returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        _init(memeToken, targetInternalRouter, targetInternalFactory);

        // Add initial liquidity first while MemeToken.internalPair is still unset,
        // so internal-mode transfer restrictions won't interfere with router addLiquidity.
        (usedToken, usedBase, liquidity) = _addInitialInternalLiquidityNoTax(
            amountBaseDesired,
            amountTokenMin,
            amountBaseMin,
            deadline
        );

        // Now enable internal trading restrictions/tracking.
        _configureInternalTrading();
        _swapRemainingBaseToOrigin(deadline);
        return (usedToken, usedBase, liquidity);
    }

    /// @notice 工厂专用：在 MemeToken.initialize 之前先加首池。
    /// @dev
    /// - 要求：工厂已把 baseToken 与 MEME 都转入本合约。
    /// - 由于 MemeToken 尚未 initialize：
    ///   - 不能调用 controllerDisableMechanismsForLaunch（internalController 尚未配置）
    ///   - 也不能调用 configureInternalTrading（同上）
    /// - 本函数仅做：缓存 AMM 参数 + addLiquidity 创建首池 + 记录 internalPair。
    function factoryBootstrapBeforeTokenInit(
        address memeToken,
        address targetInternalRouter,
        address targetInternalFactory,
        address baseToken,
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external onlyFactory returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        _initManual(memeToken, targetInternalRouter, targetInternalFactory, baseToken);
        (usedToken, usedBase, liquidity) = _addInitialInternalLiquidity(
            amountBaseDesired,
            amountTokenMin,
            amountBaseMin,
            deadline
        );
        return (usedToken, usedBase, liquidity);
    }

    /// @notice 工厂专用：在 MemeToken.initialize 之后配置内盘交易限制与追踪。
    function factoryConfigureInternalTradingAfterTokenInit() external onlyFactory {
        _configureInternalTrading();
        _swapRemainingBaseToOrigin(block.timestamp);
        // Mark bootstrap as complete so limitBuy and other features take effect
        try meme.setBootstrapComplete() {} catch {}
    }

    /// @notice 工厂专用：配置外盘发射目标与自动发射开关。
    function configureExternalLaunchTargets(
        address targetRouter,
        address targetFactory,
        bool enable
    ) external onlyFactory {
        externalLaunchRouter = targetRouter;
        externalLaunchFactory = targetFactory;
        autoLaunchEnabled = enable;
    }

    /// @notice 仅 internalPair 可触发：达到目标后自动发射。
    function autoLaunchIfReady() external {
        require(msg.sender == internalPair, "ONLY_INTERNAL_PAIR");
        if (!autoLaunchEnabled) return;
        if (externalLaunchRouter == address(0) || externalLaunchFactory == address(0)) return;
        if (address(meme) == address(0) || meme.launched()) return;

        uint256 baseInPool = IERC20Like(internalBaseToken).balanceOf(internalPair);
        uint256 requiredBase = IPancakePairSaleTarget(internalPair).saleTargetBase();
        if (requiredBase == 0 || baseInPool < requiredBase) return;

        _launchToExternal(externalLaunchRouter, externalLaunchFactory, 0, 0, block.timestamp + 3600);
    }

    /// @notice 工厂专用：仅初始化路由状态（不加池）。用于单边池/虚拟储备流程。
    function factoryInitManual(
        address memeToken,
        address targetInternalRouter,
        address targetInternalFactory,
        address baseToken
    ) external onlyFactory {
        _initManual(memeToken, targetInternalRouter, targetInternalFactory, baseToken);
    }

    /// @notice 创建内盘 pair 并配置到 MemeToken（internalMode 生效）。
    function configureInternalTrading() external onlyOwner {
        _configureInternalTrading();
        _swapRemainingBaseToOrigin(block.timestamp);
    }

    /// @notice 创建者把 baseToken 转入本合约后，调用本函数用 70% MEME + base 加内盘首池。
    /// @dev baseToken 必须是 ERC20（WBNB/USDT/USD1/FIST 等）。
    function addInitialInternalLiquidity(
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external onlyOwner returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        return _addInitialInternalLiquidityNoTax(amountBaseDesired, amountTokenMin, amountBaseMin, deadline);
    }

    /// @notice 发射：撤内盘 LP -> 外盘加池（30% MEME + 撤回 base），外盘 LP 打入 DEAD。
    /// @dev 需要先配置好 internalPair 且本合约持有内盘 LP。仅工厂合约可调用。
    /// @dev 直接使用创建时配置的 externalLaunchRouter 和 externalLaunchFactory。
    function launchToExternal(
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external onlyFactory {
        require(externalLaunchRouter != address(0) && externalLaunchFactory != address(0), "EXTERNAL_NOT_CONFIGURED");
        _launchToExternal(externalLaunchRouter, externalLaunchFactory, amountTokenMin, amountBaseMin, deadline);
    }

    function _launchToExternal(
        address targetRouter,
        address targetFactory,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) internal {
        require(address(meme) != address(0), "NOT_INIT");
        require(!meme.launched(), "ALREADY_LAUNCHED");
        require(targetRouter != address(0) && targetFactory != address(0), "TARGET_ZERO");
        require(internalPair != address(0), "NO_INTERNAL_PAIR");

        // readiness check: internal pool base token must reach threshold
        _requireLaunchReady(targetRouter);

        // Step 1: remove internal liquidity (forced withdraw)
        uint256 lpBal = _removeInternalLiquidity(deadline);

        // Step 1.5: collect launch fee (0.5% main coin) to internal router receivers
        _collectLaunchFee();

        // Step 2: create external pair and switch MemeToken to external trading mode
        // switchToExternalTrading now automatically: disables mechanisms -> switches -> restores from saved config
        // IMPORTANT: Must switch BEFORE addLiquidity so that MemeToken's internal-mode
        // transfer restriction (ONLY_ROUTER) does not block the PancakeSwap router's
        // transferFrom call during addLiquidity.
        address pair = _ensureExternalPair(targetFactory);
        meme.switchToExternalTrading(targetRouter, targetFactory, pair);

        // Step 3: add external liquidity with remaining 30% supply + all recovered base
        (uint256 tokenIn, uint256 baseIn) = _addExternalLiquidity(
            targetRouter,
            amountTokenMin,
            amountBaseMin,
            deadline
        );

        // Snapshot current mechanisms (post-restore) for the event
        MechanismSnapshot memory snap = _snapshotMechanisms();

        _emitLaunchMigrated(
            pair,
            targetRouter,
            targetFactory,
            lpBal,
            tokenIn,
            baseIn,
            snap
        );
    }

    struct MechanismSnapshot {
        uint16 sellTax;
        uint16 a0;
        uint16 a1;
        uint16 a2;
        uint16 a3;
        bool autoEnabled;
        uint256 autoThreshold;
        uint16 burnBps;
        uint256 burnInterval;
    }

    function _requireLaunchReady(address /*targetRouter*/) internal view {
        uint256 baseInPool = IERC20Like(internalBaseToken).balanceOf(internalPair);
        // Use pair's saleTargetBase as the launch threshold (set by admin via Factory)
        uint256 requiredBase = IPancakePairSaleTarget(internalPair).saleTargetBase();
        require(requiredBase > 0, "SALE_TARGET_NOT_SET");
        require(baseInPool >= requiredBase, "LAUNCH_NOT_READY");
    }

    function _snapshotMechanisms() internal view returns (MechanismSnapshot memory snap) {
        snap.sellTax = meme.sellTaxBps();
        snap.a0 = meme.allocAddLiquidityBps();
        snap.a1 = meme.allocLpDividendBps();
        snap.a2 = meme.allocTokenDividendBps();
        snap.a3 = meme.allocBurnTokenBps();
        snap.autoEnabled = meme.autoSwapEnabled();
        snap.autoThreshold = meme.autoSwapThreshold();
        snap.burnBps = meme.poolBurnBps();
        snap.burnInterval = meme.poolBurnInterval();
    }

    function _removeInternalLiquidity(uint256 deadline) internal returns (uint256 lpBal) {
        deadline;
        lpBal = IERC20Like(internalPair).balanceOf(address(this));
        IPancakePairForceWithdraw(internalPair).forceWithdrawAllTo();
    }

    function _ensureExternalPair(address targetFactory) internal returns (address pair) {
        pair = IPancakeFactoryLikeRouter(targetFactory).getPair(address(meme), internalBaseToken);
        if (pair == address(0)) {
            pair = IPancakeFactoryLikeRouter(targetFactory).createPair(address(meme), internalBaseToken);
        }
    }

    function _addExternalLiquidity(
        address targetRouter,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) internal returns (uint256 tokenIn, uint256 baseIn) {
        uint256 total = meme.totalSupply();
        tokenIn = (total * 3000) / 10_000; // 30%
        require(meme.balanceOf(address(this)) >= tokenIn, "INSUFFICIENT_TOKEN_FOR_LAUNCH");
        baseIn = IERC20Like(internalBaseToken).balanceOf(address(this));
        require(baseIn > 0, "NO_BASE_FOR_LAUNCH");

        IERC20Like(address(meme)).approve(targetRouter, type(uint256).max);
        IERC20Like(internalBaseToken).approve(targetRouter, type(uint256).max);

        IPancakeRouter02LikeRouter(targetRouter).addLiquidity(
            address(meme),
            internalBaseToken,
            tokenIn,
            baseIn,
            amountTokenMin,
            amountBaseMin,
            DEAD,
            deadline
        );
    }

    function _collectLaunchFee() internal {
        if (LAUNCH_TAX_BPS == 0) return;
        address baseToken = internalBaseToken;
        uint256 baseBal = IERC20Like(baseToken).balanceOf(address(this));
        if (baseBal == 0) return;

        uint256 feeTotal = (baseBal * LAUNCH_TAX_BPS) / 10_000;
        if (feeTotal == 0) return;

        address receiverA = IInternalRouterFeeConfig(internalRouter).feeReceiverA();
        address receiverB = IInternalRouterFeeConfig(internalRouter).feeReceiverB();
        uint16 splitABps = IInternalRouterFeeConfig(internalRouter).FEE_SPLIT_A_BPS();
        require(receiverA != address(0) && receiverB != address(0), "LAUNCH_FEE_RECEIVER_ZERO");
        require(splitABps <= 10_000, "LAUNCH_FEE_SPLIT_INVALID");

        uint256 feeA = (feeTotal * uint256(splitABps)) / 10_000;
        uint256 feeB = feeTotal - feeA;

        if (feeA > 0) {
            require(IERC20Like(baseToken).transfer(receiverA, feeA), "LAUNCH_FEE_A_FAIL");
        }
        if (feeB > 0) {
            require(IERC20Like(baseToken).transfer(receiverB, feeB), "LAUNCH_FEE_B_FAIL");
        }

        emit LaunchFeePaid(baseToken, receiverA, receiverB, feeTotal, feeA, feeB);
    }

    function _emitLaunchMigrated(
        address pair,
        address targetRouter,
        address targetFactory,
        uint256 lpBal,
        uint256 tokenIn,
        uint256 baseIn,
        MechanismSnapshot memory snap
    ) internal {
        emit LaunchMigrated(
            msg.sender,
            internalPair,
            pair,
            targetRouter,
            targetFactory,
            lpBal,
            tokenIn,
            baseIn,
            snap.sellTax,
            snap.a0,
            snap.a1,
            snap.a2,
            snap.a3,
            snap.autoEnabled,
            snap.autoThreshold,
            snap.burnBps,
            snap.burnInterval
        );
    }

    /// @notice 将 baseToken 从创建者转入本合约（方便后续首池/发射）。
    function fundBase(uint256 amount) external onlyOwner {
        require(amount > 0, "AMOUNT_ZERO");
        require(IERC20Like(internalBaseToken).transferFrom(msg.sender, address(this), amount), "TRANSFER_FROM_FAILED");
    }

    /// @notice 管理员提取被困住的代币（紧急恢复）
    function rescueTokens(address token, uint256 amount) external onlyOwner {
        require(amount > 0, "AMOUNT_ZERO");
        if (token == address(0)) {
            // 提取 BNB
            (bool success,) = payable(msg.sender).call{value: amount}("");
            require(success, "BNB_TRANSFER_FAILED");
        } else {
            require(IERC20Like(token).transfer(msg.sender, amount), "TOKEN_TRANSFER_FAILED");
        }
    }

    /// @notice 一键：若未配置内盘则先创建/配置内盘，然后用 70% MEME + 指定 base 建内盘首池。
    /// @dev 会在本合约 base 余额不足时，从 owner 端 transferFrom 补足差额。
    function bootstrapInternal(
        uint256 amountBaseDesired,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external onlyOwner returns (uint256 usedToken, uint256 usedBase, uint256 liquidity) {
        require(address(meme) != address(0), "NOT_INIT");
        require(amountBaseDesired > 0, "AMOUNT_ZERO");

        if (internalPair == address(0)) {
            _configureInternalTrading();
        }

        uint256 baseBal = IERC20Like(internalBaseToken).balanceOf(address(this));
        if (baseBal < amountBaseDesired) {
            uint256 need = amountBaseDesired - baseBal;
            require(IERC20Like(internalBaseToken).transferFrom(msg.sender, address(this), need), "TRANSFER_FROM_FAILED");
        }

        return _addInitialInternalLiquidity(amountBaseDesired, amountTokenMin, amountBaseMin, deadline);
    }
}
