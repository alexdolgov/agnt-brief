// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { MemeLaunchRouter } from "./MemeLaunchRouter.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";

// ─── Interfaces (merged from LaunchModule / LaunchSeedLib / LaunchFundLib) ───

interface IMemeTokenLike {
    function launchPair() external view returns (address);
    function launched() external view returns (bool);
    function externalMode() external view returns (bool);
}

interface IMemeLaunchRouterLike {
    function meme() external view returns (address);
    function externalLaunchRouter() external view returns (address);
    function externalLaunchFactory() external view returns (address);
}

interface IMemeTokenInit {
    struct FeatureConfig {
        uint8 flags;
        uint256 maxBuyPerTx;
        uint8 fissionCount;
        uint256 burnDividendAmount;
        address burnDividendToken;
    }

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
    ) external;
}

interface IMemeTokenSeedLike {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transfer(address to, uint256 amount) external returns (bool);
}

interface IInternalFactoryVirtualSeedLib {
    function createInternalVirtualPair(
        address tokenA,
        address tokenB,
        uint112 v0,
        uint112 v1,
        address router,
        uint amountASeed,
        uint amountBSeed,
        address lpTo
    ) external returns (address pair);

    function configurePairSaleBySelloutTarget(
        address pair,
        address saleToken,
        address baseToken,
        uint saleTargetBase,
        uint112 saleRemain
    ) external;
}

interface IWBNBLikeFundLib {
    function deposit() external payable;
    function transfer(address to, uint256 value) external returns (bool);
}

// ─── Contract ───

