// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

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
     * @notice Computes management fee for a given USDT amount (in USDT native decimals)
     */
    function calcManagementFee(uint256 amount) external view returns (uint256);

    function poolCount() external view returns (uint256);
    function poolInfo(uint256 pid) external view returns (PoolInfo memory);

    function defaultDepositPid() external view returns (uint256);
    function defaultWithdrawPid() external view returns (uint256);

    function lpPrice() external view returns (uint256); // 1e18

    /**
     * @notice Total holdings of DSF across all strategies (scaled to 1e18 in DSF implementation)
     */
    function totalHoldings() external view returns (uint256);
    
    /**
     * @notice Total supply of DSF LP token (same scale as DSF accounting; typically 1e18)
     */
    function totalSupply() external view returns (uint256);
}

interface IStrategyPoolAdapter {
    /// @notice Underlying pool address (Curve pool, Convex wrapper, UniV2 pair, etc.)
    function pool() external view returns (address);

    /// @notice Pool tokens (ordered)
    function tokens() external view returns (address[] memory);

    /// @notice Token balances in pool, same order as tokens(), in native token decimals
    function balances() external view returns (uint256[] memory);

    /// @notice Optional: total value in USDT terms with 1e18 precision (0 if adapter can't compute)
    function tvlUsdt1e18() external view returns (uint256);

    /// @notice Optional: per-token value in USDT terms with 1e18 precision (empty/zeros if can't compute)
    function tokenValuesUsdt1e18() external view returns (uint256[] memory);

    /// decimals for each token
    function decimals() external view returns (uint8[] memory);
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

    /**
     * @notice Returns gross reward balances (before fees)
     * @return amountIn_cvx CVX tokens amount
     * @return amountIn_crv CRV tokens amount
     * @return cvxEarningsUSDT CVX value in USDT (1e6)
     * @return crvEarningsUSDT CRV value in USDT (1e6)
     */
    function getCVXCRVHoldingsGross()
        external
        view
        returns (uint256 amountIn_cvx, uint256 amountIn_crv, uint256 cvxEarningsUSDT, uint256 crvEarningsUSDT);

    /**
     * @notice Returns net reward balances (after management fee)
     */
    function getCVXCRVHoldings()
        external
        view
        returns (uint256 amountIn_cvx, uint256 amountIn_crv, uint256 cvxEarningsUSDT, uint256 crvEarningsUSDT);
}

interface IRewardManager {
    function getAutoSwapTokens() external view returns (address[] memory);
    function totalHoldings() external view returns (uint256); // 1e18 (как в RM)
}

interface IERC20Metadata is IERC20 {
    function decimals() external view returns (uint8);
}

interface ITokenPriceOracle {
    function getTokenUsdPrice1e18(address token)
        external
        view
        returns (uint256 priceUsd1e18, uint256 updatedAt, bool ok);
}

/**
 * @notice Snapshot for analytics: DSF pool + strategy pricing.
 */
struct PoolSnapshot {
    uint256 pid;
    address strategy;
    uint256 lpShares;        // DSF pool shares allocated
    uint256 totalHolding;    // strategy holdings (USDT terms, 1e18)
    uint256 LPprice;         // totalHolding * 1e18 / lpShares
}

struct OraclePrice {
    uint256 priceUsd1e18;
    uint256 updatedAt;
    bool ok;
}

struct TokenPack {
    address token;
    uint256 balance;         // native
    uint8 decimals;
    OraclePrice oracle;
}

struct RewardManagerSnapshot {
    address rm;
    uint256 totalHoldings1e18;
    uint256 usdtBalance;     // native 1e6
    TokenPack[] tokens;      // rmTokens/rmBalances/rmDecimals + oracle price
}

struct PoolLiquidityBreakdown {
    address adapter;
    address pool;
    address[] tokens;
    uint256[] balances;      // native
    uint8[] decimals;        // per token
    uint256 tvlUsdt1e18;     // optional
    uint256[] tokenValuesUsdt1e18; // optional

    OraclePrice[] oracle;    // price for each tokens[i]
}

struct StrategyRewards {
    uint256 amountCvx;
    uint256 amountCrv;
    uint256 cvxUsdt;         // 1e6
    uint256 crvUsdt;         // 1e6
}

struct StrategySnapshot {
    uint256 pid;
    address strategy;
    string name;

    uint256 lpShares;
    uint256 holdings1e18;
    uint256 lpPrice1e18;     // holdings/lpShares

