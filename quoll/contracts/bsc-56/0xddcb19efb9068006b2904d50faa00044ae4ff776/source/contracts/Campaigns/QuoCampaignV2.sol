// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "@shared/lib-contracts/contracts/Dependencies/ManagerUpgradeable.sol";

import "../Interfaces/IRewards.sol";

contract QuoCampaignV2 is ManagerUpgradeable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    uint256 public constant PRECISION = 1e12;
    uint256 public constant X_PRECISION = 100;

    IERC20 public quo;
    IRewards public qWomRewardPool;

    uint256 public initialUnlockRate;

    uint256 public a;
    uint256 public maxReleaseRate;
    uint256 public minReleaseRate;

    uint256 public startTime;
    uint256 public lockTime;

    struct UserInfo {
        uint256 amount;
        uint256 initialA;
        uint256 baseA;
        uint256 claimedAmount;
    }

    mapping(address => UserInfo) public userInfoMap;

    // events
    event UserQuoAdded(address indexed _user, uint256 _amount);
    event QuoAdded(address indexed _operator, uint256 _number, uint256 _amount);
    event QuoClaimed(address indexed _user, uint256 _amount);

    function initialize() public initializer {
        __ManagerUpgradeable_init();
    }

    function setParams(
        address _quo,
        address _qWomRewardPool,
        uint256 _initialUnlockRate,
        uint256 _a,
        uint256 _maxReleaseRate,
        uint256 _minReleaseRate,
        uint256 _lockTime
    ) external onlyManager {
        require(address(quo) == address(0), "already set!");

        quo = IERC20(_quo);
        qWomRewardPool = IRewards(_qWomRewardPool);

        initialUnlockRate = _initialUnlockRate;

        a = _a;
        maxReleaseRate = _maxReleaseRate;
        minReleaseRate = _minReleaseRate;

        lockTime = _lockTime;
    }

    function addUsers(
        address[] memory _users,
        uint256[] memory _amounts,
        uint256[] memory _baseAs
    ) external onlyManager {
        require(address(quo) != address(0), "not setup");
        require(startTime == 0, "already started!");

        require(
            _users.length == _amounts.length &&
                _users.length == _baseAs.length &&
                _users.length > 0,
            "invalid rewards"
        );

        uint256 totalAmount = 0;
        for (uint256 i = 0; i < _users.length; i++) {
            address user = _users[i];
            uint256 amount = _amounts[i];
            require(amount > 0, "invalid amount");

            UserInfo storage userInfo = userInfoMap[user];
            require(userInfo.amount == 0, "invalid user");

            userInfo.initialA = qWomRewardPool.getUserAmountTime(user);

            userInfo.amount = amount;
            uint256 baseA = _baseAs[i];
            require(baseA > 0, "invalid baseA");
            userInfo.baseA = baseA;

            totalAmount = totalAmount.add(amount);

            emit UserQuoAdded(user, amount);
        }

        quo.safeTransferFrom(msg.sender, address(this), totalAmount);

        emit QuoAdded(msg.sender, _users.length, totalAmount);
    }

    function start() external onlyManager {
        require(address(quo) != address(0), "not set!");
        require(startTime == 0, "already started");

        startTime = block.timestamp;
    }

    function getReleaseRate(address _user) public view returns (uint256) {
        UserInfo memory userInfo = userInfoMap[_user];
        uint256 x = qWomRewardPool
            .getUserAmountTime(_user)
            .sub(userInfo.initialA)
            .mul(X_PRECISION)
            .div(userInfo.baseA);
        uint256 releaseRate = a
            .mul(6)
            .mul(x)
            .mul(x)
            .div(X_PRECISION)
            .div(X_PRECISION)
            .add(minReleaseRate);
        if (releaseRate > maxReleaseRate) {
            releaseRate = maxReleaseRate;
        }
        return releaseRate;
    }

    function getClaimableAmount(address _user) public view returns (uint256) {
        // not started yet
        if (startTime == 0) {
            return 0;
        }

        UserInfo memory userInfo = userInfoMap[_user];
        if (userInfo.amount == 0) {
            return 0;
        }
        if (userInfo.claimedAmount >= userInfo.amount) {
            return 0;
        }

        uint256 initialUnlockAmount = userInfo
            .amount
            .mul(initialUnlockRate)
            .div(PRECISION);

        uint256 releasedAmount;
        // 0 if still locked
        if (block.timestamp <= startTime + lockTime) {
            releasedAmount = 0;
        } else {
            uint256 x = qWomRewardPool
                .getUserAmountTime(_user)
                .sub(userInfo.initialA)
                .mul(X_PRECISION)
                .div(userInfo.baseA);
            uint256 p = a
                .mul(x)
                .mul(x + 100)
                .mul(2 * x + 100)
                .div(X_PRECISION)
                .div(X_PRECISION)
                .div(X_PRECISION);
            uint256 daysPassed = block.timestamp.sub(startTime).div(1 days);
            p = p.add(daysPassed.mul(minReleaseRate));
            if (p > daysPassed.mul(maxReleaseRate)) {
                p = daysPassed.mul(maxReleaseRate);
            }
            if (p > PRECISION) {
                p = PRECISION;
            }
            releasedAmount = p.mul(userInfo.amount).div(PRECISION);
        }

        uint256 claimableAmount = initialUnlockAmount.add(releasedAmount).sub(
            userInfo.claimedAmount
        );

        if (claimableAmount > userInfo.amount.sub(userInfo.claimedAmount)) {
            claimableAmount = userInfo.amount.sub(userInfo.claimedAmount);
        }
        return claimableAmount;
    }

    function claim() external {
        uint256 claimableAmount = getClaimableAmount(msg.sender);
        if (claimableAmount == 0) {
            return;
        }

        quo.safeTransfer(msg.sender, claimableAmount);
        userInfoMap[msg.sender].claimedAmount = userInfoMap[msg.sender]
            .claimedAmount
            .add(claimableAmount);

        emit QuoClaimed(msg.sender, claimableAmount);
    }
}
