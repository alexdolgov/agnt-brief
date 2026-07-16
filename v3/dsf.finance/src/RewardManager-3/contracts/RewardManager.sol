// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title  IUniversalRouter
 * @notice Minimal interface for DSF UniversalRouter used by RewardManager
 */
interface IUniversalRouter {
    /**
     * @notice Returns output amounts for the given path
     * @dev    In your router, the last value is NET (fees already applied)
     */
    function getAmountsOut(uint amountIn, address[] calldata path)
            external
            view
            returns (uint[] memory amountsNet);
        
    /**
     * @notice Swaps exact input tokens for output tokens along a simple path (V2-style)
     */
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    /**
     * @notice Executes a single route encoded in payload
     */
    function swapRoute(
        bytes calldata payload,
        address to,
        uint256 minAmountOut,
        bool useOracleGuard,
        uint16 maxDevBps
    ) external returns (uint256 netOut);

    /**
     * @notice Executes a split route: payloadA/payloadB with percentA (1..99)
     */
    function swapSplit(
        bytes calldata payloadA,
        bytes calldata payloadB,
        uint16 percentA,          // 1..99
        uint256 minAmountOut,
        address to,
        bool useOracleGuard,
        uint16 maxDevBps
    ) external returns (uint256 netOut);

    /**
     * @notice Returns best routes and a suggested split for a given pair and amount
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        bytes memory best1HopRouteTop1, uint256 amountOut1HopTop1,
        bytes memory best2HopRouteTop1, uint256 amountOut2HopTop1,
        bytes memory best1HopRouteTop2, uint256 amountOut1HopTop2,
        bytes memory best2HopRouteTop2, uint256 amountOut2HopTop2,
        uint256 splitAmountOut, uint16 splitPercentA
    );
}

/**
 * @title  IDSF
 * @notice Minimal interface to DSF core contract used by RewardManager
 */
interface IDSF {
    /**
     * @notice Pool snapshot stored in DSF.
     * @dev    Strategy is address to keep RM simple.
     */
    struct PoolInfo {
        address strategy; // IStrategy, but address is enough for RM
        uint256 startTime;
        uint256 lpShares;
    }

    /**
     * @notice Triggers compounding logic on all strategies (claim/unwrap/push rewards)
     */
    function autoCompoundAll() external;

    /**
     * @notice Computes management fee for a given USDT amount (in USDT native decimals)
     */
    function calcManagementFee(uint256 amount) external view returns (uint256);

    function poolCount() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (PoolInfo memory);

    function defaultDepositPid() external view returns (uint256);
    function defaultWithdrawPid() external view returns (uint256);

    /**
     * @notice Total holdings of DSF across all strategies (scaled to 1e18 in DSF implementation)
     */
    function totalHoldings() external view returns (uint256);
    
    /**
     * @notice Total supply of DSF LP token (same scale as DSF accounting; typically 1e18)
     */
    function totalSupply() external view returns (uint256);
}

/**
 * @title  IStrategy
 * @notice Minimal strategy interface for RewardManager.
 */
interface IStrategy {
    /**
     * @notice Strategy pulls USDT from RewardManager (RewardManager must approve first)
     * @param  amountUSDT Amount in USDT native decimals (1e6)
     */
    function managerCompound(uint256 amountUSDT) external;

    /**
     * @notice Strategy total holdings in USDT terms (1e18 scale in your codebase)
     */
    function totalHoldings() external view returns (uint256);
}

/**
 * @notice Snapshot for analytics: DSF pool + strategy pricing.
 */
struct PoolSnapshot {
    uint256 pid;
    address strategy;
    uint256 lpShares;          // DSF pool shares allocated
    uint256 holdingsUSDT1e18;  // strategy holdings (USDT terms, 1e18)
    uint256 sharePrice1e18;    // holdingsUSDT1e18 * 1e18 / lpShares
}

/**
 * @title  RewardManager
 * @author Andrei Averin — CTO dsf.finance
 * @notice Aggregates rewards from DSF strategies, swaps them to USDT via UniversalRouter,
 *         pays DSF management fee to feeDistributor, and re-deploys USDT into selected pools
 *         using strategy.managerCompound()
 *
 * @dev    Important assumptions:
 *         - DSF.autoCompoundAll() makes strategies push reward tokens to this contract (RewardManager)
 *         - Router.getAmountsOut() returns NET out amount (fees included) for the final token in path
 *         - USDT uses 6 decimals; internal "pricing" uses 1e18 scale where needed
 */
contract RewardManager is Ownable, ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role for automated operations (bots/keepers)
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /// @notice Basis points denominator (100% = 10_000)
    uint256 public constant BPS_DENOMINATOR = 10_000;

    /* ───────────────────────────── Roles ───────────────────────────── */

