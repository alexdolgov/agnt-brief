// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

import "../interfaces/master/IPoolMaster.sol";
import "../interfaces/factory/IPoolFactory.sol";

import "../libraries/Ownable2Step.sol";

error NotWhitelistedFactory();
error PoolAlreadyExists();

/// @notice The pool master manages swap fees for pools, whitelist for factories,
/// protocol fee and pool registry.
///
/// It accepts pool registers from whitelisted factories, with the pool data on pool
/// creation, to enable querying of the existence or fees of a pool by address or config.
///
/// This contract provides a unified interface to query and manage fees across
/// different pool types, and a unique registry for all pools.
///
contract SyncSwapPoolMaster_ is IPoolMaster, Ownable2Step {

    address public immutable override wETH;

    /// @dev The vault that holds funds.
    address public immutable override vault;

    /// @dev The registry of forwarder.
    address public forwarderRegistry;

    /// @dev The fee manager.
    address public override feeManager;

    /// @dev Whether an address is a factory.
    mapping(address => bool) public override isFactoryWhitelisted;

    /// @dev Whether an address is a pool.
    mapping(address => bool) public override isPool;

    /// @dev Pools by hash of its config.
    mapping(bytes32 => address) public override getPool;

    struct PoolInfo {
        address pool;
        uint16 poolType;
    }
    mapping(address => mapping(address => PoolInfo[])) public pairPools;

    address[] public override pools;

    constructor(address _wETH, address _vault, address _forwarderRegistry, address _feeManager) {
        wETH = _wETH;
        vault = _vault;
        forwarderRegistry = _forwarderRegistry;
        feeManager = _feeManager;
    }

    function poolsLength() external view override returns (uint) {
        return pools.length;
    }

    function _hashPoolConfig(uint16 poolType, address token0, address token1) private pure returns (bytes32 hash) {
        hash = keccak256(abi.encode(poolType, token0, token1));
    }

    function _sortTokens(address tokenA, address tokenB) private pure returns (address token0, address token1) {
        if (tokenA < tokenB) {
            (token0, token1) = (tokenA, tokenB);
        } else {
            (token0, token1) = (tokenB, tokenA);
        }
    }

    function getPoolByTokens(uint16 poolType, address tokenA, address tokenB) external view returns (address) {
        (tokenA, tokenB) = _sortTokens(tokenA, tokenB);
        return getPool[_hashPoolConfig(poolType, tokenA, tokenB)];
    }

    function pairPoolsLength(address tokenA, address tokenB) external view returns (uint) {
        (tokenA, tokenB) = _sortTokens(tokenA, tokenB);
        return pairPools[tokenA][tokenB].length;
    }

    function getPairPools(address tokenA, address tokenB) external view returns (PoolInfo[] memory) {
        (tokenA, tokenB) = _sortTokens(tokenA, tokenB);
        return pairPools[tokenA][tokenB];
    }

    function isForwarder(address forwarder) external view override returns (bool) {
        return IForwarderRegistry(forwarderRegistry).isForwarder(forwarder);
    }

    function setForwarderRegistry(address newForwarderRegistry) external override onlyOwner {
        forwarderRegistry = newForwarderRegistry;
        emit UpdateForwarderRegistry(newForwarderRegistry);
    }

    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view override returns (uint24 fee) {
        fee = IFeeManager(feeManager).getSwapFee(pool, sender, tokenIn, tokenOut, data);
    }

    function getProtocolFee(address pool) external view override returns (uint24 fee) {
        fee = IFeeManager(feeManager).getProtocolFee(pool);
    }

    function getFeeRecipient() external view override returns (address recipient) {
        recipient = IFeeManager(feeManager).getFeeRecipient();
    }

    function setFeeManager(address newFeeManager) external override onlyOwner {
        feeManager = newFeeManager;
        emit UpdateFeeManager(newFeeManager);
    }

    function setFactoryWhitelisted(address factory, bool whitelisted) external override onlyOwner {
        require(factory != address(0), "Invalid factory");
        isFactoryWhitelisted[factory] = whitelisted;
        emit SetFactoryWhitelisted(factory, whitelisted);
    }

    /// @dev Create a pool with deployment data and, register it via the factory.
    function createPool(address factory, bytes calldata data) external override returns (address pool) {
        // The factory have to call `registerPool` to register the pool.
        // The pool whitelist is checked in `registerPool`.
        pool = IPoolFactory(factory).createPool(data);
    }

    /// @dev Register a pool to the mapping by its config. Can only be called by factories.
    function registerPool(address pool, uint16 poolType, bytes calldata data, address token0, address token1) external override {
        if (!isFactoryWhitelisted[msg.sender]) {
            revert NotWhitelistedFactory();
        }

        require(pool != address(0));

        // Double check to prevent duplicated pools.
        if (isPool[pool]) {
            revert PoolAlreadyExists();
        }

        // Encode and hash pool config to get the mapping key.
        bytes32 hash = keccak256(abi.encode(poolType, data));

        // Double check to prevent duplicated pools.
        if (getPool[hash] != address(0)) {
            revert PoolAlreadyExists();
        }

        // Set to mappings.
        getPool[hash] = pool;
        isPool[pool] = true;
        pools.push(pool);

        pairPools[token0][token1].push(PoolInfo({
            pool: pool,
            poolType: poolType
        }));

        emit RegisterPool(msg.sender, pool, poolType, data);
    }
}