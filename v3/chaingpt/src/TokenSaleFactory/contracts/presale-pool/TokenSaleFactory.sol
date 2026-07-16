// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "../interfaces/ITOKENPOOL.sol";   
import "./TokenSalepool.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

/// @title TokenSaleFactory
/// @notice Factory contract for creating and managing TokenSalepool instances
/// @dev Uses CREATE2 for deterministic pool addresses and AccessControl for permissions
contract TokenSaleFactory is AccessControl {
    /// @notice Array of all created pool addresses
    address[] public allPools;
    /// @notice Mapping from creator address to array of pools they created
    mapping(address => address[]) public creatorPools;
    /// @notice Role identifier for pool creators
    bytes32 public constant POOL_CREATOR_ROLE = keccak256("POOL_CREATOR_ROLE");

    /// @notice Emitted when a new token sale pool is created
    /// @param registeredBy Address that registered the pool
    /// @param token Address of the sale token
    /// @param pool Address of the created pool
    /// @param poolId Index of the pool in allPools array
    event TokenSalePoolCreated(
        address registeredBy,
        address indexed token,
        address indexed pool,
        uint256 poolId
    );

    /// @notice Custom errors for better gas efficiency and error handling
    error InvalidAddress();
    error InvalidDuration();
    error InvalidTotalTokens();
    error InvalidRefundTime();
    error InvalidRefundTimeWindow();
    error InvalidExcessRefundTime();
    error InvalidExcessRefundTimeWindow();
    error InvalidCurrencyDecimals();
    error PoolCreationFailed();
    error PoolDeploymentFailed();
    error InvalidOfferedCurrencyRate();

    /// @notice Initializes the factory contract
    /// @dev Grants DEFAULT_ADMIN_ROLE and POOL_CREATOR_ROLE to deployer
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(POOL_CREATOR_ROLE, msg.sender);
    }

    /// @notice Get the total number of pools created
    /// @return Total count of all created pools
    function allPoolsLength() public view returns (uint256) {
        return allPools.length;
    }

    /// @notice Get all pools created by a specific creator
    /// @param _creator Address of the pool creator
    /// @return Array of pool addresses created by the creator
    function getCreatedPools(
        address _creator
    ) public view returns (address[] memory) {
        return creatorPools[_creator];
    }

    /// @notice Get the number of pools created by a specific creator
    /// @param _creator Address of the pool creator
    /// @return Number of pools created by the creator
    function getCreatedPoolsLength(
        address _creator
    ) public view returns (uint256) {
        return creatorPools[_creator].length;
    } 

    /// @notice Register and create a new TokenSalepool for an IDO
    /// @dev Creates a new pool using CREATE2 for deterministic addresses
    /// @dev Requires POOL_CREATOR_ROLE to call
    /// @param _token Address of the ERC20 token being sold
    /// @param _duration Duration of the token sale in seconds
    /// @param _openTime Timestamp when the token sale starts
    /// @param _offeredCurrency Address of the currency used for purchases (address(0) for ETH)
    /// @param _offeredCurrencyDecimals Decimal places of the offered currency
    /// @param _refundTime Struct containing refund window (openTime and closeTime)
    /// @param _excessRefundTime Struct containing excess refund window (openTime and closeTime)
    /// @param _ownerWallet Address of the pool owner
    /// @param _signer Address authorized to sign purchase/claim/refund requests
    /// @param _companyTreasuryAddress Address where treasury fees are collected
    /// @param _totalTokensForDistribution Total tokens available for distribution in the sale
    /// @param _multiplierSalt Multiplier salt for weighted deposit calculations
    /// @param _offeredCurrencyRate Rate of the offered currency
    /// @return pool Address of the newly created TokenSalepool
    function registerPool(
        address _token,
        uint256 _duration,
        uint256 _openTime,
        address _offeredCurrency,
        uint256 _offeredCurrencyDecimals,
        ITokenPool.RefundTime memory _refundTime,
        ITokenPool.ExcessRefundTime memory _excessRefundTime,
        address _ownerWallet,
        address _signer,
        address _companyTreasuryAddress,
        uint256 _totalTokensForDistribution,
        uint256 _multiplierSalt,
        uint256 _offeredCurrencyRate
    ) external onlyRole(POOL_CREATOR_ROLE) returns (address pool) {
        // Validate addresses
        if (_token == address(0) ||
            _ownerWallet == address(0) ||
            _signer == address(0) ||
            _companyTreasuryAddress == address(0)) {
            revert InvalidAddress();
        }
        
        // Validate parameters
        if (_duration == 0) revert InvalidDuration();
        if (_totalTokensForDistribution == 0) revert InvalidTotalTokens();
        uint256 saleCloseTime = _openTime + _duration;
        if (_refundTime.openTime != 0) {
            // Must match TokenSalepool.initialize: refund window starts strictly after sale ends
            if (_refundTime.openTime <= saleCloseTime) revert InvalidRefundTime();
            if (_refundTime.closeTime < _refundTime.openTime) revert InvalidRefundTimeWindow();
        }
        if (_excessRefundTime.openTime <= saleCloseTime) revert InvalidExcessRefundTime();
        if (_excessRefundTime.closeTime < _excessRefundTime.openTime) revert InvalidExcessRefundTimeWindow();
        if (_offeredCurrencyDecimals == 0) revert InvalidCurrencyDecimals();

        if (_offeredCurrencyRate == 0) revert InvalidOfferedCurrencyRate();
        // Create pool using CREATE2
        pool = createPool(_token, msg.sender);
        if (pool == address(0)) revert PoolCreationFailed();

        // Initialize pool with provided parameters
        ITokenPool(pool).initialize(
            _token, 
            _duration, 
            _openTime, 
            _offeredCurrency, 
            _offeredCurrencyDecimals, 
            _refundTime,
            _excessRefundTime, 
            _ownerWallet, 
            _signer, 
            _companyTreasuryAddress, 
            _totalTokensForDistribution,
            _multiplierSalt,
            _offeredCurrencyRate
        );

        // Update state
        creatorPools[msg.sender].push(pool);
        allPools.push(pool);
        emit TokenSalePoolCreated(msg.sender, _token, pool, allPools.length - 1);
    }

    /// @notice Create a new TokenSalepool instance using CREATE2
    /// @param token Address of the sale token
    /// @param creator Address of the pool creator
    /// @return pool Address of the deployed pool contract
    /// @dev Uses CREATE2 for deterministic addresses based on creator, token, and pool index
    function createPool(address token, address creator) private returns (address pool) {
        bytes memory bytecode = type(TokenSalepool).creationCode;
        uint256 poolIndex = getCreatedPoolsLength(creator);
        bytes32 salt = keccak256(
            abi.encodePacked(creator, token, poolIndex)
        );
        assembly {
            pool := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        if (pool == address(0)) revert PoolDeploymentFailed();
    }
}
