// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./FlockMiniPoolV2.sol";
import {RbacUpgradeable} from "./RbacUpgradeable.sol";

/**
 * @title FlockPoolManagerV2Upgradeable
 * @notice  The contract for managing the FlockPool
 * @author Ryon
 */
contract FlockPoolManagerV2Upgradeable is RbacUpgradeable {
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// LIBRARIES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    using EnumerableSet for EnumerableSet.AddressSet;
    using ConfigHelperV2 for FlockConfigV2;
    //////////////////////////////////////////////////////////////////////
    ////////////////////////// CONSTANTS /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public rewardPercentageBase;
    uint256 public sigmaModificationCooldown;
    uint256 public poolDelegatorCoolDown;
    uint256 public poolClaimCoolDown;

    //////////////////////////////////////////////////////////////////////
    ////////////////////////// VARIABLES /////////////////////////////////
    //////////////////////////////////////////////////////////////////////
    uint256 public minSigma;
    uint256 public maxSigma;
    uint256 public protocolFeePercentage;
    uint256 public claimableRewardPercentage;
    mapping(address => address) public miniPools;
    mapping(address => address) public poolToUser;
    mapping(address => uint256) public poolSigmas;
    mapping(address => uint256) public lastSigmaModificationTimestamp;
    mapping(address => EnumerableSet.AddressSet) private delegatorToPools;

    EnumerableSet.AddressSet private pools;
    EnumerableSet.AddressSet private users;
    FlockConfigV2 private config;

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
        __RbacUpgradeable_init(msg.sender);

        config = FlockConfigV2(_flockConfig);
        rewardPercentageBase = 1000000;
        minSigma = 0;
        maxSigma = 1000000;
        sigmaModificationCooldown = 1 days;
        protocolFeePercentage = 10000;
        poolDelegatorCoolDown = 1 days;
        claimableRewardPercentage = 100000;
    }


    //////////////////////////////////////////////////////////////////////
    ////////////////////////// ADMIN OPERATIONS //////////////////////////
    //////////////////////////////////////////////////////////////////////
    /**
     * @notice Set the minSigma
     * @param _minSigma The minSigma value
     */
    function setMinSigma(uint256 _minSigma) external onlyProtocolManager {
        minSigma = _minSigma;
        emit SetMinSigma(_minSigma);
    }

    /**
     * @notice Set the maxSigma
     * @param _maxSigma The maxSigma value
     */
    function setMaxSigma(uint256 _maxSigma) external onlyProtocolManager {
        maxSigma = _maxSigma;
        emit SetMaxSigma(_maxSigma);
    }

    /**
     * @notice Set the protocol fee percentage
     * @param _protocolFeePercentage The protocol fee percentage
     */
    function setProtocolFeePercentage(uint256 _protocolFeePercentage) external onlyProtocolManager {
        protocolFeePercentage = _protocolFeePercentage;
    }

    /**
     * @notice Set the claimable reward percentage
     * @param _claimableRewardPercentage The claimable reward percentage
     */
    function setClaimableRewardPercentage(uint256 _claimableRewardPercentage) external onlyProtocolManager {
        claimableRewardPercentage = _claimableRewardPercentage;
    }

    /**
     * @notice Set the sigma modification cooldown
     * @param _sigmaModificationCooldown The sigma modification cooldown
     */
    function setSigmaModificationCooldown(uint256 _sigmaModificationCooldown) external onlyProtocolManager {
        sigmaModificationCooldown = _sigmaModificationCooldown;
    }

    /**
     * @notice Set the config address
     * @param _config The config address
     */
    function setConfig(address _config) external onlyDaoAdmin {
        config = FlockConfigV2(_config);
    }


    /**
     * @notice Set the pool delegator cool down
     * @param _poolDelegatorCoolDown The pool delegator cool down
     */
    function setDelegatorCoolDown(uint256 _poolDelegatorCoolDown) external onlyProtocolManager {
        poolDelegatorCoolDown = _poolDelegatorCoolDown;
    }

    /**
     * @notice Set the pool claim cool down
     * @param _poolClaimCoolDown The pool claim cool down
     */
    function setClaimCoolDown(uint256 _poolClaimCoolDown) external onlyProtocolManager {
        poolClaimCoolDown = _poolClaimCoolDown;
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
        if(poolSigmas[_user]>maxSigma){
            return maxSigma;
        }
        if(poolSigmas[_user]<minSigma){
            return minSigma;
        }
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
     * @notice Get the claimable reward percentage
     */
    function getClaimableRewardPercentage() external view returns (uint256) {
        return claimableRewardPercentage;
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


    /**
     * @notice Get cool down
     */
    function getDelegationCoolDown() external view returns (uint256) {
        return poolDelegatorCoolDown;
    }

    /**
     * @notice Get cool down
     */
    function getClaimCoolDown() external view returns (uint256) {
        return poolClaimCoolDown;
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
        FlockMiniPoolV2 pool = new FlockMiniPoolV2(user, address(config));
        config.getGmFlockToken().setRegistered(address(pool), true);
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
        require(!config.getMainManager().isNodePoolFreezing(user), "Node pool is freezing");
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
