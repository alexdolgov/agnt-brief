// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title IStrategyPoolAdapter
 * @notice Adapter interface used by PoolLiquidityAggregator
 * @dev Adapter is expected to be bound to a concrete pool/strategy internally
 */
interface IStrategyPoolAdapter {
    function pool() external view returns (address);
    function tokens() external view returns (address[] memory);
    function balances() external view returns (uint256[] memory);
    function tvlUsdt1e18() external view returns (uint256);
    function tokenValuesUsdt1e18() external view returns (uint256[] memory);
    function decimals() external view returns (uint8[] memory);
}

/**
 * @title PoolLiquidityAggregator
 * @notice Aggregates liquidity and snapshots from a predefined list of pool adapters
 * @dev Stores adapters only. Each adapter is responsible for its own underlying pool.
 */
contract PoolLiquidityAggregator is AccessControl {
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    struct AdapterConfig {
        address adapter;
        bool enabled;
    }

    struct PoolSnapshot {
        address adapter;
        address pool;
        bool enabled;
        address[] tokens;
        uint256[] balances;
        uint8[] decimals;
        uint256 tvlUsdt1e18;
        uint256[] tokenValuesUsdt1e18;
    }

    AdapterConfig[] internal _adapters;

    event AdapterAdded(uint256 indexed pid, address indexed adapter, bool enabled);
    event AdapterUpdated(uint256 indexed pid, address indexed adapter, bool enabled);
    event AdapterEnabled(uint256 indexed pid, bool enabled);
    event AdapterRemoved(uint256 indexed pid, address indexed adapter);

    error InvalidAdapter();
    error InvalidPid();

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, msg.sender);
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
     * @notice Returns TVL by pid
     * @dev Returns 0 for disabled/removed/broken adapters
     */
    function getTvlByPid(uint256 pid) public view returns (uint256 tvl) {
        if (pid >= _adapters.length) revert InvalidPid();

        AdapterConfig memory cfg = _adapters[pid];
        if (!_isActive(cfg)) return 0;

        try IStrategyPoolAdapter(cfg.adapter).tvlUsdt1e18() returns (uint256 v) {
            return v;
        } catch {
            return 0;
        }
    }

    /**
     * @notice Returns TVLs for all adapters
     * @dev Disabled/removed/broken adapters return 0
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
     * @dev Summed in USDT 1e18 if adapters follow expected convention
     */
    function totalLiquidity() external view returns (uint256 total) {
        uint256 length = _adapters.length;

        for (uint256 i; i < length; i++) {
            total += getTvlByPid(i);
        }
    }

    /**
     * @notice Returns full snapshot for one adapter
     * @dev Disabled/removed/broken adapters return zeroed/empty fields where appropriate
     */
    function getSnapshotByPid(uint256 pid) public view returns (PoolSnapshot memory snap) {
        if (pid >= _adapters.length) revert InvalidPid();

        AdapterConfig memory cfg = _adapters[pid];
        snap.adapter = cfg.adapter;
        snap.enabled = cfg.enabled;

        if (!_isActive(cfg)) {
            return snap;
        }

        try IStrategyPoolAdapter(cfg.adapter).pool() returns (address p) {
            snap.pool = p;
        } catch {}

        try IStrategyPoolAdapter(cfg.adapter).tokens() returns (address[] memory toks) {
            snap.tokens = toks;
        } catch {}

        try IStrategyPoolAdapter(cfg.adapter).balances() returns (uint256[] memory bals) {
            snap.balances = bals;
        } catch {}

        try IStrategyPoolAdapter(cfg.adapter).decimals() returns (uint8[] memory decs) {
            snap.decimals = decs;
        } catch {}

        try IStrategyPoolAdapter(cfg.adapter).tvlUsdt1e18() returns (uint256 tvl) {
            snap.tvlUsdt1e18 = tvl;
        } catch {}

        try IStrategyPoolAdapter(cfg.adapter).tokenValuesUsdt1e18() returns (uint256[] memory vals) {
            snap.tokenValuesUsdt1e18 = vals;
        } catch {}
    }

    /**
     * @notice Returns snapshots for all registered adapters
     * @dev Intended mainly for offchain eth_call usage
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
     * @dev Disabled/removed/broken adapters return address(0)
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
}