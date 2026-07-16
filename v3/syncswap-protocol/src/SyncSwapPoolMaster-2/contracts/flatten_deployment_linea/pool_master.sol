
// SPDX-License-Identifier: AGPL-3.0-or-later AND MIT

// File contracts/interfaces/master/IFeeManager.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

/// @notice The manager contract to control fees.
/// Management functions are omitted.
interface IFeeManager {
    function getSwapFee(
        address pool,
        address sender,
        address tokenIn,
        address tokenOut,
        bytes calldata data
    ) external view returns (uint24);

    function getProtocolFee(address pool) external view returns (uint24);

    function getFeeRecipient() external view returns (address);
}


// File contracts/interfaces/master/IForwarderRegistry.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IForwarderRegistry {
    function isForwarder(address forwarder) external view returns (bool);
}


// File contracts/interfaces/master/IPoolMaster.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;
/// @dev The master contract to create pools and manage whitelisted factories.
/// Inheriting the fee manager interface to support fee queries.
interface IPoolMaster is IFeeManager, IForwarderRegistry {
    event SetFactoryWhitelisted(address indexed factory, bool whitelisted);

    event RegisterPool(
        address indexed factory,
        address indexed pool,
        uint16 indexed poolType,
        bytes data
    );

    event UpdateForwarderRegistry(address indexed newForwarderRegistry);

    event UpdateFeeManager(address indexed newFeeManager);

    function wETH() external view returns (address);

    function vault() external view returns (address);

    function feeManager() external view returns (address);

    function pools(uint) external view returns (address);

    function poolsLength() external view returns (uint);

    // Forwarder Registry
    function setForwarderRegistry(address) external;

    // Fees
    function setFeeManager(address) external;

    // Factories
    function isFactoryWhitelisted(address) external view returns (bool);

    function setFactoryWhitelisted(address factory, bool whitelisted) external;

    // Pools
    function isPool(address) external view returns (bool);

    function getPool(bytes32) external view returns (address);

    function createPool(address factory, bytes calldata data) external returns (address pool);

    function registerPool(address pool, uint16 poolType, bytes calldata data, address token0, address token1) external;
}


// File contracts/libraries/Ownable.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(msg.sender);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == msg.sender, "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// File contracts/libraries/Ownable2Step.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.0;
/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        require(pendingOwner() == msg.sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(msg.sender);
    }
}


// File contracts/interfaces/factory/IPoolFactory.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IPoolFactory {
    function master() external view returns (address);

    function getDeployData() external view returns (bytes memory);

    function createPool(bytes calldata data) external returns (address pool);
}


// File contracts/master/SyncSwapPoolMaster.sol

// Original license: SPDX_License_Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;
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
contract SyncSwapPoolMaster is IPoolMaster, Ownable2Step {

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