    PoolLiquidityBreakdown liquidity;

    StrategyRewards gross;
    StrategyRewards net;

    address[] rewardTokens;       // [CVX, CRV]
    OraclePrice[] rewardOracle;   // prices for CVX/CRV
    uint256[] rewardAmountGross;  // [amountIn_cvx, amountIn_crv]
    uint256[] rewardAmountNet;    // [amountIn_cvx, amountIn_crv]
}

struct DsfCoreSnapshot {
    address dsf;
    uint256 totalHoldings1e18;
    uint256 totalSupply1e18;
    uint256 lpPrice1e18;
}

struct SystemSnapshot {
    DsfCoreSnapshot core;
    RewardManagerSnapshot rm;
    StrategySnapshot[] strategies;
}

/**
 * @title  DSFanalyticsMk2
 * @author Andrei Averin — CTO dsf.finance
 *
 * @notice
 * Read-only analytics hub for DSF ecosystem.
 * Aggregates:
 *        - DSF core state (totalHoldings, totalSupply, lpPrice)
 *        - RewardManager state (totalHoldings, USDT + autoswap token balances)
 *        - Per-strategy snapshots (holdings, lpShares, derived lpPrice, pool liquidity breakdown)
 *        - Reward snapshots (CVX/CRV gross & net + oracle prices)
 *
 * @dev
 *       - Designed for frontends, bots and monitoring: everything is `view`
 *       - Uses defensive external calls (try/catch) to avoid breaking on bad strategies/adapters
 *       - Pool blacklist allows skipping broken / non-strategy pools
 *       - Oracle pricing is delegated to external TokenPriceOracle
 *       - TokenPriceOracle may use Chainlink, Curve routes and local fallbacks
 */
