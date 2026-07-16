// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title IStrategyPoolAdapter
 * @notice Minimal adapter interface for PoolLiquidityAggregator
 * @dev Adapter is bound to a concrete pool/strategy internally
 */
interface IStrategyPoolAdapter {
    function pool() external view returns (address);
    function tokens() external view returns (address[] memory);
    function balances() external view returns (uint256[] memory);
    function decimals() external view returns (uint8[] memory);
}

interface IFeedRegistry {
    function latestRoundData(address base, address quote)
        external
        view
        returns (uint80, int256 answer, uint256, uint256 updatedAt, uint80);

    function decimals(address base, address quote) external view returns (uint8);
}

/**
 * @title PoolLiquidityAggregator
 * @notice Aggregates pool snapshots and computes liquidity using Chainlink Feed Registry
 * @dev Oracle logic is implemented here, similarly to DSFanalytics
 */
contract PoolLiquidityAggregator is AccessControl {
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    uint256 public constant PRICE_SCALE = 1e18;
    uint32 public oracleStalenessSeconds = 1 hours;

    address public constant DENOM_ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public constant DENOM_USD = 0x0000000000000000000000000000000000000348;
    address public constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    IFeedRegistry public constant feedRegistry =
    IFeedRegistry(0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf);

    struct AdapterConfig {
        address adapter;
        bool enabled;
    }

    struct OraclePrice {
        uint256 priceUsd1e18;
        uint256 updatedAt;
        bool ok;
    }

    struct PoolSnapshot {
        address adapter;
        address pool;
        bool enabled;
        address[] tokens;
        uint256[] balances;
        uint8[] decimals;
        OraclePrice[] oracle;
        uint256[] tokenValuesUsdt1e18;
        uint256 tvlUsdt1e18;
    }

    AdapterConfig[] internal _adapters;

    event AdapterAdded(uint256 indexed pid, address indexed adapter, bool enabled);
    event AdapterUpdated(uint256 indexed pid, address indexed adapter, bool enabled);
    event AdapterEnabled(uint256 indexed pid, bool enabled);
    event AdapterRemoved(uint256 indexed pid, address indexed adapter);

    event OracleStalenessUpdated(uint32 oldValue, uint32 newValue);

    error InvalidAdapter();
    error InvalidPid();

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, msg.sender);
    }

    /**
     * @notice Updates max allowed staleness for oracle prices
     */
    function setOracleStalenessSeconds(uint32 newValue) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint32 old = oracleStalenessSeconds;
        oracleStalenessSeconds = newValue;

        emit OracleStalenessUpdated(old, newValue);
    }

    /**
     * @notice Returns total number of registered adapters
     */
    function adapterCount() external view returns (uint256) {
        return _adapters.length;
    }

    /**
     * @notice Returns adapter config by id
     */
    function adapterInfo(uint256 pid) external view returns (AdapterConfig memory) {
        if (pid >= _adapters.length) revert InvalidPid();
        return _adapters[pid];
    }

    /**
     * @notice Returns all adapter configs
     */
    function getAllAdapters() external view returns (AdapterConfig[] memory out) {
        uint256 length = _adapters.length;
        out = new AdapterConfig[](length);

        for (uint256 i; i < length; i++) {
            out[i] = _adapters[i];
        }
    }

    /**
     * @notice Adds one adapter
     */
    function addAdapter(address adapter, bool enabled)
        external
        onlyRole(MANAGER_ROLE)
        returns (uint256 pid)
    {
        _validateAdapter(adapter);

        pid = _adapters.length;
        _adapters.push(AdapterConfig({adapter: adapter, enabled: enabled}));

        emit AdapterAdded(pid, adapter, enabled);
    }

    /**
     * @notice Adds many adapters in one tx
     */
    function addAdapters(address[] calldata adapters_, bool[] calldata enabledList)
        external
        onlyRole(MANAGER_ROLE)
    {
        require(adapters_.length == enabledList.length, "AGG: arrays length mismatch");

        for (uint256 i; i < adapters_.length; i++) {
            _validateAdapter(adapters_[i]);

            uint256 pid = _adapters.length;
            _adapters.push(AdapterConfig({adapter: adapters_[i], enabled: enabledList[i]}));

            emit AdapterAdded(pid, adapters_[i], enabledList[i]);
        }
    }

    /**
     * @notice Updates adapter config
     */
    function updateAdapter(uint256 pid, address adapter, bool enabled)
        external
        onlyRole(MANAGER_ROLE)
    {
        if (pid >= _adapters.length) revert InvalidPid();
        _validateAdapter(adapter);

        _adapters[pid] = AdapterConfig({adapter: adapter, enabled: enabled});

        emit AdapterUpdated(pid, adapter, enabled);
    }

    /**
     * @notice Enables/disables adapter in aggregation
     */
    function setAdapterEnabled(uint256 pid, bool enabled) external onlyRole(MANAGER_ROLE) {
        if (pid >= _adapters.length) revert InvalidPid();

        _adapters[pid].enabled = enabled;
        emit AdapterEnabled(pid, enabled);
    }

    /**
     * @notice Soft-removes adapter while keeping pid stable
     */
    function removeAdapter(uint256 pid) external onlyRole(MANAGER_ROLE) {
        if (pid >= _adapters.length) revert InvalidPid();

        AdapterConfig memory cfg = _adapters[pid];
        _adapters[pid] = AdapterConfig({adapter: address(0), enabled: false});

        emit AdapterRemoved(pid, cfg.adapter);
    }

    /**
     * @notice Returns number of enabled adapters
     */
    function enabledAdaptersCount() external view returns (uint256 count) {
        uint256 length = _adapters.length;

        for (uint256 i; i < length; i++) {
            if (_adapters[i].enabled && _adapters[i].adapter != address(0)) {
                count++;
            }
        }
    }

    /**
     * @notice Returns adapter pool by pid
     * @dev Returns address(0) for disabled/removed/broken adapters
     */
    function getPoolByPid(uint256 pid) public view returns (address poolAddr) {
        if (pid >= _adapters.length) revert InvalidPid();

        AdapterConfig memory cfg = _adapters[pid];
        if (!_isActive(cfg)) return address(0);

        try IStrategyPoolAdapter(cfg.adapter).pool() returns (address p) {
            return p;
        } catch {
            return address(0);
        }
    }

    /**
     * @notice Returns oracle-computed TVL by pid
     * @dev Returns 0 for disabled/removed/broken adapters or when prices are unavailable
     */
    function getTvlByPid(uint256 pid) public view returns (uint256 tvl) {
        if (pid >= _adapters.length) revert InvalidPid();
        PoolSnapshot memory snap = getSnapshotByPid(pid);
        return snap.tvlUsdt1e18;
    }

    /**
     * @notice Returns TVLs for all adapters
     */
    function getAllTvls() external view returns (uint256[] memory tvls) {
        uint256 length = _adapters.length;
        tvls = new uint256[](length);

        for (uint256 i; i < length; i++) {
            tvls[i] = getTvlByPid(i);
        }
    }

    /**
     * @notice Returns total liquidity across all enabled adapters
     * @dev Summed in USD 1e18
     */
    function totalLiquidity() external view returns (uint256 total) {
        uint256 length = _adapters.length;

        for (uint256 i; i < length; i++) {
            total += getTvlByPid(i);
        }
    }

    /**
     * @notice Returns full snapshot for one adapter
     * @dev TVL and per-token values are computed here using Chainlink Feed Registry
     */
    function getSnapshotByPid(uint256 pid) public view returns (PoolSnapshot memory snap) {
        if (pid >= _adapters.length) revert InvalidPid();

        AdapterConfig memory cfg = _adapters[pid];
        snap.adapter = cfg.adapter;
        snap.enabled = cfg.enabled;

        if (!_isActive(cfg)) {
            return snap;
        }

        IStrategyPoolAdapter adp = IStrategyPoolAdapter(cfg.adapter);

        try adp.pool() returns (address p) {
            snap.pool = p;
        } catch {}

        try adp.tokens() returns (address[] memory toks) {
            snap.tokens = toks;
        } catch {
            snap.tokens = new address[](0);
        }

        try adp.balances() returns (uint256[] memory bals) {
            snap.balances = bals;
        } catch {
            snap.balances = new uint256[](0);
        }

        try adp.decimals() returns (uint8[] memory decs) {
            snap.decimals = decs;
        } catch {
            snap.decimals = new uint8[](0);
        }

        uint256 n = _min3(snap.tokens.length, snap.balances.length, snap.decimals.length);

        snap.oracle = new OraclePrice[](n);
        snap.tokenValuesUsdt1e18 = new uint256[](n);
        snap.tvlUsdt1e18 = 0;

        for (uint256 i; i < n; i++) {
            OraclePrice memory op = _oraclePrice(snap.tokens[i]);
            snap.oracle[i] = op;

            if (!op.ok || op.priceUsd1e18 == 0) continue;

            uint256 denom = _safePow10(snap.decimals[i]);
            if (denom == 0) continue;

            uint256 value1e18 = (snap.balances[i] * op.priceUsd1e18) / denom;
            snap.tokenValuesUsdt1e18[i] = value1e18;
            snap.tvlUsdt1e18 += value1e18;
        }
    }

    /**
     * @notice Returns snapshots for all registered adapters
     * @dev Intended for offchain eth_call usage
     */
    function getAllSnapshots() external view returns (PoolSnapshot[] memory out) {
        uint256 length = _adapters.length;
        out = new PoolSnapshot[](length);

        for (uint256 i; i < length; i++) {
            out[i] = getSnapshotByPid(i);
        }
    }

    /**
     * @notice Returns pools for all registered adapters
     */
    function getAllPools() external view returns (address[] memory pools) {
        uint256 length = _adapters.length;
        pools = new address[](length);

        for (uint256 i; i < length; i++) {
            pools[i] = getPoolByPid(i);
        }
    }

    function _validateAdapter(address adapter) internal view {
        if (adapter == address(0) || adapter.code.length == 0) revert InvalidAdapter();
    }

    function _isActive(AdapterConfig memory cfg) internal pure returns (bool) {
        return cfg.enabled && cfg.adapter != address(0);
    }

    function _min3(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        uint256 m = a < b ? a : b;
        return m < c ? m : c;
    }

    function _safePow10(uint8 e) internal pure returns (uint256) {
        if (e > 77) e = 77;
        uint256 r = 1;
        for (uint256 i; i < e; i++) {
            r *= 10;
        }
        return r;
    }

    /**
     * @notice Reads Feed Registry price for base/quote and normalizes it to 1e18
     */
    function _pairPrice1e18(address base, address quote)
        internal
        view
        returns (uint256 price1e18, uint256 updatedAt)
    {
        IFeedRegistry reg = feedRegistry;
        if (address(reg) == address(0)) return (0, 0);

        try reg.latestRoundData(base, quote) returns (
            uint80,
            int256 answer,
            uint256,
            uint256 upd,
            uint80
        ) {
            if (answer <= 0) return (0, upd);

            uint8 dec;
            try reg.decimals(base, quote) returns (uint8 d) {
                dec = d;
            } catch {
                return (0, upd);
            }

            uint256 u = uint256(answer);

            if (dec < 18) {
                uint256 mul = _safePow10(uint8(18 - dec));
                if (mul == 0) return (0, upd);
                if (u > type(uint256).max / mul) return (0, upd);
                price1e18 = u * mul;
            } else if (dec > 18) {
                uint256 div = _safePow10(uint8(dec - 18));
                if (div == 0) return (0, upd);
                price1e18 = u / div;
            } else {
                price1e18 = u;
            }

            return (price1e18, upd);
        } catch {
            return (0, 0);
        }
    }

    /**
     * @notice Best-effort token USD pricing via Chainlink Feed Registry
     * @dev Resolution order:
     *      1) TOKEN/USD
     *      2) TOKEN/ETH * ETH/USD
     *      Special cases:
     *      - zero address / WETH => ETH/USD
     */
    function _tryTokenUsdPrice1e18_CL(address token, bool asEth)
        internal
        view
        returns (uint256 price1e18, uint256 updatedAt)
    {
        if (asEth || token == address(0) || token == WETH) {
            return _pairPrice1e18(DENOM_ETH, DENOM_USD);
        }

        (price1e18, updatedAt) = _pairPrice1e18(token, DENOM_USD);
        if (price1e18 != 0) return (price1e18, updatedAt);

        (uint256 tEth, uint256 updA) = _pairPrice1e18(token, DENOM_ETH);
        if (tEth != 0) {
            (uint256 ethUsd, uint256 updB) = _pairPrice1e18(DENOM_ETH, DENOM_USD);
            if (ethUsd != 0) {
                uint256 minUpd = updA < updB ? updA : updB;
                return ((tEth * ethUsd) / PRICE_SCALE, minUpd);
            }
        }

        return (0, 0);
    }

    /**
     * @notice Wraps token price into OraclePrice with staleness check
     */
    function _oraclePrice(address token) internal view returns (OraclePrice memory out) {
        bool asEth = (token == address(0) || token == WETH);
        (uint256 p, uint256 upd) = _tryTokenUsdPrice1e18_CL(token, asEth);

        out.priceUsd1e18 = p;
        out.updatedAt = upd;
        out.ok = (p != 0 && upd != 0 && (block.timestamp - upd) <= oracleStalenessSeconds);
    }
}