    /// @notice Restricts to DEFAULT_ADMIN_ROLE
    modifier onlyAdmin() {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "RM: not admin");
        _;
    }

    /// @notice Restricts to OPERATOR_ROLE or DEFAULT_ADMIN_ROLE
    modifier onlyOperator() {
        require(
            hasRole(OPERATOR_ROLE, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "RM: not operator"
        );
        _;
    }

    /* ───────────────────────────── Storage ───────────────────────────── */

    /// @notice UniversalRouter used for swaps
    IUniversalRouter public router;

    /// @notice DSF core contract
    IDSF public dsf;

    /// @notice Recipient of DSF management fee (currently Gnosis Safe)
    address public feeDistributor;

    /// @dev    token => swap path to USDT (token ... USDT)
    mapping(address => address[]) private _pathToUsdt;

    /**
     * @notice  Default slippage for auto-swaps (bps).
     * @dev     minOut = quoteNet * (10_000 - bps) / 10_000
     */
    uint16 public defaultSlippageBps = 50; // 0.50%

    /// @notice Whitelist of tokens eligible for auto-swap
    address[] public autoSwapTokens;

    /// @notice Quick membership check for autoSwapTokens
    mapping(address => bool) public isAutoSwapToken;

    /// @notice Pool blacklist (pid => disabled)
    mapping(uint256 => bool) public isPoolBlacklisted;

    /// @notice Scale used for 1e18 math
    uint256 public constant PRICE_SCALE = 1e18;

    /// @dev USDT (1e6) -> 1e18 multiplier
    uint256 private constant USDT_DECIMALS_SCALE = 1e12;

    /// @dev Mainnet token addresses used for default routing configuration
    address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address private constant CRV  = 0xD533a949740bb3306d119CC777fa900bA034cd52;
    address private constant CVX  = 0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B;
    address private constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;

    /* ───────────────────────────── Events ───────────────────────────── */

    event RouterUpdated(address indexed oldRouter, address indexed newRouter);
    event DSFUpdated(address indexed oldDsf, address indexed newDsf);
    event FeeDistributorUpdated(address indexed oldFeeDistributor, address indexed newFeeDistributor);
    event DefaultSlippageUpdated(uint16 oldBps, uint16 newBps);

    event PathToUsdtUpdated(address indexed token, address[] path);
    event AutoSwapTokenRemoved(address indexed token);
    event PoolBlacklistUpdated(uint256 indexed pid, bool blacklisted);

    event AutoSwapExecuted(address indexed tokenIn, uint256 amountIn, uint256 minOut, uint256 usdtOut);

    event ManualRouteSwapExecuted(bytes32 indexed payloadHash, uint256 netOut);
    event ManualSplitSwapExecuted(bytes32 indexed payloadHashA, bytes32 indexed payloadHashB, uint16 percentA, uint256 netOut);

    event DsfAutoCompoundAllCalled(address indexed caller);
    event ManagementFeePaid(address indexed feeDistributor, uint256 feeAmountUSDT);
    event ManagerCompoundExecuted(uint256 indexed pid, address indexed strategy, uint256 usdtIn);

    event ManagerCompoundAllToDepositPool(address indexed caller, uint256 usdtIn, uint256 fee, uint256 net, uint256 pid);
    event ManagerCompoundAllToWithdrawPool(address indexed caller, uint256 usdtIn, uint256 fee, uint256 net, uint256 pid);

    event RebalancePlanned(uint256 targetPrice1e18, uint256 netUSDT, uint256 sumNeed, uint256 leftover);
    event RebalanceAllocated(uint256 indexed pid, uint256 amountUSDT);

    /**
     * @param router_ UniversalRouter address
     * @param dsf_ DSF core address
     * @param feeDistributor_ Fee recipient address
     */
    constructor(address router_, address dsf_, address feeDistributor_) Ownable(msg.sender) {
        require(router_ != address(0) && router_.code.length > 0, "RM: bad router");
        require(dsf_   != address(0) && dsf_.code.length > 0, "RM: bad DSF");
        require(feeDistributor_ != address(0), "RM: feeDistributor=0");

        dsf = IDSF(dsf_);
        router = IUniversalRouter(router_);
        feeDistributor = feeDistributor_;
        
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, msg.sender);

        _setPathToUsdtInternal(CVX, _make3(CVX, WETH, USDT));
        _setPathToUsdtInternal(CRV, _make3(CRV, WETH, USDT));
    }

    /* ─────────────────────────────────── Roles admin ──────────────────────────────────── */

    /**
     * @notice Grants OPERATOR_ROLE to an address
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     * @param op Address to grant operator permissions
     */
    function addOperator(address op) external onlyAdmin {
        require(op != address(0), "RM: op=0");
        _grantRole(OPERATOR_ROLE, op);
    }

    /**
     * @notice Revokes OPERATOR_ROLE from an address
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     * @param op Address to revoke operator permissions from
     */
    function removeOperator(address op) external onlyAdmin {
        _revokeRole(OPERATOR_ROLE, op);
    }

    /**
     * @notice Returns whether an address has OPERATOR_ROLE.
     * @param op Address to check
     * @return True if address has operator role
     */
    function isOperator(address op) external view returns (bool) {
        return hasRole(OPERATOR_ROLE, op);
    }

    /* ───────────────────────────────────── Admin config ────────────────────────────────── */

    /**
     * @notice Updates the UniversalRouter address
     * @dev    newRouter must be a deployed contract
     * @param  newRouter Address of the new router
     */
    function setRouter(address newRouter) external onlyAdmin {
        require(newRouter != address(0) && newRouter.code.length > 0, "RM: bad router");
        address old = address(router);
        router = IUniversalRouter(newRouter);
        emit RouterUpdated(old, newRouter);
    }

    /**
     * @notice Updates the DSF core contract address
     * @dev    newDsf must be a deployed contract
     * @param  newDsf Address of the new DSF contract
     */
    function setDSF(address newDsf) external onlyAdmin {
        require(newDsf != address(0) && newDsf.code.length > 0, "RM: bad DSF");
        address old = address(dsf);
        dsf = IDSF(newDsf);
        emit DSFUpdated(old, newDsf);
    }

    /**
     * @notice Updates the management fee recipient
     * @dev newFD must be a deployed contract
     * @param newFD Address of the new fee distributor
     */
    function setFeeDistributor(address newFD) external onlyAdmin {
        require(newFD != address(0) && newFD.code.length > 0, "RM: bad feeDistributor");
        address old = feeDistributor;
        feeDistributor = newFD;
        emit FeeDistributorUpdated(old, newFD);
    }

    /**
     * @notice Updates default slippage (in basis points) used for auto-swaps
     * @dev bps must be <= 10_000
     * @param bps Slippage in basis points (100% = 10_000)
     */
    function setDefaultSlippageBps(uint16 bps) external onlyAdmin {
        require(bps <= 10_000, "RM: bad bps");
        uint16 old = defaultSlippageBps;
        defaultSlippageBps = bps;
        emit DefaultSlippageUpdated(old, bps);
    }

    /**
     * @notice Sets swap path from `token` to USDT and enables it for auto-swap
     * @dev    Requirements:
     *         - token must be a deployed contract
     *         - path length >= 2
     *         - path[0] == token
     *         - path[last] == USDT
     *
     *         Replaces any previously stored path.
     *         Adds token to autoSwapTokens if not already present
     * @param  token Reward token address
     * @param  path Swap path (token ... USDT)
     */
    function setPathToUsdt(address token, address[] calldata path) external onlyAdmin {
        require(token != address(0) && token.code.length > 0, "RM: bad token");
        require(path.length >= 2, "RM: path short");
        require(path[0] == token, "RM: path[0]!=token");
        require(path[path.length - 1] == USDT, "RM: last!=USDT");

        if (!isAutoSwapToken[token]) {
            autoSwapTokens.push(token);
            isAutoSwapToken[token] = true;
        }

        // store
        delete _pathToUsdt[token];
        for (uint256 i = 0; i < path.length; i++) {
            _pathToUsdt[token].push(path[i]);
        }

        emit PathToUsdtUpdated(token, path);
    }
    
    /**
     * @notice Removes token from auto-swap whitelist and clears its stored path
     * @dev    Uses swap-pop to remove token from autoSwapTokens array
     * @param  token Token address to remove
     */
    function removeAutoSwapToken(address token) external onlyAdmin {
        if (!isAutoSwapToken[token]) return;

        // delete path
        delete _pathToUsdt[token];

        // remove from array (swap-pop)
        uint256 n = autoSwapTokens.length;
        for (uint256 i = 0; i < n; i++) {
            if (autoSwapTokens[i] == token) {
                if (i != n - 1) autoSwapTokens[i] = autoSwapTokens[n - 1];
                autoSwapTokens.pop();
                break;
            }
        }

        isAutoSwapToken[token] = false;
        emit AutoSwapTokenRemoved(token);
    }

    /**
     * @notice Enables or disables a DSF pool for RewardManager allocations
     * @dev    Reverts if `pid` is out of DSF pool range
     * @param  pid DSF pool id
     * @param  v   True to blacklist, false to unblacklist
     */
    function setPoolBlacklisted(uint256 pid, bool v) external onlyAdmin {
        require(pid < dsf.poolCount(), "RM: pid out of range");
        isPoolBlacklisted[pid] = v;
        emit PoolBlacklistUpdated(pid, v);
    }

    /**
     * @notice Returns stored swap path from token to USDT
     * @param  token Input token address
     * @return Swap path (token ... USDT)
     */
    function getPathToUsdt(address token) external view returns (address[] memory) {
        return _pathToUsdt[token];
    }

    /**
     * @notice Returns list of tokens enabled for auto-swap
     * @return Array of whitelisted reward tokens
     */
    function getAutoSwapTokens() external view returns (address[] memory) {
        return autoSwapTokens;
    }

    /* ───────────────────────────── Operator: DSF compounding ───────────────────────────── */

    /**
     * @notice Triggers DSF.autoCompoundAll()
     * @dev Intended to claim/push rewards from all strategies to RewardManager
     *      Only callable by OPERATOR_ROLE
     */
    function DSFAutoCompoundAll() external onlyOperator nonReentrant {
        dsf.autoCompoundAll();
        emit DsfAutoCompoundAllCalled(msg.sender);
    }

    /* ───────────────────────────── AUTO swap (balance -> USDT) ─────────────────────────── */

    /**
     * @notice Swaps all whitelisted reward tokens into USDT
     * @dev    Iterates over `autoSwapTokens` and calls `_swapSingle()` for each
     *         Only callable by OPERATOR_ROLE
     * @param  deadline Swap deadline forwarded to router
     */
    function swapAllAuto(uint256 deadline) external onlyOperator nonReentrant {
        for (uint256 i = 0; i < autoSwapTokens.length; i++) {
            _swapSingle(autoSwapTokens[i], deadline);
        }
    }

    /* ─────────────────────────────── MANUAL swap (payload) ─────────────────────────────── */

    /**
     * @notice Executes a manual swap via router.swapRoute()
     * @dev    Requirements:
     *         - payload must encode (module,index,quotedOut,tokenIn,tokenOut,amountIn,route)
     *         - tokenIn must be a valid contract
     *         - amountIn > 0
     *         Reads tokenIn and amountIn directly from payload,
     *         approves router for amountIn, and forwards execution
     * @param  payload        ABI-encoded route payload
     * @param  minAmountOut   Minimum output required
     * @param  useOracleGuard Whether oracle guard is enabled
     * @param  maxDevBps      Max allowed deviation (bps) for oracle guard
     *
     * @return netOut         Output amount returned by router
     */
    function swapManualRoute(
        bytes calldata payload,
        uint256 minAmountOut,
        bool useOracleGuard,
        uint16 maxDevBps
    )
        external
        onlyAdmin
        nonReentrant
        returns (uint256 netOut)
    {
        // We must approve tokenIn for router BEFORE calling swapRoute.
        // tokenIn is inside payload; we read it from the ABI header slots like your router does.
        // Layout in payload = abi.encode(module,index,quotedOut,tokenIn,tokenOut,amountIn,bytes[]route)
        address tokenIn = _loadAddressFromPayload(payload, 3);
        uint256 amountIn = _loadUint256FromPayload(payload, 5);

        require(tokenIn != address(0) && tokenIn.code.length > 0, "RM: bad tokenIn");
        require(amountIn > 0, "RM: zero amountIn");

        _smartApprove(tokenIn, address(router), amountIn);

        netOut = router.swapRoute(
            payload,
            address(this),     // keep result inside RM
            minAmountOut,
            useOracleGuard,
            maxDevBps
        );

        emit ManualRouteSwapExecuted(keccak256(payload), netOut);
    }

    /**
     * @notice Executes a manual split swap via router.swapSplit()
     * @dev    Requirements:
     *         - percentA must be in range 1..99
     *         - tokenIn in both payloads must match
     *         - amountIn encoded in both payloads must match and be > 0
     *         Approves router once for totalIn and forwards parameters
     * @param  payloadA       First encoded route
     * @param  payloadB       Second encoded route
     * @param  percentA       Percentage allocated to payloadA (1..99)
     * @param  minAmountOut   Minimum total output expected
     * @param  useOracleGuard Whether oracle guard is enabled
     * @param  maxDevBps      Max deviation (bps) for oracle guard
     * @return netOut         Total output received
     */
    function swapManualSplit(
        bytes calldata payloadA,
        bytes calldata payloadB,
        uint16 percentA,        // 1..99
        uint256 minAmountOut,
        bool useOracleGuard,
        uint16 maxDevBps
    )
        external
        onlyAdmin
        nonReentrant
        returns (uint256 netOut)
    {
        require(percentA >= 1 && percentA <= 99, "RM: bad percentA");

        address tokenInA = _loadAddressFromPayload(payloadA, 3);
        uint256 totalInA = _loadUint256FromPayload(payloadA, 5);

        address tokenInB = _loadAddressFromPayload(payloadB, 3);
        uint256 totalInB = _loadUint256FromPayload(payloadB, 5);

        require(tokenInA != address(0) && tokenInA.code.length > 0, "RM: bad tokenInA");
        require(tokenInB != address(0) && tokenInB.code.length > 0, "RM: bad tokenInB");
        require(tokenInA == tokenInB, "RM: tokenIn mismatch");

        require(totalInA > 0 && totalInB > 0, "RM: zero in");
        require(totalInA == totalInB, "RM: payload amountIn mismatch");

        uint256 totalIn = totalInA;

        // Router will transferFrom(RM) exactly once for totalIn
        _smartApprove(tokenInA, address(router), totalIn);

        netOut = router.swapSplit(
            payloadA,
            payloadB,
            percentA,
            minAmountOut,
            address(this),
            useOracleGuard,
            maxDevBps
        );

        emit ManualSplitSwapExecuted(keccak256(payloadA), keccak256(payloadB), percentA, netOut);
    }

    /* ───────────────────────────── Manager compound ───────────────────────────── */

    /**
     * @notice Sends USDT to DSF default deposit pool strategy via managerCompound()
     * @param  amountUSDT 0 = use entire USDT balance of RewardManager
     */
    function managerCompoundToDepositPool(uint256 amountUSDT) external onlyOperator nonReentrant {
        uint256 pid = dsf.defaultDepositPid();
        _managerCompoundSinglePid(pid, amountUSDT);
    }

    /**
     * @notice Sends USDT to DSF default withdraw pool strategy via managerCompound()
     * @param  amountUSDT 0 = use entire USDT balance of RewardManager
     */
    function managerCompoundToWithdrawPool(uint256 amountUSDT) external onlyOperator nonReentrant {
        uint256 pid = dsf.defaultWithdrawPid();
        _managerCompoundSinglePid(pid, amountUSDT);
    }

    /**
     * @notice Manual allocation: list of pids + bps weights (sum must be 10_000)
     * @param  pids DSF pool ids
     * @param  bps Weights in bps (sum = 10_000)
     * @param  amountUSDT 0 = use entire USDT balance of RewardManager
     */
    function managerCompoundManual(
        uint256[] calldata pids,
        uint16[] calldata bps,
        uint256 amountUSDT
    ) external onlyOperator nonReentrant {
        require(pids.length > 0, "RM: empty pids");
        require(pids.length == bps.length, "RM: len mismatch");

        uint256 sum;
        for (uint256 i = 0; i < bps.length; i++) sum += bps[i];
        require(sum == BPS_DENOMINATOR, "RM: bps sum != 10000");

        uint256 bal = IERC20(USDT).balanceOf(address(this));
        uint256 amount = amountUSDT == 0 ? bal : amountUSDT;
        require(amount > 0, "RM: zero amount");
        require(amount <= bal, "RM: insufficient USDT");

        uint256 fee = dsf.calcManagementFee(amount);
        if (fee > 0) {
            IERC20(USDT).safeTransfer(feeDistributor, fee);
            emit ManagementFeePaid(feeDistributor, fee);
        }

        uint256 net = amount - fee;
        require(net > 0, "RM: net=0");

        uint256 left = net;

        for (uint256 i = 0; i < pids.length; i++) {
            require(pids[i] < dsf.poolCount(), "RM: pid out of range");
            uint256 part = (i + 1 == pids.length) ? left : (net * bps[i]) / BPS_DENOMINATOR;
            if (part == 0) continue;

            left -= part;
            _callStrategyManagerCompound(pids[i], part);
        }
    }

    /**
     * @notice Full pipeline: DSF.autoCompoundAll() -> auto-swap whitelist tokens -> pay fee -> deposit net into default deposit pid
     * @param  deadline Router deadline
     * @param  amountUSDT 0 = use entire USDT balance after swaps
     */
    function managerCompoundAllToDepositPool(uint256 deadline, uint256 amountUSDT)
        external
        onlyOperator
        nonReentrant
    {
        dsf.autoCompoundAll();
        emit DsfAutoCompoundAllCalled(msg.sender);

        // swap whitelist reward tokens -> USDT
        for (uint256 i = 0; i < autoSwapTokens.length; i++) {
            _swapSingle(autoSwapTokens[i], deadline);
        }

        uint256 pid = dsf.defaultDepositPid();

        uint256 bal = IERC20(USDT).balanceOf(address(this));
        uint256 amount = amountUSDT == 0 ? bal : amountUSDT;
        require(amount > 0, "RM: zero amount");
        require(amount <= bal, "RM: insufficient USDT");

        uint256 fee = dsf.calcManagementFee(amount);
        if (fee > 0) {
            IERC20(USDT).safeTransfer(feeDistributor, fee);
            emit ManagementFeePaid(feeDistributor, fee);
        }

        uint256 net = amount - fee;
        require(net > 0, "RM: net=0");

        _callStrategyManagerCompound(pid, net);

        emit ManagerCompoundAllToDepositPool(msg.sender, amount, fee, net, pid);
    }

    /**
     * @notice Full pipeline: DSF.autoCompoundAll() -> auto-swap whitelist tokens -> pay fee -> deposit net into default withdraw pid
     * @param  deadline Router deadline
     * @param  amountUSDT 0 = use entire USDT balance after swaps
     */
    function managerCompoundAllToWithdrawPool(uint256 deadline, uint256 amountUSDT)
        external
        onlyOperator
        nonReentrant
    {
        dsf.autoCompoundAll();
        emit DsfAutoCompoundAllCalled(msg.sender);

        for (uint256 i = 0; i < autoSwapTokens.length; i++) {
            _swapSingle(autoSwapTokens[i], deadline);
        }

        uint256 pid = dsf.defaultWithdrawPid();

        uint256 bal = IERC20(USDT).balanceOf(address(this));
        uint256 amount = amountUSDT == 0 ? bal : amountUSDT;
        require(amount > 0, "RM: zero amount");
        require(amount <= bal, "RM: insufficient USDT");

        uint256 fee = dsf.calcManagementFee(amount);
        if (fee > 0) {
            IERC20(USDT).safeTransfer(feeDistributor, fee);
            emit ManagementFeePaid(feeDistributor, fee);
        }

        uint256 net = amount - fee;
        require(net > 0, "RM: net=0");

        _callStrategyManagerCompound(pid, net);

        emit ManagerCompoundAllToWithdrawPool(msg.sender, amount, fee, net, pid);
    }

    /**
     * @notice Rebalance allocations to move pool share prices toward DSF global price (totalHoldings/totalSupply)
     * @dev    Logic:
     *         1) autoCompoundAll + auto-swap rewards -> USDT
     *         2) pay management fee
     *         3) compute targetPrice = dsf.totalHoldings / dsf.totalSupply
     *         4) allocate net USDT to pools below target proportionally to their deficits
     *         5) leftover (rounding) goes to last allocated pool, otherwise to min-price pool
     * @param  deadline Router deadline
     * @param  amountUSDT 0 = use entire USDT balance after swaps
     * @param  maxPoolsToScan 0 = scan all pools, otherwise scan first N for gas control
     */
    function managerCompoundRebalanceToTarget(
        uint256 deadline,
        uint256 amountUSDT,      // 0 = entire USDT balance of RM after swap
        uint256 maxPoolsToScan   // gas protection (0 = scan all)
    ) external onlyOperator nonReentrant {
        // 1) claim / push rewards from strategies -> RM
        dsf.autoCompoundAll();
        emit DsfAutoCompoundAllCalled(msg.sender);

        // 2) swap whitelist reward tokens -> USDT
        for (uint256 i = 0; i < autoSwapTokens.length; i++) {
            _swapSingle(autoSwapTokens[i], deadline);
        }

        // 3) take USDT and pay management fee
        uint256 bal1e6 = IERC20(USDT).balanceOf(address(this));
        uint256 amount1e6 = amountUSDT == 0 ? bal1e6 : amountUSDT;
        require(amount1e6 > 0, "RM: zero amount");
        require(amount1e6 <= bal1e6, "RM: insufficient USDT");

        uint256 fee1e6 = dsf.calcManagementFee(amount1e6);
        if (fee1e6 > 0) {
            IERC20(USDT).safeTransfer(feeDistributor, fee1e6);
            emit ManagementFeePaid(feeDistributor, fee1e6);
        }

        uint256 net1e6 = amount1e6 - fee1e6;
        require(net1e6 > 0, "RM: net=0");

        // 4) compute target price
        uint256 net1e18 = _to1e18(net1e6); // 1e18

        uint256 ts = dsf.totalSupply();
        require(ts > 0, "RM: totalSupply=0");

        // targetPrice1e18 = dsf.totalHoldings(1e18) * 1e18 / totalSupply(1e18) => 1e18
        uint256 targetPrice1e18 = (dsf.totalHoldings() * PRICE_SCALE) / ts;

        // 5) scan pools, collect deficits in 1e18; also find minPrice pool
        uint256 n = dsf.poolCount();
        uint256 limit = maxPoolsToScan == 0 ? n : (maxPoolsToScan < n ? maxPoolsToScan : n);

        // first pass: compute sumNeed, and track min price pool for leftover
        uint256 sumNeed1e18 = 0;
        uint256 minPrice1e18 = type(uint256).max;
        uint256 minPricePid = dsf.defaultDepositPid();

        for (uint256 pid = 0; pid < limit; pid++) {
            if (isPoolBlacklisted[pid]) continue;

            IDSF.PoolInfo memory p = dsf.poolInfo(pid);
            if (p.lpShares == 0) continue;

            address strat = p.strategy;
            if (strat == address(0) || strat.code.length == 0) continue;
            if (strat == address(this)) continue; // ✅ RM-pid

            uint256 h1e18 = _safeStrategyHoldings(strat);
            uint256 price1e18 = (h1e18 * PRICE_SCALE) / p.lpShares; // 1e18

            if (price1e18 < minPrice1e18) {
                minPrice1e18 = price1e18;
                minPricePid = pid;
            }

            // desired holdings to reach target
            uint256 desired1e18 = (targetPrice1e18 * p.lpShares) / PRICE_SCALE;

            if (desired1e18 > h1e18) {
                sumNeed1e18 += (desired1e18 - h1e18);
            }
        }

        require(minPrice1e18 != type(uint256).max, "RM: no active pools");
        emit RebalancePlanned(
            targetPrice1e18,
            net1e6,
            sumNeed1e18,
            (sumNeed1e18 == 0 || net1e18 > sumNeed1e18) ? _to1e6(net1e18 - (sumNeed1e18 == 0 ? 0 : sumNeed1e18)) : 0
        );

        // If no deficits: put all net to minPricePid (or defaultDepositPid)
        if (sumNeed1e18 == 0) {
            _callStrategyManagerCompound(minPricePid, net1e6);
            emit RebalanceAllocated(minPricePid, net1e6);
            return;
        }

        // 6) allocate
        uint256 left1e18 = net1e18;

        // last pid where we actually allocated > 0
        uint256 lastAllocatedPid = type(uint256).max;

        for (uint256 pid = 0; pid < limit; pid++) {
            if (left1e18 == 0) break;
            if (isPoolBlacklisted[pid]) continue;

            IDSF.PoolInfo memory p = dsf.poolInfo(pid);
            if (p.lpShares == 0) continue;

            address strat = p.strategy;
            if (strat == address(0) || strat.code.length == 0) continue;
            if (strat == address(this)) continue; // ✅ RM-pid

            uint256 h1e18 = _safeStrategyHoldings(strat);
            uint256 desired1e18 = (targetPrice1e18 * p.lpShares) / PRICE_SCALE;
            if (desired1e18 <= h1e18) continue;

            uint256 need1e18 = desired1e18 - h1e18;

            uint256 part1e18 = (net1e18 * need1e18) / sumNeed1e18;
            if (part1e18 > left1e18) part1e18 = left1e18;
            if (part1e18 == 0) continue;

            left1e18 -= part1e18;

            uint256 part1e6 = _to1e6(part1e18);

            if (part1e6 > 0) {
                _callStrategyManagerCompound(pid, part1e6);
                emit RebalanceAllocated(pid, part1e6);
                lastAllocatedPid = pid;
            }

            if (left1e18 == 0) break;
        }

        // rounding leftover -> lastAllocatedPid; if none -> minPricePid
        if (left1e18 > 0) {
            uint256 leftover1e6 = _to1e6(left1e18);

            if (leftover1e6 > 0) {
                uint256 targetPid = (lastAllocatedPid != type(uint256).max) ? lastAllocatedPid : minPricePid;
                _callStrategyManagerCompound(targetPid, leftover1e6);
                emit RebalanceAllocated(targetPid, leftover1e6);
            }
        }
    }

    /* ───────────────────────────── Analitics ───────────────────────────── */

    /**
     * @notice Returns best swap routes for a given token pair and amount
     * @dev    Simple proxy to router.getBestRoute()
     *         Provides:
     *         - Top1 1-hop route
     *         - Top1 2-hop route
     *         - Top2 1-hop route
     *         - Top2 2-hop route
     *         - Suggested split configuration
     * @param  tokenIn           Input token address
     * @param  tokenOut          Output token address
     * @param  amountIn          Input amount
     * @return best1HopRouteTop1 Encoded best 1-hop route (rank 1)
     * @return amountOut1HopTop1 Output for best 1-hop route (rank 1)
     * @return best2HopRouteTop1 Encoded best 2-hop route (rank 1)
     * @return amountOut2HopTop1 Output for best 2-hop route (rank 1)
     * @return best1HopRouteTop2 Encoded best 1-hop route (rank 2)
     * @return amountOut1HopTop2 Output for best 1-hop route (rank 2)
     * @return best2HopRouteTop2 Encoded best 2-hop route (rank 2)
     * @return amountOut2HopTop2 Output for best 2-hop route (rank 2)
     * @return splitAmountOut    Estimated output using suggested split
     * @return splitPercentA     Suggested percent allocation to route A (1..99)
     */
    function getBestRoute(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (
        bytes memory best1HopRouteTop1, uint256 amountOut1HopTop1,
        bytes memory best2HopRouteTop1, uint256 amountOut2HopTop1,
        bytes memory best1HopRouteTop2, uint256 amountOut1HopTop2,
        bytes memory best2HopRouteTop2, uint256 amountOut2HopTop2,
        uint256 splitAmountOut, uint16 splitPercentA
    ) {
        return router.getBestRoute(tokenIn, tokenOut, amountIn);
    }

    /**
     * @notice Returns a snapshot of all active DSF pools
     * @dev    Iterates over all DSF pools and includes only:
     *         - Pools not blacklisted
     *         - Pools with a valid deployed strategy
     *         - Pools not pointing to this RewardManager (self-pid guard)
     *         For each included pool:
     *         - Reads strategy.totalHoldings()
     *         - Computes share price:
     *               sharePrice = holdingsUSDT1e18 * 1e18 / lpShares
     *         holdingsUSDT1e18 and sharePrice1e18 use 1e18 precision
     *         Intended for analytics, UI dashboards, and rebalance diagnostics
     * @return out Array of PoolSnapshot structs describing active pools
     */
    function getActivePoolsSnapshot()
        external
        view
        returns (PoolSnapshot[] memory out)
    {
        uint256 n = dsf.poolCount();

        uint256 cnt = 0;
        for (uint256 pid = 0; pid < n; pid++) {
            if (isPoolBlacklisted[pid]) continue;

            IDSF.PoolInfo memory p = dsf.poolInfo(pid);
            address strat = p.strategy;
            if (strat == address(0) || strat.code.length == 0) continue;
            if (strat == address(this)) continue; // RM-pid

            cnt++;
        }

        out = new PoolSnapshot[](cnt);
        uint256 k = 0;

        for (uint256 pid = 0; pid < n; pid++) {
            if (isPoolBlacklisted[pid]) continue;

            IDSF.PoolInfo memory p = dsf.poolInfo(pid);
            address strat = p.strategy;
            
            if (strat == address(0) || strat.code.length == 0) continue;
            if (strat == address(this)) continue; // ✅ RM-pid

            uint256 h = 0;
            if (strat != address(0) && strat.code.length > 0) {
                h = IStrategy(strat).totalHoldings();
            }

            uint256 price = (p.lpShares > 0) ? (h * PRICE_SCALE) / p.lpShares : 0;

            out[k++] = PoolSnapshot({
                pid: pid,
                strategy: strat,
                lpShares: p.lpShares,
                holdingsUSDT1e18: h,
                sharePrice1e18: price
            });
        }
    }

    /**
     * @notice Returns RewardManager net holdings denominated in USDT (1e18 scale)
     * @dev    Calculation:
     *         1. Reads native USDT balance held by RewardManager (1e6 decimals)
     *         2. Iterates over whitelisted autoSwapTokens:
     *            - For each token, reads balance
     *            - Quotes NET USDT value via router.getAmountsOut()
     *            - Adds quoted NET amount to grossUSDT
     *         3. Computes DSF management fee on grossUSDT
     *         4. Returns (grossUSDT - fee) scaled to 1e18 precision
     *         Important:
     *         - Router is assumed to return NET output already
     *         - All intermediate accounting is done in native USDT decimals (1e6)
     *         - Final result is converted to 1e18 precision
     * @return netUSDT_1e18 Net holdings expressed in USDT terms (1e18 precision)
     */
    function totalHoldings() external view returns (uint256 netUSDT_1e18) {
        uint256 grossUSDT = IERC20(USDT).balanceOf(address(this)); // native USDT decimals

        uint256 n = autoSwapTokens.length;
        for (uint256 i = 0; i < n; i++) {
            address tokenIn = autoSwapTokens[i];
            uint256 bal = IERC20(tokenIn).balanceOf(address(this));
            if (bal == 0) continue;

            address[] memory path = _pathToUsdt[tokenIn];
            if (path.length < 2) continue;

            // router.getAmountsOut returns NET already, in USDT native decimals (because last token is USDT)
            uint256 quotedNetUSDT = _quoteNet(bal, path);
            if (quotedNetUSDT == 0) continue;

            grossUSDT += quotedNetUSDT;
        }

        uint256 fee = dsf.calcManagementFee(grossUSDT); // fee in native USDT decimals
        uint256 netUSDT = (grossUSDT > fee) ? (grossUSDT - fee) : 0;

        // scale native USDT -> 1e18
        netUSDT_1e18 = netUSDT * USDT_DECIMALS_SCALE;
    }

    /* ───────────────────────────── Internal helpers ───────────────────────────── */

    /**
     * @notice Swaps the entire balance of `tokenIn` held by RewardManager into USDT using the stored path
     * @dev    Flow:
     *         1. Reads `tokenIn` balance on this contract; returns 0 if balance is zero
     *         2. Loads stored `_pathToUsdt[tokenIn]` and requires length >= 2
     *         3. Quotes NET output via `_quoteNet()` (router.getAmountsOut())
     *         4. Applies `defaultSlippageBps` on top of the NET quote to compute `minOut`
     *         5. Approves router to pull `tokenIn` (reset-then-max via `_smartApprove`)
     *         6. Calls `router.swapExactTokensForTokens(...)`, keeping USDT in this contract
     *         7. Computes actual USDT received as postBalance - preBalance and emits {AutoSwapExecuted}
     * @param  tokenIn  Input token to be swapped into USDT
     * @param  deadline Swap deadline forwarded to the router
     * @return usdtOut  Actual USDT received (native decimals, 1e6)
     */ 
     function _swapSingle(address tokenIn, uint256 deadline)
        internal
        returns (uint256 usdtOut)
    {
        uint256 amountIn = IERC20(tokenIn).balanceOf(address(this));
        if (amountIn == 0) return 0;

        address[] memory path = _pathToUsdt[tokenIn];
        require(path.length >= 2, "RM: path not set");

        // quote net via router.getAmountsOut (it returns NET already in your router)
        uint256 quotedOutNet = _quoteNet(amountIn, path);
        require(quotedOutNet > 0, "RM: bad quote");

        // apply RM slippage on top of router net quote
        uint256 minOut = (quotedOutNet * (10_000 - defaultSlippageBps)) / 10_000;

        uint256 usdtBefore = IERC20(USDT).balanceOf(address(this));

        // approve router to pull tokenIn from RewardManager (msg.sender = RewardManager)
        _smartApprove(tokenIn, address(router), amountIn);

        router.swapExactTokensForTokens(
            amountIn,
            minOut,
            path,
            address(this), // keep USDT in RM
            deadline
        );

        uint256 usdtAfter = IERC20(USDT).balanceOf(address(this));
        usdtOut = (usdtAfter > usdtBefore) ? (usdtAfter - usdtBefore) : 0;

        emit AutoSwapExecuted(tokenIn, amountIn, minOut, usdtOut);
    }

    /**
     * @notice Quotes NET output amount for a swap path via router.getAmountsOut()
     * @dev    Assumes router returns amounts with the last element already NET
     *         (i.e., after internal fee logic)
     *         Reverts if returned array length is less than 2
     * @param  amountIn Input token amount
     * @param  path Swap path (tokenIn ... tokenOut)
     * @return outNet NET output amount for the final token in the path
     */
    function _quoteNet(uint256 amountIn, address[] memory path) internal view returns (uint256 outNet) {
        uint256[] memory amounts = router.getAmountsOut(amountIn, path);
        require(amounts.length >= 2, "RM: bad amounts");
        outNet = amounts[amounts.length - 1];
    }

    /**
     * @notice Ensures sufficient allowance using a reset-then-max approval pattern
     * @dev    Designed for non-standard ERC20 tokens (e.g., USDT) that require
     *         allowance to be set to zero before being increased
     * @param  token   ERC20 token address
     * @param  spender Address that will spend tokens
     * @param  amount  Minimum required allowance
     */
    function _smartApprove(address token, address spender, uint256 amount) internal {
        uint256 cur = IERC20(token).allowance(address(this), spender);
        if (cur < amount) {
            // OZ v5 SafeERC20.forceApprove handles USDT-style approve quirks
            IERC20(token).forceApprove(spender, 0);
            IERC20(token).forceApprove(spender, type(uint256).max);
        }
    }

    /**
     * @notice Reads an address from a specific slot inside an ABI-encoded payload
     * @dev    Reads 32 bytes at:
     *             payload.offset + slot * 32
     *         Then right-shifts by 96 bits to convert to address (20 bytes)
     *         No bounds checks are performed
     *         Caller must guarantee correct payload layout
     * @param  payload ABI-encoded calldata blob
     * @param  slot Zero-based 32-byte slot index
     * @return a Address stored in the specified slot
     */
    function _loadAddressFromPayload(bytes calldata payload, uint256 slot) internal pure returns (address a) {
        assembly ("memory-safe") {
            a := shr(96, calldataload(add(payload.offset, mul(slot, 32))))
        }
    }

    /**
     * @notice Reads a uint256 value from a specific slot inside an ABI-encoded payload.
     * @dev    Assumes the payload is ABI-encoded in fixed 32-byte slots.
     *         The function reads raw calldata at:
     *             payload.offset + slot * 32
     *         No bounds checks are performed — caller must ensure that:
     *         - `slot` points to a valid 32-byte word
     *         - The payload layout matches the expected encoding
     * @param  payload ABI-encoded calldata blob
     * @param  slot Zero-based 32-byte slot index inside the payload
     * @return v The uint256 value stored at the specified slot
     */
    function _loadUint256FromPayload(bytes calldata payload, uint256 slot) internal pure returns (uint256 v) {
        assembly ("memory-safe") {
            v := calldataload(add(payload.offset, mul(slot, 32)))
        }
    }

    /**
     * @notice Converts USDT amount from native decimals (1e6) to 1e18 scale
     * @dev    Multiplies by 1e12 to normalize USDT (6 decimals) to internal 1e18 math
     *         Safe from overflow for realistic USDT supply ranges
     * @param  usdt1e6 Amount in USDT native decimals (1e6)
     * @return Amount scaled to 1e18 precision
     */
    function _to1e18(uint256 usdt1e6) internal pure returns (uint256) {
        return usdt1e6 * USDT_DECIMALS_SCALE;  // *1e12
    }

    /**
     * @notice Converts USDT value from 1e18 scale back to native decimals (1e6)
     * @dev    Divides by 1e12 using integer division (rounds down / floors)
     *         Any remainder below 1e6 precision is truncated
     * @param  usdt1e18 Amount in 1e18 precision
     * @return Amount in USDT native decimals (1e6)
     */
    function _to1e6(uint256 usdt1e18) internal pure returns (uint256) {
        return usdt1e18 / USDT_DECIMALS_SCALE; // floor
    }

    /**
     * @notice Allocates USDT to a single DSF pool after deducting management fee
     * @dev    Flow:
     *         1. Determines effective amount:
     *            - If `amountUSDT == 0`, uses full USDT balance of RewardManager
     *         2. Validates balance sufficiency
     *         3. Calculates DSF management fee via dsf.calcManagementFee()
     *         4. Transfers fee to `feeDistributor`
     *         5. Sends remaining net USDT to the strategy via `_callStrategyManagerCompound`
     *         All amounts are in USDT native decimals (1e6)
     * @param  pid DSF pool id
     * @param  amountUSDT Amount of USDT to allocate (0 = use full balance)
     */
    function _managerCompoundSinglePid(uint256 pid, uint256 amountUSDT) internal {
        uint256 bal = IERC20(USDT).balanceOf(address(this));
        uint256 amount = amountUSDT == 0 ? bal : amountUSDT;
        require(amount > 0, "RM: zero amount");
        require(amount <= bal, "RM: insufficient USDT");

        uint256 fee = dsf.calcManagementFee(amount);
        if (fee > 0) {
            IERC20(USDT).safeTransfer(feeDistributor, fee);
            emit ManagementFeePaid(feeDistributor, fee);
        }

        uint256 net = amount - fee;
        require(net > 0, "RM: net=0");

        _callStrategyManagerCompound(pid, net);
    }

    /**
     * @notice Transfers USDT into a DSF strategy via managerCompound().
     * @dev    Flow:
     *         1. Ensures pool is not blacklisted.
     *         2. Loads strategy address from DSF poolInfo
     *         3. Validates that strategy is a deployed contract
     *         4. Approves USDT to strategy (using safe force-approve pattern)
     *         5. Calls strategy.managerCompound(usdtAmount)
     *         The strategy is expected to pull USDT via transferFrom()
     * @param  pid DSF pool id
     * @param  usdtAmount Amount of USDT (native decimals, 1e6) to allocate
     */
    function _callStrategyManagerCompound(uint256 pid, uint256 usdtAmount) internal {
        require(!isPoolBlacklisted[pid], "RM: pid blacklisted");

        IDSF.PoolInfo memory p = dsf.poolInfo(pid);
        address strat = p.strategy;
        require(strat != address(0) && strat.code.length > 0, "RM: bad strategy");
        
        _smartApprove(USDT, strat, usdtAmount);

        IStrategy(strat).managerCompound(usdtAmount);

        emit ManagerCompoundExecuted(pid, strat, usdtAmount);
    }

    /**
     * @notice Safely fetches strategy total holdings
     * @dev    Performs a defensive external call to `IStrategy(strat).totalHoldings()`.
     *         Returns 0 if:
     *         - `strat` is zero address
     *         - `strat` has no code (not a contract)
     *         - The external call reverts for any reason
     * @param  strat Strategy contract address
     * @return h     Strategy total holdings (USDT-denominated, 1e18 scale),
     *               or 0 if the call fails
     */
    function _safeStrategyHoldings(address strat) internal view returns (uint256 h) {
        if (strat == address(0) || strat.code.length == 0) return 0;
        try IStrategy(strat).totalHoldings() returns (uint256 v) {
            return v;
        } catch {
            return 0;
        }
    }

    /**
     * @notice Builds a 3-hop swap path `[a, b, c]`
     * @dev    Convenience helper for initializing routes like `TOKEN -> WETH -> USDT`
     * @param  a    First token in the path (tokenIn)
     * @param  b    Middle token (intermediate hop)
     * @param  c    Last token in the path (tokenOut)
     * @return path A freshly allocated memory array of length 3
     */
    function _make3(address a, address b, address c) internal pure returns (address[] memory path) {
        path = new address[](3);
        path[0] = a;
        path[1] = b;
        path[2] = c;
    }

    /**
     * @notice Stores `token -> USDT` swap path in storage and ensures token is whitelisted for auto-swap
     * @dev    Internal variant used in constructor / internal setup to avoid repeating array copy logic
     *         This function:
     *         - Adds `token` to `autoSwapTokens` if not present (sets `isAutoSwapToken[token]=true`)
     *         - Replaces any previously stored `_pathToUsdt[token]` with the provided `path`
     *         - Emits {PathToUsdtUpdated}
     * @param  token Reward token address (tokenIn for swaps)
     * @param  path  Swap path starting with `token` and ending with `USDT`
     */
    function _setPathToUsdtInternal(address token, address[] memory path) internal {
        // enable autoswap if not enabled
        if (!isAutoSwapToken[token]) {
            autoSwapTokens.push(token);
            isAutoSwapToken[token] = true;
        }

        delete _pathToUsdt[token];
        for (uint256 i = 0; i < path.length; i++) {
            _pathToUsdt[token].push(path[i]);
        }

        emit PathToUsdtUpdated(token, path);
    }
}