contract DSFanalyticsMk2 is Ownable, ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    /// @notice RewardManager reference (source of autoswap tokens list + RM totalHoldings)
    IRewardManager public rewardManager;

    /// @notice External token price oracle used for TOKEN/USD pricing
    ITokenPriceOracle public priceOracle;

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

    /// @notice DSF core contract
    IDSF public dsf;

    mapping(address => address) public strategyAdapter;

    mapping(address => string) public strategyName;

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

    event DSFUpdated(address indexed oldDsf, address indexed newDsf);
    event PoolBlacklistUpdated(uint256 indexed pid, bool blacklisted);
    event RewardManagerUpdated(address indexed oldRM, address indexed newRM);
    event StrategyNameUpdated(address indexed strategy, string name);
    event StrategyAdapterUpdated(address indexed strategy, address indexed adapter);
    event PriceOracleUpdated(address indexed oldOracle, address indexed newOracle);

    /**
     * @notice Deploys DSFanalyticsMk2 and binds DSF core + RewardManager
     * @dev    - `dsf_`, `rm_` and `priceOracle_` must be deployed contracts
     *         - Deployer becomes DEFAULT_ADMIN_ROLE and OPERATOR_ROLE
     * @param  dsf_         DSF core contract address
     * @param  rm_          RewardManager contract address
     * @param  priceOracle_ External TokenPriceOracle contract address
     */
    constructor(
        address dsf_,
        address rm_,
        address priceOracle_
    ) Ownable(msg.sender) {
        require(dsf_   != address(0) && dsf_.code.length > 0, "RM: bad DSF");
        require(rm_   != address(0) && rm_.code.length > 0, "RM: bad RM");
        require(priceOracle_ != address(0) && priceOracle_.code.length > 0, "RM: bad oracle");

        dsf = IDSF(dsf_);
        rewardManager = IRewardManager(rm_);
        priceOracle = ITokenPriceOracle(priceOracle_);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, msg.sender);
    }

    /* ─────────────────────────────────── Roles admin ──────────────────────────────────── */

    /**
     * @notice Grants OPERATOR_ROLE to an address
     * @dev    Only callable by DEFAULT_ADMIN_ROLE
     * @param  op Address to grant operator permissions
     */
    function addOperator(address op) external onlyAdmin {
        require(op != address(0), "RM: op=0");
        _grantRole(OPERATOR_ROLE, op);
    }

    /**
     * @notice Revokes OPERATOR_ROLE from an address
     * @dev    Only callable by DEFAULT_ADMIN_ROLE
     * @param  op Address to revoke operator permissions from
     */
    function removeOperator(address op) external onlyAdmin {
        _revokeRole(OPERATOR_ROLE, op);
    }

    /**
     * @notice Returns whether an address has OPERATOR_ROLE
     * @param  op Address to check
     * @return True if address has operator role
     */
    function isOperator(address op) external view returns (bool) {
        return hasRole(OPERATOR_ROLE, op);
    }

    /* ───────────────────────────────────── Admin config ────────────────────────────────── */

    /**
     * @notice Updates external TokenPriceOracle contract.
     * @dev    `newOracle` must be a deployed contract implementing ITokenPriceOracle.
     * @param  newOracle New TokenPriceOracle address.
     */
    function setPriceOracle(address newOracle) external onlyAdmin {
        require(newOracle != address(0) && newOracle.code.length > 0, "RM: bad oracle");

        address old = address(priceOracle);
        priceOracle = ITokenPriceOracle(newOracle);

        emit PriceOracleUpdated(old, newOracle);
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
     * @notice Updates RewardManager contract address
     * @dev    `rm` must be a deployed contract
     * @param  rm Address of the new RewardManager
     */
    function setRewardManager(address rm) external onlyAdmin {
        require(rm != address(0) && rm.code.length > 0, "RM: bad RM");
        address old = address(rewardManager);
        rewardManager = IRewardManager(rm);
        emit RewardManagerUpdated(old, rm);
    }

    /**
     * @notice Sets human-readable name for a strategy
     * @dev    Strategy must be a deployed contract
     * @param  strategy Strategy address
     * @param  name     Display name
     */
    function setStrategyName(address strategy, string calldata name) external onlyAdmin {
        require(strategy != address(0) && strategy.code.length > 0, "RM: bad strategy");
        strategyName[strategy] = name;
        emit StrategyNameUpdated(strategy, name);
    }

    /**
     * @notice Batch sets strategy names (1:1 arrays)
     * @dev    Reverts on length mismatch or invalid strategy address
     * @param  strategies Strategy addresses
     * @param  names      Display names
     */
    function batchSetStrategyName(address[] calldata strategies, string[] calldata names) external onlyAdmin {
        require(strategies.length == names.length, "RM: len mismatch");
        for (uint256 i; i < strategies.length; i++) {
            address s = strategies[i];
            require(s != address(0) && s.code.length > 0, "RM: bad strategy");
            strategyName[s] = names[i];
            emit StrategyNameUpdated(s, names[i]);
        }
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
     * @notice Batch update blacklist flag for multiple pids (same value)
     * @dev    Reverts if any pid is out of range
     * @param  pids Array of DSF pool ids
     * @param  v    True to blacklist, false to unblacklist
     */
    function batchSetPoolBlacklisted(uint256[] calldata pids, bool v) external onlyAdmin {
        uint256 nPools = dsf.poolCount();
        for (uint256 i = 0; i < pids.length; i++) {
            uint256 pid = pids[i];
            require(pid < nPools, "RM: pid out of range");
            isPoolBlacklisted[pid] = v;
            emit PoolBlacklistUpdated(pid, v);
        }
    }

    /**
     * @notice Binds a strategy to its pool adapter
     * @dev Adapter must be a deployed contract implementing IStrategyPoolAdapter
     * @param strategy Strategy address
     * @param adapter  Adapter address
     */
    function setStrategyAdapter(address strategy, address adapter) external onlyAdmin {
        require(strategy != address(0) && strategy.code.length > 0, "RM: bad strategy");
        require(adapter != address(0) && adapter.code.length > 0, "RM: bad adapter");
        strategyAdapter[strategy] = adapter;
        emit StrategyAdapterUpdated(strategy, adapter);
    }

    /**
     * @notice Batch binds strategies to adapters (1:1 arrays)
     * @dev Reverts on length mismatch or invalid addresses
     * @param strategies Strategy addresses
     * @param adapters   Adapter addresses
     */
    function batchSetStrategyAdapter(address[] calldata strategies, address[] calldata adapters) external onlyAdmin {
        require(strategies.length == adapters.length, "RM: len mismatch");
        for (uint256 i; i < strategies.length; i++) {
            address s = strategies[i];
            address a = adapters[i];
            require(s != address(0) && s.code.length > 0, "RM: bad strategy");
            require(a != address(0) && a.code.length > 0, "RM: bad adapter");
            strategyAdapter[s] = a;
            emit StrategyAdapterUpdated(s, a);
        }
    }

    /**
     * @notice Returns liquidity breakdown for strategy's underlying pool via adapter
     * @dev
     * - If adapter is missing: returns empty arrays
     * - Adapter may optionally implement TVL methods; failures are swallowed
     * @param  strategy            Strategy address
     * @return adapter             Strategy adapter address (0 if not set)
     * @return pool                Underlying pool address (0 if adapter fails)
     * @return tokens              Pool tokens in adapter order
     * @return balances            Token balances in pool (native decimals)
     * @return decimals            Decimals for each token (native)
     * @return tvlUsdt1e18         Optional pool TVL in USDT terms (1e18) (0 if not available)
     * @return tokenValuesUsdt1e18 Optional per-token USDT values (1e18) (empty if not available)
     */
    function getPoolLiquidityBreakdown(address strategy)
        external
        view
        returns (
            address adapter,
            address pool,
            address[] memory tokens,
            uint256[] memory balances,
            uint8[] memory decimals,
            uint256 tvlUsdt1e18,
            uint256[] memory tokenValuesUsdt1e18
        )
    {
        PoolLiquidityBreakdown memory L = _buildLiquidity(strategy);
        return (
            L.adapter,
            L.pool,
            L.tokens,
            L.balances,
            L.decimals,
            L.tvlUsdt1e18,
            L.tokenValuesUsdt1e18
        );
    }

    /**
     * @notice Returns compact table of DSF pools (filtered) with strategy + derived pricing
     * @dev
     * Filters out:
     *         - blacklisted pools
     *         - zero/EOA strategies
     *         - this contract as strategy (safety)
     *
     * Derived fields:
     *         - LPprice = holdings1e18 * 1e18 / lpShares
     *
     * @return pids              Active DSF pool ids
     * @return strategies        Strategy addresses
     * @return adapters          Adapter addresses (0 if not set)
     * @return pools             Underlying pool addresses (0 if adapter fails)
     * @return lpShares          DSF pool lpShares allocated to strategy
     * @return totalHolding      Strategy holdings in USDT terms (1e18)
     * @return LPprice           Derived strategy "price" (1e18)
     * @return poolTvlUsdt1e18   Optional adapter TVL for underlying pool (1e18)
     */
    function getPoolsInfo()
        external
        view
        returns (
            uint256[] memory pids,
            address[] memory strategies,
            address[] memory adapters,
            address[] memory pools,
            uint256[] memory lpShares,
            uint256[] memory totalHolding,
            uint256[] memory LPprice,
            uint256[] memory poolTvlUsdt1e18
        ) 
    {
        uint256 n = dsf.poolCount(); 
        
        uint256 activeCount = 0;
        for (uint256 i = 0; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            address strat = dsf.poolInfo(i).strategy; 
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;
            activeCount++;
        }

        pids = new uint256[](activeCount);
        strategies = new address[](activeCount);
        adapters = new address[](activeCount);
        pools = new address[](activeCount);
        lpShares = new uint256[](activeCount);
        totalHolding = new uint256[](activeCount);
        LPprice = new uint256[](activeCount);
        poolTvlUsdt1e18 = new uint256[](activeCount);

        uint256 j = 0;
        for (uint256 i = 0; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            IDSF.PoolInfo memory p = dsf.poolInfo(i);
            address strat = p.strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;

            uint256 holdings = _safeStrategyHoldings(strat);
            
            pids[j] = i;
            strategies[j] = strat;
            lpShares[j] = p.lpShares;
            totalHolding[j] = holdings;
            LPprice[j] = (p.lpShares > 0) ? (holdings * PRICE_SCALE) / p.lpShares : 0;
            address adapter = strategyAdapter[strat];
            adapters[j] = adapter;
            if (adapter != address(0) && adapter.code.length > 0) {
                try IStrategyPoolAdapter(adapter).pool() returns (address poolPtr) {
                    pools[j] = poolPtr;
                } catch {}
                PoolLiquidityBreakdown memory L = _buildLiquidity(strat);
                poolTvlUsdt1e18[j] = L.tvlUsdt1e18;
            }
            j++;
        }
    }

    /**
     * @notice Returns RewardManager snapshot for monitoring and UI
     * @dev
     *         - Includes RM.totalHoldings (1e18) and raw ERC20 balances for autoswap tokens
     *         - Decimals are fetched via IERC20Metadata; fallback = 18 on failure
     *
     * @return rm                RewardManager address
     * @return totalHoldings1e18 RM total holdings in USDT terms (1e18)
     * @return usdtBalance       USDT balance on RM (native 1e6)
     * @return tokens            RewardManager autoswap token list
     * @return balances          Balances of each token on RM (native decimals)
     * @return decimals          Decimals of each token (best-effort)
     */
    function getRewardManagerSnapshot()
        external
        view
        returns (
            address rm,
            uint256 totalHoldings1e18,
            uint256 usdtBalance,          // native 1e6
            address[] memory tokens,
            uint256[] memory balances,    // native decimals
            uint8[] memory decimals       // token decimals
        )
    {
        rm = address(rewardManager);
        if (rm == address(0) || rm.code.length == 0) {
            tokens = new address[](0);
            balances = new uint256[](0);
            decimals = new uint8[](0);
            return (rm, 0, 0, tokens, balances, decimals);
        }

        totalHoldings1e18 = rewardManager.totalHoldings();
        usdtBalance = IERC20(USDT).balanceOf(rm);

        tokens = rewardManager.getAutoSwapTokens();

        balances = new uint256[](tokens.length);
        decimals = new uint8[](tokens.length);

        for (uint256 i; i < tokens.length; i++) {
            address t = tokens[i];

            balances[i] = IERC20(t).balanceOf(rm);

            if (t.code.length > 0) {
                try IERC20Metadata(t).decimals() returns (uint8 d) {
                    decimals[i] = d;
                } catch {
                    decimals[i] = 18; // fallback
                }
            }
        }
    }

    /**
     * @notice Returns strategy names for active DSF pools (filtered)
     * @dev    Skips blacklisted / invalid strategies
     * @return pids       Active DSF pool ids
     * @return names      strategyName[strategy] values (may be empty string if not set)
     * @return strategies Strategy addresses
     */
    function getPoolNames()
        external
        view
        returns (uint256[] memory pids, string[] memory names, address[] memory strategies)
    {
        uint256 n = dsf.poolCount();

        uint256 active;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            address strat = dsf.poolInfo(i).strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;
            active++;
        }

        pids = new uint256[](active);
        names = new string[](active);
        strategies = new address[](active);

        uint256 j;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            address strat = dsf.poolInfo(i).strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;

            pids[j] = i;
            strategies[j] = strat;
            names[j] = strategyName[strat];
            j++;
        }
    }

    /**
     * @notice Returns DSF core snapshot (TVL/supply/lpPrice)
     * @dev
     *         - Uses dsf.lpPrice() if available
     *         - Fallback: totalHoldings * 1e18 / totalSupply
     * @return dsfAddr           DSF contract address
     * @return totalHoldings1e18 DSF total holdings (1e18)
     * @return totalSupply1e18   DSF total supply (1e18)
     * @return lpPrice1e18       DSF lpPrice (1e18)
     */
    function getDsfCoreSnapshot()
        external
        view
        returns (
            address dsfAddr,
            uint256 totalHoldings1e18,
            uint256 totalSupply1e18,
            uint256 lpPrice1e18
        )
    {
        dsfAddr = address(dsf);

        totalHoldings1e18 = dsf.totalHoldings();
        totalSupply1e18 = dsf.totalSupply();

        lpPrice1e18 = 0;
        try dsf.lpPrice() returns (uint256 p) {
            lpPrice1e18 = p;
        } catch {
            lpPrice1e18 = (totalSupply1e18 > 0) ? (totalHoldings1e18 * PRICE_SCALE) / totalSupply1e18 : 0;
        }
    }

    /**
     * @notice Returns CVX/CRV rewards per strategy (gross & net) for active DSF pools
     * @dev
     *         - Gross uses getCVXCRVHoldingsGross()
     *         - Net uses getCVXCRVHoldings()
     *         - Reverts are swallowed per-strategy (returns zeros for that row)
     *
     * @return pids           Active DSF pool ids
     * @return strategies     Strategy addresses
     * @return cvxAmountGross CVX amount (gross)
     * @return crvAmountGross CRV amount (gross)
     * @return cvxUsdtGross   CVX value in USDT (gross, 1e6)
     * @return crvUsdtGross   CRV value in USDT (gross, 1e6)
     * @return cvxAmountNet   CVX amount (net)
     * @return crvAmountNet   CRV amount (net)
     * @return cvxUsdtNet     CVX value in USDT (net, 1e6)
     * @return crvUsdtNet     CRV value in USDT (net, 1e6)
     */
    function getStrategiesRewards()
        external
        view
        returns (
            uint256[] memory pids,
            address[] memory strategies,
            uint256[] memory cvxAmountGross,
            uint256[] memory crvAmountGross,
            uint256[] memory cvxUsdtGross,
            uint256[] memory crvUsdtGross,
            uint256[] memory cvxAmountNet,
            uint256[] memory crvAmountNet,
            uint256[] memory cvxUsdtNet,
            uint256[] memory crvUsdtNet
        )
    {
        uint256 n = dsf.poolCount();

        uint256 active;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            address strat = dsf.poolInfo(i).strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;
            active++;
        }

        pids = new uint256[](active);
        strategies = new address[](active);

        cvxAmountGross = new uint256[](active);
        crvAmountGross = new uint256[](active);
        cvxUsdtGross   = new uint256[](active);
        crvUsdtGross   = new uint256[](active);

        cvxAmountNet = new uint256[](active);
        crvAmountNet = new uint256[](active);
        cvxUsdtNet   = new uint256[](active);
        crvUsdtNet   = new uint256[](active);

        uint256 j;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;

            address strat = dsf.poolInfo(i).strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;

            pids[j] = i;
            strategies[j] = strat;

            // Gross
            (cvxAmountGross[j], crvAmountGross[j], cvxUsdtGross[j], crvUsdtGross[j]) =
                _safeGetRewardsGross(strat);

            // Net
            (cvxAmountNet[j], crvAmountNet[j], cvxUsdtNet[j], crvUsdtNet[j]) =
                _safeGetRewardsNet(strat);

            j++;
        }
    }

    /**
     * @notice Returns full system snapshot: DSF core + RewardManager + all active strategies
     * @dev
     * Includes:
     *         - DSF core totals + lpPrice (with fallback calc)
     *         - RewardManager totals + USDT balance + tokens pack with oracle
     *         - Strategies:
     *             - holdings, lpShares, derived lpPrice
     *             - underlying pool breakdown (adapter tokens/balances/decimals + optional tvl)
     *             - rewards gross/net
     *             - reward token oracles (CVX/CRV) cached once per call
     * Safety:
     *         - skips blacklisted pools and invalid strategies
     *         - wraps every external call with try/catch to avoid reverting
     *
     * @return S Structured snapshot object for UI/monitoring
     */
    function getFullSnapshot() external view returns (SystemSnapshot memory S) {
        // core
        S.core.dsf = address(dsf);
        S.core.totalHoldings1e18 = dsf.totalHoldings();
        S.core.totalSupply1e18 = dsf.totalSupply();

        S.core.lpPrice1e18 = 0;
        try dsf.lpPrice() returns (uint256 p) {
            S.core.lpPrice1e18 = p;
        } catch {
            S.core.lpPrice1e18 = (S.core.totalSupply1e18 > 0)
                ? (S.core.totalHoldings1e18 * PRICE_SCALE) / S.core.totalSupply1e18
                : 0;
        }

        // reward manager
        S.rm.rm = address(rewardManager);
        if (S.rm.rm != address(0) && S.rm.rm.code.length > 0) {
            S.rm.totalHoldings1e18 = rewardManager.totalHoldings();
            S.rm.usdtBalance = IERC20(USDT).balanceOf(S.rm.rm);
            S.rm.tokens = _buildRmTokens(S.rm.rm);
        }

        // cache oracle prices for reward tokens once (CVX/CRV)
        OraclePrice memory cvxOracle = _oraclePrice(CVX);
        OraclePrice memory crvOracle = _oraclePrice(CRV);

        // strategies list
        uint256 n = dsf.poolCount();

        uint256 active;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;
            address strat = dsf.poolInfo(i).strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;
            active++;
        }

        S.strategies = new StrategySnapshot[](active);

        uint256 j;
        for (uint256 i; i < n; i++) {
            if (isPoolBlacklisted[i]) continue;

            IDSF.PoolInfo memory pinfo = dsf.poolInfo(i);
            address strat = pinfo.strategy;
            if (strat == address(0) || strat.code.length == 0 || strat == address(this)) continue;

            StrategySnapshot memory st;
            st.pid = i;
            st.strategy = strat;
            st.name = strategyName[strat];

            st.lpShares = pinfo.lpShares;
            st.holdings1e18 = _safeStrategyHoldings(strat);
            st.lpPrice1e18 = (st.lpShares > 0) ? (st.holdings1e18 * PRICE_SCALE) / st.lpShares : 0;

            // liquidity breakdown + oracle
            st.liquidity = _buildLiquidity(strat);

            // rewards gross/net
            (st.gross.amountCvx, st.gross.amountCrv, st.gross.cvxUsdt, st.gross.crvUsdt) = _safeGetRewardsGross(strat);
            (st.net.amountCvx,   st.net.amountCrv,   st.net.cvxUsdt,   st.net.crvUsdt)   = _safeGetRewardsNet(strat);

            // reward tokens + oracle
            st.rewardTokens = new address[](2);
            st.rewardTokens[0] = CVX;
            st.rewardTokens[1] = CRV;

            st.rewardOracle = new OraclePrice[](2);
            st.rewardOracle[0] = cvxOracle;
            st.rewardOracle[1] = crvOracle;

            // amounts as arrays for UI
            st.rewardAmountGross = new uint256[](2);
            st.rewardAmountGross[0] = st.gross.amountCvx;
            st.rewardAmountGross[1] = st.gross.amountCrv;

            st.rewardAmountNet = new uint256[](2);
            st.rewardAmountNet[0] = st.net.amountCvx;
            st.rewardAmountNet[1] = st.net.amountCrv;

            S.strategies[j] = st;
            j++;
        }

        return S;
    }

    /**
     * @notice Returns token USD price from external TokenPriceOracle
     * @param  token Token address
     * @return price1e18 USD price scaled to 1e18
     * @return updatedAt Price source timestamp
     * @return ok True if price is usable
     */
    function getTokenUsdPrice1e18(address token)
        external
        view
        returns (uint256 price1e18, uint256 updatedAt, bool ok)
    {
        OraclePrice memory op = _oraclePrice(token);

        return (
            op.priceUsd1e18,
            op.updatedAt,
            op.ok
        );
    }

     /**
     * @notice Batch version of getTokenUsdPrice1e18
     * @param  tokens Token addresses
     * @return prices1e18 USD prices scaled to 1e18
     * @return updatedAts Price source timestamps
     * @return oks True if price is usable
     */
    function getTokensUsdPrices1e18(address[] calldata tokens)
        external
        view
        returns (
            uint256[] memory prices1e18,
            uint256[] memory updatedAts,
            bool[] memory oks
        )
    {
        prices1e18 = new uint256[](tokens.length);
        updatedAts = new uint256[](tokens.length);
        oks = new bool[](tokens.length);

        for (uint256 i; i < tokens.length; i++) {
            OraclePrice memory op = _oraclePrice(tokens[i]);

            prices1e18[i] = op.priceUsd1e18;
            updatedAts[i] = op.updatedAt;
            oks[i] = op.ok;
        }
    }

    /**
     * @notice Safely reads strategy rewards (gross)
     * @dev    Returns zeros if call reverts
     */
    function _safeGetRewardsGross(address strat)
        internal
        view
        returns (uint256 aCvx, uint256 aCrv, uint256 uCvx, uint256 uCrv)
    {
        try IStrategy(strat).getCVXCRVHoldingsGross() returns (uint256 x1, uint256 x2, uint256 x3, uint256 x4) {
            return (x1, x2, x3, x4);
        } catch {
            return (0,0,0,0);
        }
    }

    /**
     * @notice Safely reads strategy rewards (net)
     * @dev Returns zeros if call reverts
     */
    function _safeGetRewardsNet(address strat)
        internal
        view
        returns (uint256 aCvx, uint256 aCrv, uint256 uCvx, uint256 uCrv)
    {
        try IStrategy(strat).getCVXCRVHoldings() returns (uint256 x1, uint256 x2, uint256 x3, uint256 x4) {
            return (x1, x2, x3, x4);
        } catch {
            return (0,0,0,0);
        }
    }

    /* ───────────────────────────── Internal helpers ───────────────────────────── */

    /**
     * @notice Safely fetches strategy total holdings
     * @dev    Performs a defensive external call to `IStrategy(strat).totalHoldings()`
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
     * @notice Safe power-of-10 helper (bounded)
     * @dev    Caps exponent to prevent overflow in loops
     * @param  e Exponent (10^e)
     * @return 10^e (bounded)
     */
    function _safePow10(uint8 e) internal pure returns (uint256) {
        if (e > 77) e = 77;
        uint256 r = 1;
        for (uint256 i; i < e; i++) r *= 10;
        return r;
    }

    /**
     * @notice Wraps external TokenPriceOracle response into local OraclePrice struct.
     * @dev    Returns ok=false if priceOracle is missing or call reverts.
     * @param  token Token address.
     * @return out OraclePrice {priceUsd1e18, updatedAt, ok}.
     */
    function _oraclePrice(address token) internal view returns (OraclePrice memory out) {
        ITokenPriceOracle oracle = priceOracle;

        if (address(oracle) == address(0) || address(oracle).code.length == 0) {
            return OraclePrice({
                priceUsd1e18: 0,
                updatedAt: 0,
                ok: false
            });
        }

        try oracle.getTokenUsdPrice1e18(token) returns (
            uint256 priceUsd1e18,
            uint256 updatedAt,
            bool ok
        ) {
            return OraclePrice({
                priceUsd1e18: priceUsd1e18,
                updatedAt: updatedAt,
                ok: ok
            });
        } catch {
            return OraclePrice({
                priceUsd1e18: 0,
                updatedAt: 0,
                ok: false
            });
        }
    }

    /**
     * @notice Builds RewardManager token pack (USDT + autoswap tokens) with balances/decimals/oracle
     * @dev
     *         - packs[0] is always USDT (native 1e6)
     *         - For autoswap tokens decimals are best-effort; fallback=18
     *         - Note: if autoswap list contains USDT, it is skipped but index slot remains unused
     * @param  rmAddr RewardManager address
     * @return packs  TokenPack array for UI
     */
    function _buildRmTokens(address rmAddr) internal view returns (TokenPack[] memory packs) {
        address[] memory toks = rewardManager.getAutoSwapTokens();
        packs = new TokenPack[](toks.length + 1);

        packs[0].token = USDT;
        packs[0].balance = IERC20(USDT).balanceOf(rmAddr);
        packs[0].decimals = 6;
        packs[0].oracle = _oraclePrice(USDT);

        for (uint256 i; i < toks.length; i++) {
            address t = toks[i];

            if (t == USDT) continue;
            
            uint256 k = i + 1;
            packs[k].token = t;
            packs[k].balance = IERC20(t).balanceOf(rmAddr);

            uint8 dec = 18;
            if (t.code.length > 0) {
                try IERC20Metadata(t).decimals() returns (uint8 d) { dec = d; } catch {}
            }
            packs[k].decimals = dec;

            packs[k].oracle = _oraclePrice(t);
        }
    }

    function _min3(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        uint256 m = a < b ? a : b;
        return m < c ? m : c;
    }

    /**
     * @notice Builds underlying pool liquidity object for a given strategy via adapter
     * @dev    Returns empty arrays if adapter missing or calls revert
     * @param  strategy Strategy address
     * @return L PoolLiquidityBreakdown with token list, balances, decimals, optional tvl, and per-token oracle prices
     */
    function _buildLiquidity(address strategy) internal view returns (PoolLiquidityBreakdown memory L) {
        L.adapter = strategyAdapter[strategy];
        if (L.adapter == address(0) || L.adapter.code.length == 0) {
            L.tokens = new address[](0);
            L.balances = new uint256[](0);
            L.decimals = new uint8[](0);
            L.tokenValuesUsdt1e18 = new uint256[](0);
            L.oracle = new OraclePrice[](0);
            L.tvlUsdt1e18 = 0;
            return L;
        }

        IStrategyPoolAdapter adp = IStrategyPoolAdapter(L.adapter);

        try adp.pool() returns (address p) { L.pool = p; } catch {}
        try adp.tokens() returns (address[] memory t) { L.tokens = t; } catch { L.tokens = new address[](0); }
        try adp.balances() returns (uint256[] memory b) { L.balances = b; } catch { L.balances = new uint256[](0); }
        try adp.decimals() returns (uint8[] memory d) { L.decimals = d; } catch { L.decimals = new uint8[](0); }

        uint256 n = _min3(L.tokens.length, L.balances.length, L.decimals.length);

        L.oracle = new OraclePrice[](n);
        L.tokenValuesUsdt1e18 = new uint256[](n);
        L.tvlUsdt1e18 = 0;

        for (uint256 i = 0; i < n; i++) {
            OraclePrice memory op = _oraclePrice(L.tokens[i]);
            L.oracle[i] = op;

            if (!op.ok || op.priceUsd1e18 == 0) continue;

            uint256 denom = _safePow10(L.decimals[i]);
            if (denom == 0) continue;

            uint256 value1e18 = (L.balances[i] * op.priceUsd1e18) / denom;
            L.tokenValuesUsdt1e18[i] = value1e18;
            L.tvlUsdt1e18 += value1e18;
        }
    }
}