/// @notice 平台入口：一笔交易完成"创建代币 + 内盘首池"。
/// @dev Transparent Proxy + AccessControl。
/// - 若 baseToken == internalRouter.WETH()（WBNB），可直接用 msg.value 完成首池资金，无需提前 approve。
/// - 若 baseToken 是稳定币/其他 ERC20，则需要用户提前 approve 本工厂。
contract MemeLaunchFactory is
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    address public routerImplementation;
    address public platformOwner;
    /// @dev kept for storage layout compatibility (was `launchModule`); no longer used.
    address private __deprecated_launchModule;
    address public memeTokenImplementation;

    // ─── Errors ───
    error ImplZero();
    error OwnerZero();
    error LaunchModuleZero();          // kept for initialize back-compat
    error MemeImplZero();
    error VirtualBaseZero();
    error SaleTargetZero();
    error SaleRemainZero();
    error CloneFail();
    error MemeApproveFactoryFailed();
    error NoMemeRemain();
    error TransferMemeToRouterFailed();
    error SeedStep_InitRouterFailed();
    error UnexpectedMsgValue();
    error InsufficientMsgValue();
    error WbnbTransferFailed();
    error BaseTransferFromFailed();

    // ─── Structs ───
    struct TokenParams {
        string name;
        string symbol;
        address internalBaseToken;
        uint16 sellTaxBps;
        uint16[4] allocBps;
        address rewardToken;
        address tokenDividendRewardToken;
        uint256 lpDividendThreshold;
        uint16 poolBurnBps;
        uint256 poolBurnInterval;
    }

    struct AmmParams {
        address internalRouter;
        address internalFactory;
    }

    struct BootstrapParams {
        uint256 amountBaseDesired;
        uint256 amountTokenMin;
        uint256 amountBaseMin;
        uint256 deadline;
    }

    struct VirtualSaleParams {
        uint112 virtualBase;
        uint256 saleTargetBase;
        uint112 saleRemain;
    }

    struct ExternalLaunchParams {
        address externalRouter;
        address externalFactory;
        bool enableAutoLaunch;
    }

    // ─── Events ───
    event MemeCreatedAndBootstrapped(
        address indexed creator,
        address indexed meme,
        address indexed launchRouter,
        address internalPair,
        address internalRouter,
        address internalFactory,
        address baseToken,
        uint256 baseIn,
        bytes32 salt
    );

    event TokenLaunchedToExternal(
        address indexed launchRouter,
        address indexed meme,
        address indexed externalPair,
        address externalRouter,
        address externalFactory,
        uint256 launchBlockNumber
    );

    // ─── Initializer ───
    function initialize(
        address _admin,
        address _routerImplementation,
        address _platformOwner,
        address _launchModule,
        address _memeTokenImplementation
    ) external initializer {
        if (_routerImplementation == address(0)) revert ImplZero();
        if (_platformOwner == address(0)) revert OwnerZero();
        // _launchModule param kept for interface compatibility but no longer stored
        if (_memeTokenImplementation == address(0)) revert MemeImplZero();

        __AccessControl_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        routerImplementation = _routerImplementation;
        platformOwner = _platformOwner;
        memeTokenImplementation = _memeTokenImplementation;
    }

    // ═══════════════════════════════════════════════════════════════════
    //  Public entry-point: CREATE2 版本（单边池 + 虚拟储备）
    // ═══════════════════════════════════════════════════════════════════

    /// @notice CREATE2 版本（单边池 + 虚拟储备）：完整创建流程已内联。
    function createAndBootstrapVanitySingleSided(
        bytes32 salt,
        TokenParams calldata tokenParams,
        AmmParams calldata amm,
        BootstrapParams calldata bootstrap,
        VirtualSaleParams calldata sale,
        ExternalLaunchParams calldata externalLaunch,
        IMemeTokenInit.FeatureConfig calldata features
    ) external payable returns (address meme, address launchRouter, address internalPair) {
        // ── 1. Validate sale params ──
        if (sale.virtualBase == 0) revert VirtualBaseZero();
        if (sale.saleTargetBase == 0) revert SaleTargetZero();
        if (sale.saleRemain == 0) revert SaleRemainZero();

        // ── 2. Deploy per-token LaunchRouter (CREATE minimal proxy clone) ──
        launchRouter = _deployLaunchRouter(routerImplementation, platformOwner, externalLaunch);

        // ── 3. Deploy MemeToken clone (EIP-1167 minimal proxy, CREATE2) ──
        meme = Clones.cloneDeterministic(memeTokenImplementation, salt);

        // ── 4. Initialize token (mints total supply to address(this)) ──
        IMemeTokenInit(meme).initialize(
            tokenParams.name,
            tokenParams.symbol,
            launchRouter,
            launchRouter,
            launchRouter,
            tokenParams.internalBaseToken,
            tokenParams.sellTaxBps,
            tokenParams.allocBps,
            tokenParams.rewardToken,
            tokenParams.tokenDividendRewardToken,
            tokenParams.lpDividendThreshold,
            tokenParams.poolBurnBps,
            tokenParams.poolBurnInterval,
            msg.sender,
            features
        );

        // ── 5. Seed pair + configure sale + init router ──
        internalPair = _seedSingleSided(meme, tokenParams, amm, sale, launchRouter);

        // ── 6. Optional base funding for auto-buy ──
        _fundLaunchRouterBase(
            tokenParams.internalBaseToken,
            amm.internalRouter,
            bootstrap.amountBaseDesired,
            launchRouter
        );

        // ── 7. Configure internal trading after token init ──
        MemeLaunchRouter(launchRouter).factoryConfigureInternalTradingAfterTokenInit();

        // ── 8. Emit event ──
        emit MemeCreatedAndBootstrapped(
            msg.sender,
            meme,
            launchRouter,
            internalPair,
            amm.internalRouter,
            amm.internalFactory,
            tokenParams.internalBaseToken,
            bootstrap.amountBaseDesired,
            salt
        );
    }

    // ═══════════════════════════════════════════════════════════════════
    //  Admin setters
    // ═══════════════════════════════════════════════════════════════════

    function setMemeTokenImplementation(address _impl) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_impl == address(0)) revert MemeImplZero();
        memeTokenImplementation = _impl;
    }

    function setRouterImplementation(address _impl) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_impl == address(0)) revert ImplZero();
        routerImplementation = _impl;
    }

    // ═══════════════════════════════════════════════════════════════════
    //  External launch
    // ═══════════════════════════════════════════════════════════════════

    /// @notice 工厂发起的发射：从内盘迁移到外盘，并记录统一日志。
    function launchTokenToExternal(
        address launchRouter,
        uint256 amountTokenMin,
        uint256 amountBaseMin,
        uint256 deadline
    ) external returns (address memeToken, address externalPair) {
        require(launchRouter != address(0), "LAUNCH_ROUTER_ZERO");

        address externalRouter = IMemeLaunchRouterLike(launchRouter).externalLaunchRouter();
        address externalFactory = IMemeLaunchRouterLike(launchRouter).externalLaunchFactory();

        MemeLaunchRouter(launchRouter).launchToExternal(
            amountTokenMin,
            amountBaseMin,
            deadline
        );

        memeToken = IMemeLaunchRouterLike(launchRouter).meme();
        externalPair = IMemeTokenLike(memeToken).launchPair();

        emit TokenLaunchedToExternal(launchRouter, memeToken, externalPair, externalRouter, externalFactory, block.number);
    }

    // ═══════════════════════════════════════════════════════════════════
    //  Internal helpers (merged from LaunchModule / LaunchSeedLib / LaunchFundLib)
    // ═══════════════════════════════════════════════════════════════════

    /// @dev Deploy a MemeLaunchRouter minimal-proxy clone (CREATE, not CREATE2).
    function _deployLaunchRouter(
        address implRouter,
        address owner,
        ExternalLaunchParams calldata externalLaunch
    ) internal returns (address launchRouter) {
        launchRouter = _clone(implRouter);
        MemeLaunchRouter(launchRouter).initialize(address(this), launchRouter);
        MemeLaunchRouter(launchRouter).configureExternalLaunchTargets(
            externalLaunch.externalRouter,
            externalLaunch.externalFactory,
            externalLaunch.enableAutoLaunch
        );
    }

    /// @dev EIP-1167 minimal-proxy clone (CREATE).
    function _clone(address implementation) internal returns (address instance) {
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            mstore(
                ptr,
                0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000
            )
            mstore(add(ptr, 0x14), shl(0x60, implementation))
            mstore(
                add(ptr, 0x28),
                0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
            )
            instance := create(0, ptr, 0x37)
        }
        if (instance == address(0)) revert CloneFail();
    }

    /// @dev Seed single-sided liquidity: 70 % MEME → pair, 30 % → launchRouter.
    ///      (Merged from LaunchSeedLib.seedSingleSided)
    function _seedSingleSided(
        address meme,
        TokenParams calldata tokenParams,
        AmmParams calldata amm,
        VirtualSaleParams calldata sale,
        address launchRouter
    ) internal returns (address internalPair) {
        IMemeTokenSeedLike token = IMemeTokenSeedLike(meme);

        // 70 % to pair, 30 % retained for launch router
        uint256 total = token.totalSupply();
        uint256 tokenIn = (total * 7000) / 10_000;
        if (!token.approve(amm.internalFactory, tokenIn)) revert MemeApproveFactoryFailed();

        // Sort tokens for pair creation
        (address token0, address token1) = meme < tokenParams.internalBaseToken
            ? (meme, tokenParams.internalBaseToken)
            : (tokenParams.internalBaseToken, meme);

        uint112 v0 = token0 == tokenParams.internalBaseToken ? sale.virtualBase : 0;
        uint112 v1 = token1 == tokenParams.internalBaseToken ? sale.virtualBase : 0;
        uint256 amount0 = token0 == meme ? tokenIn : 0;
        uint256 amount1 = token1 == meme ? tokenIn : 0;

        internalPair = IInternalFactoryVirtualSeedLib(amm.internalFactory).createInternalVirtualPair(
            token0,
            token1,
            v0,
            v1,
            amm.internalRouter,
            amount0,
            amount1,
            launchRouter
        );

        // Configure sellout target
        IInternalFactoryVirtualSeedLib(amm.internalFactory).configurePairSaleBySelloutTarget(
            internalPair,
            meme,
            tokenParams.internalBaseToken,
            sale.saleTargetBase,
            sale.saleRemain
        );

        // Move remaining MEME to launchRouter custody
        uint256 remaining = token.balanceOf(address(this));
        if (remaining == 0) revert NoMemeRemain();
        if (!token.transfer(launchRouter, remaining)) revert TransferMemeToRouterFailed();

        // Init launchRouter state
        try MemeLaunchRouter(launchRouter).factoryInitManual(
            meme,
            amm.internalRouter,
            amm.internalFactory,
            tokenParams.internalBaseToken
        ) {
        } catch {
            revert SeedStep_InitRouterFailed();
        }
    }

    /// @dev Fund launch router with base token for optional auto-buy.
    ///      (Merged from LaunchFundLib.fundLaunchRouterBase)
    function _fundLaunchRouterBase(
        address baseToken,
        address internalRouter,
        uint256 amountBaseDesired,
        address launchRouter
    ) internal {
        // Support native BNB: if amountBaseDesired == 0 but msg.value > 0, use msg.value
        if (amountBaseDesired == 0) {
            if (msg.value > 0) {
                amountBaseDesired = msg.value;
            } else {
                return;
            }
        }

        address wbnb = address(0);
        (bool ok, bytes memory ret) = internalRouter.staticcall(abi.encodeWithSignature("WETH()"));
        if (ok && ret.length == 32) {
            wbnb = abi.decode(ret, (address));
        }

        if (baseToken == wbnb && msg.value > 0) {
            if (msg.value < amountBaseDesired) revert InsufficientMsgValue();
            IWBNBLikeFundLib(wbnb).deposit{ value: amountBaseDesired }();
            if (!IWBNBLikeFundLib(wbnb).transfer(launchRouter, amountBaseDesired)) revert WbnbTransferFailed();
            if (msg.value > amountBaseDesired) {
                (bool refundOk, ) = msg.sender.call{ value: msg.value - amountBaseDesired }("");
                if (!refundOk) revert();
            }
            return;
        }

        (bool success, bytes memory result) = baseToken.call(
            abi.encodeWithSignature(
                "transferFrom(address,address,uint256)",
                msg.sender,
                launchRouter,
                amountBaseDesired
            )
        );
        if (!(success && (result.length == 0 || abi.decode(result, (bool))))) revert BaseTransferFromFailed();
    }
}
