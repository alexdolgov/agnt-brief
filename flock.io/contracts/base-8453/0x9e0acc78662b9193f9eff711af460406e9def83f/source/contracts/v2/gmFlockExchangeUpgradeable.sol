// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./config/ConfigHelperV2.sol";
import "./config/FlockConfigV2.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IMintBurnableERC20} from "../interfaces/IMintBurnableERC20.sol";
import {RbacUpgradeable} from "./RbacUpgradeable.sol";

contract gmFlockExchangeUpgradeable is RbacUpgradeable {
    using ConfigHelperV2 for FlockConfigV2;

    FlockConfigV2 public config;

    uint256 t0;
    uint256 t1;
    uint256 epsilon; // epsilon is input from 0 to 1 multiplied by base
    uint256 base;  // should be 10000
    uint256 public currentLockInfoId;
    uint256 public protocolFee; // protocol fee in basis points

    struct LockInfo {
        uint256 id;             // Unique lock-up ID
        uint256 flockAmount;    // Locked FLOCK amount
        uint256 gmFlockAmount;   // Calculated wFLOCK amount
        uint256 unlockTime;     // Timestamp when funds can be withdrawn
        address beneficiary;    // Address to receive the gmFLOCK tokens
    }

    mapping(address => uint256[]) public userLocks; // User lock-ups
    mapping(uint256 => LockInfo) public lockInfoMap;// User lock-ups
    mapping(address => bool) public registered;
    mapping(address => mapping(uint256 => uint256)) public lockIndexMap;

    event FlockExchanged(address indexed user, uint256 flockAmount, uint256 gmFlockAmount, uint256 unlockTime, uint256 id);
    event gmFlockClaimed(address indexed user, uint256 flockAmount, uint256 gmFlockAmount, uint256 id);

    function initialize(address _flockConfig) public initializer {
        __RbacUpgradeable_init(msg.sender);
        config = FlockConfigV2(_flockConfig);
        protocolFee = 0;
    }

    /**
     * @notice Set the FlockConfig contract address.
     * @param _flockConfig The address of the FlockConfig contract.
     */
    function setFlockConfig(address _flockConfig) external onlyAdmin {
        config = FlockConfigV2(_flockConfig);
    }

    /**
     * @notice Set the exchange parameters.
     * @param _t0 The base lock-up period in seconds.
     * @param _t1 The maximum lock-up period in seconds.
     * @param _epsilon The exchange rate multiplier in basis points.
     * @param _base The base exchange rate in basis points.

     */
    function setExchangeParams(uint256 _t0,uint256 _t1,uint256 _epsilon,uint256 _base) external onlyDaoAdmin {
        require(_t0 < _t1, "t0 must be less than t1");
        t0 = _t0;
        t1 = _t1;
        epsilon = _epsilon;
        base = _base;
    }


    /**
     * @notice Set the protocol fee in basis points.
     * @param _protocolFee The protocol fee in basis points.
     */
    function setProtocolFee(uint256 _protocolFee) external onlyDaoAdmin {
        require(_protocolFee <= 10000, "Invalid protocol fee");
        protocolFee = _protocolFee;
    }


    /**
     * @notice Get the exchange multiplier for a given lock-up period.
     * @param lockPeriod Lock-up duration in seconds.
     * @return multiplier Exchange multiplier in basis points .
     */
    function getExchangeMultiplier(uint256 lockPeriod) public view returns (uint256) {
        if (lockPeriod <= t0) {
            return base;
        } else {
            if (lockPeriod > t1) {
                lockPeriod = t1;
            }
            return (epsilon * (lockPeriod - t0)) / t1+base;
        }
    }

    /**
     * @notice Exchange FLOCK for gmFLOCK with a lock-up period.
     * @param flockAmount Amount of FLOCK tokens to lock.
     * @param lockPeriod Lock-up duration in seconds.
     * @param beneficiary Address to receive the gmFLOCK tokens, will only be used when msg sender not admin.
     */
    function exchangeFlock(uint256 flockAmount, uint256 lockPeriod,address beneficiary) external {
        if(!isAdmin(msg.sender)){
            beneficiary = msg.sender;
        }
        require(flockAmount > 0, "Amount must be greater than zero");
        require(lockPeriod > 0, "Lock-up period must be greater than zero");

        uint256 multiplier = getExchangeMultiplier(lockPeriod);
        uint256 gmFlockAmount = (flockAmount * multiplier) / base;
        uint256 unlockTime = block.timestamp + lockPeriod;

        uint256 fee = (flockAmount * protocolFee) / 10000;

        lockInfoMap[currentLockInfoId] = LockInfo(currentLockInfoId,flockAmount-fee, gmFlockAmount, unlockTime, beneficiary);
        userLocks[msg.sender].push(currentLockInfoId);
        lockIndexMap[msg.sender][currentLockInfoId] = userLocks[msg.sender].length - 1;
        currentLockInfoId++;

        require(config.getFlockToken().transferFrom(msg.sender, address(this), flockAmount), "FLOCK transfer failed");
        require(config.getFlockToken().transfer(config.flockTokenAddress(), fee), "Fee transfer failed");
        config.getGmFlockToken().mint(beneficiary, gmFlockAmount);

        emit FlockExchanged(msg.sender, flockAmount, gmFlockAmount, unlockTime, currentLockInfoId-1);
    }

    /**
     * @notice Claim all unlocked gmFLOCK before a given timestamp.
     * @param timestamp The timestamp before which tokens can be claimed.
     */
    function claimUnlockedFlock(uint256 timestamp) external {
        require(timestamp <= block.timestamp, "Cannot claim for future time");

        uint256[] storage locks = userLocks[msg.sender];
        uint256 totalFlock = 0;
        uint256 totalgmFlock = 0;
        uint256 i = 0;

        // First pass: Collect total claimable amounts and clean up storage
        while (i < locks.length) {
            LockInfo storage lock = lockInfoMap[locks[i]];
            if (lock.unlockTime <= timestamp) {
                totalFlock += lock.flockAmount;
                totalgmFlock += lock.gmFlockAmount;

                emit gmFlockClaimed(msg.sender, lock.flockAmount, lock.gmFlockAmount, lock.id);

                // Remove the claimed entry by swapping with the last element
                locks[i] = locks[locks.length - 1];
                locks.pop();
            } else {
                i++;
            }
        }

        require(totalFlock > 0, "No claimable tokens");

        // Second pass: Burn and transfer in a single step AFTER state updates
        config.getGmFlockToken().burn(msg.sender, totalgmFlock);
        require(config.getFlockToken().transfer(msg.sender, totalFlock), "FLOCK transfer failed");
    }

    /**
     * @notice Claim all unlocked gmFLOCK before a given timestamp.
     * @param ids The lock ids to claim.
     */
    function claimUnlockedFlockByIds(uint256[] calldata ids) external {
        uint256[] storage locks = userLocks[msg.sender];
        uint256 totalFlock = 0;
        uint256 totalgmFlock = 0;

        uint256 i = 0;
        while (i < ids.length) {
            uint256 lockId = ids[i];
            uint256 lockIndex = lockIndexMap[msg.sender][ids[i]];
            require(lockIndex < locks.length, "Invalid lock index");
            require(locks[lockIndex] == lockId, "Invalid lock ID at index");

            LockInfo storage lock = lockInfoMap[lockId];
            require(lock.beneficiary == msg.sender, "Not the beneficiary");
            require(lock.unlockTime <= block.timestamp, "Cannot claim for future time");

            totalFlock += lock.flockAmount;
            totalgmFlock += lock.gmFlockAmount;

            emit gmFlockClaimed(msg.sender, lock.flockAmount, lock.gmFlockAmount, lock.id);

            // Remove claimed entry by swapping with the last element
            locks[lockIndex] = locks[locks.length - 1];

            uint256 lastIndex = locks.length - 1;
            uint256 lastLock = locks[lastIndex];

            if (lockIndex != lastIndex) {
                locks[lockIndex] = lastLock;
                lockIndexMap[msg.sender][lastLock] = lockIndex;
            }
            locks.pop();
            delete lockIndexMap[msg.sender][lockId];
            i++;
        }


        require(totalFlock > 0, "No claimable tokens");

        // Second pass: Burn and transfer in a single step AFTER state updates
        config.getGmFlockToken().burn(msg.sender, totalgmFlock);
        require(config.getFlockToken().transfer(msg.sender, totalFlock), "FLOCK transfer failed");
    }


    /**
     * @notice Get the total amount of FLOCK and gmFLOCK that is unlocked before a given timestamp.
     * @param timestamp The timestamp before which unlocked tokens are checked.
     * @return totalFlock The sum of unlocked FLOCK.
     * @return totalgmFlock The sum of unlocked gmFLOCK.
     */
    function getUnlockedAmounts(uint256 timestamp) external view returns (uint256 totalFlock, uint256 totalgmFlock) {
        uint256[] memory locks = userLocks[msg.sender];

        for (uint256 i = 0; i < locks.length; i++) {
            LockInfo memory lock = lockInfoMap[locks[i]];
            if (lock.unlockTime <= timestamp) {
                totalFlock += lock.flockAmount;
                totalgmFlock += lock.gmFlockAmount;
            }
        }
    }

    /**
     * @notice Get all active lock-ups for a user.
     * @param user The address of the user.
     * @return locks An array of all the user's lock-up information.
     */
    function getUserLocks(address user) external view returns (uint256[] memory) {
        return userLocks[user];
    }
}