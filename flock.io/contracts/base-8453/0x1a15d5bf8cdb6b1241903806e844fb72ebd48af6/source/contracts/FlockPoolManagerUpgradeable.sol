// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./FlockMiniPool.sol";
import {AdminUpgradeable} from "./AdminUpgradeable.sol";

/**
 * @title FlockPoolManagerUpgradeable
 * @notice  The contract for managing the FlockPool
 * @author Ryon
 */
contract FlockPoolManagerUpgradeable is AdminUpgradeable {
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// LIBRARIES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    using EnumerableSet for EnumerableSet.AddressSet;
    using ConfigHelper for FlockConfig;
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTANTS /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public rewardPercentageBase;
    uint256 public sigmaModificationCooldown;

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// VARIABLES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public minSigma;
    uint256 public maxSigma;
    uint256 public protocolFeePercentage;
    mapping(address => address) public miniPools;
    mapping(address => address) public poolToUser;
    mapping(address => uint256) public poolSigmas;
    mapping(address => uint256) public lastSigmaModificationTimestamp;
    mapping(address => EnumerableSet.AddressSet) private delegatorToPools;

    EnumerableSet.AddressSet private pools;
    EnumerableSet.AddressSet private users;
    FlockConfig private config;

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// EVENTS ////////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    event SetMinSigma(uint256 minSigma);
    event SetMaxSigma(uint256 maxSigma);
    event SetPoolSigma(address indexed user, uint256 sigma);
    event CreateMiniPool(address indexed user, address pool, uint256 sigma);

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTRUCTORS //////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Initialize the contract
     * @param _flockConfig The flock config address
     */
    function initialize(address _flockConfig) public initializer {
        __AdminUpgradeable_init(msg.sender);

        config = FlockConfig(_flockConfig);
        rewardPercentageBase = 1000000;
        minSigma = 0;
        maxSigma = 1000000;
        sigmaModificationCooldown = 1 days;
        protocolFeePercentage = 10000;
    }


    //////////////////////////////////////////////////////////////////////
    ////////////////////////// ADMIN OPERATIONS //////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Set the minSigma
     * @param _minSigma The minSigma value
     */
    function setMinSigma(uint256 _minSigma) external onlyAdmin {
        minSigma = _minSigma;
        emit SetMinSigma(_minSigma);
    }

    /**
     * @notice Set the maxSigma
     * @param _maxSigma The maxSigma value
     */
    function setMaxSigma(uint256 _maxSigma) external onlyAdmin {
        maxSigma = _maxSigma;
        emit SetMaxSigma(_maxSigma);
    }

    /**
     * @notice Set the protocol fee percentage
     * @param _protocolFeePercentage The protocol fee percentage
     */
    function setProtocolFeePercentage(uint256 _protocolFeePercentage) external onlyAdmin {
        protocolFeePercentage = _protocolFeePercentage;
    }

    /**
     * @notice Set the sigma modification cooldown
     * @param _sigmaModificationCooldown The sigma modification cooldown
     */
    function setSigmaModificationCooldown(uint256 _sigmaModificationCooldown) external onlyAdmin {
        sigmaModificationCooldown = _sigmaModificationCooldown;
    }

    /**
     * @notice Set the config address
     * @param _config The config address
     */
    function setConfig(address _config) external onlyAdmin {
        config = FlockConfig(_config);
    }

    ///////////////////////////////////////////////////////////////////////
    /////////////////////////////// ACCESSORS /////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    /**
     * @notice Get the mini pool address of the user
     * @param user The user address
     */
    function getMiniPool(address user) external view returns (address) {
        return miniPools[user];
    }

    /**
     * @notice Get the sigma value of the user
     * @param _user The user address
     */
    function getPoolSigma(address _user) external view returns (uint256) {
        return poolSigmas[_user];
    }

    /**
     * @notice Is the address a pool
     * @param _pool The pool address
     */
    function isPool(address _pool) public view returns (bool) {
        return pools.contains(_pool);
    }

    /**
     * @notice Get the percentage base
     */
    function getPercentageBase() external view returns (uint256) {
        return rewardPercentageBase;
    }

    /**
     * @notice Get the protocol fee percentage
     */
    function getProtocolFeePercentage() external view returns (uint256) {
        return protocolFeePercentage;
    }

    /**
     * @notice Get pools
     */
    function getPools() external view returns (address[] memory) {
        return pools.values();
    }

    /**
     * @notice Get users
     */
    function getUsers() external view returns (address[] memory) {
        return users.values();
    }

    /**
     * @notice Get user at index
     */
    function getUserAt(uint256 index) external view returns (address) {
        return users.at(index);
    }

    /**
     * @notice Get users length
     */
    function getUsersLength() external view returns (uint256) {
        return users.length();
    }

    /**
     * @notice Get delegator pools
     * @param _delegator The delegator address
     */
    function getDelegatorPools(address _delegator) external view returns (address[] memory) {
        return delegatorToPools[_delegator].values();
    }

    //////////////////////////////////////////////////////////////////////
    ///////////////////////// USER OPERATIONS ////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Create a mini pool
     * @param sigma The sigma value of the mini pool
     */
    function createMiniPool(uint256 sigma) external returns (address) {
        address user = msg.sender;
        require(sigma >= minSigma, "Sigma too low");
        require(sigma <= maxSigma, "Sigma too high");
        require(miniPools[user] == address(0), "Already created");
        FlockMiniPool pool = new FlockMiniPool(user, address(config));
        miniPools[user] = address(pool);
        poolToUser[address(pool)] = user;
        poolSigmas[user] = sigma;
        pools.add(address(pool));
        users.add(user);
        emit CreateMiniPool(user, address(pool), sigma);
        return address(pool);
    }

    function setMiniPoolSigma(uint256 sigma) external {
        address user = msg.sender;
        require(sigma >= minSigma, "Sigma too low");
        require(sigma <= maxSigma, "Sigma too high");
        require(miniPools[user] != address(0), "Not created");
        require(block.timestamp - lastSigmaModificationTimestamp[user] > sigmaModificationCooldown, "Too soon to modify again");
        lastSigmaModificationTimestamp[user] = block.timestamp;
        poolSigmas[user] = sigma;
        emit SetPoolSigma(user, sigma);
    }

    //////////////////////////////////////////////////////////////////////
    //////////////////////////// CALLBACKS ///////////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Callback when adding delegator to the pool
     * @param _delegator The delegator address
     */
    function addDelegatorToPool(address _delegator) external {
        require(isPool(msg.sender), "Not a pool");
        delegatorToPools[_delegator].add(msg.sender);
    }
}
