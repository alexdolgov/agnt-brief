// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "../../contracts/system/ProtocolGovernor.sol";
import "../../contracts/system/ProtocolModule.sol";

interface IHyperlock {
    function stake(address _lpToken, uint256 _amount, uint256 _lock) external;
    function unstake(address _lpToken, uint256 _amount) external;
}

enum LockPeriod {
    OneWeek,
    OneMonth,
    ThreeMonth,
    SixMonth,
    OneYear
}

struct StakeInfo {
    address staker;
    uint256 totalAmount;
    LockPeriod stakePeriod;
    uint256 stakeStart;
    bool withdrawn;
}

event Stake(address indexed user, uint256 indexed id, uint256 amount, LockPeriod lockperiod, uint256 stakeStart);

event Unstake(address indexed user, uint256 indexed id, uint256 amount, LockPeriod lockperiod, uint256 stakeEnd);

contract StakeIdentifiers is ProtocolModule, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // address of juiceWeth LP token
    address juiceWethLpToken;
    // address of hyperlock contract
    IHyperlock public hyperlockContract;

    //global nonce to use for identifier
    uint256 nextAvailableStakeNonce;
    // mapping of stakeID to StakeInfo
    mapping(uint256 => StakeInfo) public stakeMapping;

    bool forceUnlocked;

    uint256 public minStakeAmount;

    mapping(address => uint256) public userTotalStaked;

    constructor(address _protocolGovernor, address _hyperlock, address _juiceLP) ProtocolModule(_protocolGovernor) {
        hyperlockContract = IHyperlock(_hyperlock);
        juiceWethLpToken = _juiceLP;
    }

    /* what we need to do in this function:
    =======================================
    1. add a new StakeInfo object to the stakeMapping (id -> stakeinfo)
    2. transfer the users funds to this contract
    3. make stake call to hyperlock contract
    4. emit event that we can track, including orderID, user, amount, timelock
    */

    function stakeLPTokens(uint256 _amount, LockPeriod _lockPeriod) external nonReentrant returns (address, uint256) {
        require(_amount > 0, "cannot stake zero tokens");
        require(!forceUnlocked, "cannot stake when force unlock enabled");
        require(_amount >= minStakeAmount, "cannot stake less than min stake amount");

        StakeInfo memory _stakeInfo = StakeInfo({
            staker: msg.sender,
            totalAmount: _amount,
            stakePeriod: _lockPeriod,
            stakeStart: block.timestamp,
            withdrawn: false
        });

        uint256 _availableNonce = nextAvailableStakeNonce;

        // add stake order to the mapping @ key = nextAvailableNonce
        stakeMapping[_availableNonce] = _stakeInfo;

        // transfer the users lp tokens to this contract
        IERC20(juiceWethLpToken).safeTransferFrom(msg.sender, address(this), _amount);

        // approve hyperlock so they can take tokens from this contract
        IERC20(juiceWethLpToken).approve(address(hyperlockContract), _amount);
        // make call the hyperlock in order to stake the users lp tokens
        hyperlockContract.stake(juiceWethLpToken, _amount, 0);

        emit Stake(msg.sender, _availableNonce, _amount, _lockPeriod, block.timestamp);

        // increment nextAvailableNonce so the nonce cannot be repeated
        nextAvailableStakeNonce += 1;

        userTotalStaked[msg.sender] += _amount;

        return (msg.sender, _availableNonce);
    }

    /* what we need to do in this function
    ======================================
    1) pass in an order id that represents the stake order that is being withdrawn
    2) make sure the deposit has reached maturity
    3) make sure the staker who created the stake order is the same address unstaking
    4) make sure the withdrawn field of the order is not set to true
    5) set the withdrawn field of the order to true
    6) unstake the totalAmount stored in the order
    7) send the totalAmount to the user
    8) emit an event to represent which order was withdrawn, including ID, lockPeriod, user, and amount
    */

    function unstakeLP(uint256 _orderID) external nonReentrant returns (address, uint256) {
        StakeInfo storage _stakeInfo = stakeMapping[_orderID];

        // make sure msg.sender is same address as the staker stored in the stake order
        require(_stakeInfo.staker == msg.sender, "cannot unstake another users tokens!");
        // ensure this stake has not been withdrawn yet, preventing double spend
        require(!_stakeInfo.withdrawn, "this deposit has already been withdrawn!");

        // make sure the stake for that order has matured beyond given stake period
        uint256 canUnstakeAt = _stakeInfo.stakeStart + getTime(_stakeInfo.stakePeriod);
        require((block.timestamp >= canUnstakeAt) || forceUnlocked, "stake has not reached withdraw maturity");

        // set the withdraw field to TRUE
        _stakeInfo.withdrawn = true;

        // unstake the order
        hyperlockContract.unstake(juiceWethLpToken, _stakeInfo.totalAmount);
        // transfer to the user
        IERC20(juiceWethLpToken).safeTransfer(msg.sender, _stakeInfo.totalAmount);

        userTotalStaked[msg.sender] -= _stakeInfo.totalAmount;

        emit Unstake(msg.sender, _orderID, _stakeInfo.totalAmount, _stakeInfo.stakePeriod, block.timestamp);

        return (msg.sender, _orderID);
    }

    function restake(uint256 _orderID, LockPeriod _newLockPeriod) external nonReentrant returns (address, uint256) {
        // checks on exisiting stake
        StakeInfo storage _stakeInfo = stakeMapping[_orderID];

        require(_stakeInfo.staker == msg.sender, "cannot restake for another user");
        require(!forceUnlocked, "can not restake when force unlock is in effect");
        require(!_stakeInfo.withdrawn, "cannot restake deposit that has already been withdrawn");

        uint256 canUnstakeAt = _stakeInfo.stakeStart + getTime(_stakeInfo.stakePeriod);
        require(block.timestamp >= canUnstakeAt, "deposit has not matured");

        // set to true so order cannot be withdrawn/restaked again
        _stakeInfo.withdrawn = true;

        emit Unstake(msg.sender, _orderID, _stakeInfo.totalAmount, _stakeInfo.stakePeriod, block.timestamp);

        StakeInfo memory _newStakeInfo = StakeInfo({
            staker: msg.sender,
            totalAmount: _stakeInfo.totalAmount,
            stakePeriod: _newLockPeriod,
            stakeStart: block.timestamp,
            withdrawn: false
        });

        uint256 _availableNonce = nextAvailableStakeNonce;

        stakeMapping[_availableNonce] = _newStakeInfo;

        // increment nonce
        nextAvailableStakeNonce += 1;

        // emit stake event for new stake order/time period
        emit Stake(msg.sender, _availableNonce, _newStakeInfo.totalAmount, _newStakeInfo.stakePeriod, block.timestamp);

        return (msg.sender, _availableNonce);
    }

    function getTime(LockPeriod _lockPeriod) private pure returns (uint256) {
        if (_lockPeriod == LockPeriod.OneWeek) return 7 days;
        if (_lockPeriod == LockPeriod.OneMonth) return 30 days;
        if (_lockPeriod == LockPeriod.ThreeMonth) return 90 days;
        if (_lockPeriod == LockPeriod.SixMonth) return 180 days;
        if (_lockPeriod == LockPeriod.OneYear) return 365 days;
        revert("Invalid lock period");
    }

    function setMinStakeAmount(uint256 _amount) external onlyOwner {
        minStakeAmount = _amount;
    }

    function setForceUnlocked(bool _force) external onlyOwner {
        forceUnlocked = _force;
    }
}
