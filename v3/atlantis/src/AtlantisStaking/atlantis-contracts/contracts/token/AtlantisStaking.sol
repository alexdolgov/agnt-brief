// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12;

import "@openzeppelin/contracts-v3/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-v3/math/SafeMath.sol";

interface IExtendedERC20 is IERC20 {
    function getOwner() external view returns (address);

    function getMaxSupply() external view returns (uint256);

    function lock(uint256 _amount) external;

    function redeem(uint256 _amount) external;

    function burnFrom(address account, uint256 amount) external;
}

contract AtlantisStaking {
    using SafeMath for uint256;

    struct LockInfo {
        uint256 amount;
        uint256 unlockTime;
        uint256 day;
        uint256 rewardAmount;
    }

    mapping(address => LockInfo[]) public userLock;

    uint256 public minRedeemDays;
    uint256 public maxRedeemDays;
    uint256 public minRedeemDuration;
    uint256 public maxRedeemDuration;
    uint256 public minRedeemRatio;
    uint256 public maxRedeemRatio;

    // Precision factor for ratio calculations (4 decimal places)
    uint256 private constant RATIO_PRECISION = 10000;

    IExtendedERC20 private token;
    IExtendedERC20 private escrowToken;

    constructor(
        IExtendedERC20 _token,
        IExtendedERC20 _escrowToken,
        uint256 _minRedeemDays,
        uint256 _maxRedeemDays,
        uint256 _minRedeemRatio,
        uint256 _maxRedeemRatio
    ) {
        token = _token;
        escrowToken = _escrowToken;

        require(
            _minRedeemDays < _maxRedeemDays,
            "AtlantisStaking: min days must be less than max days"
        );
        require(
            _minRedeemRatio < _maxRedeemRatio,
            "AtlantisStaking: min ratio must be less than max ratio"
        );
        require(
            _maxRedeemRatio <= 100,
            "AtlantisStaking: max ratio cannot exceed 100"
        );

        minRedeemDays = _minRedeemDays;
        maxRedeemDays = _maxRedeemDays;
        minRedeemDuration = minRedeemDays * 1 days;
        maxRedeemDuration = maxRedeemDays * 1 days;
        minRedeemRatio = _minRedeemRatio;
        maxRedeemRatio = _maxRedeemRatio;
    }

    function lock(uint256 _amount) public {
        require(
            token.transferFrom(msg.sender, address(this), _amount),
            "AtlantisStaking: token transfer failed"
        );
        token.approve(address(escrowToken), _amount);
        escrowToken.lock(_amount);
        escrowToken.transfer(msg.sender, _amount);
    }

    function initializeRedeem(uint256 _amount, uint256 _days) public {
        require(
            _days >= minRedeemDays && _days <= maxRedeemDays,
            "AtlantisStaking: lock time not valid"
        );
        require(
            escrowToken.balanceOf(msg.sender) >= _amount,
            "AtlantisStaking: insufficient balance"
        );
        escrowToken.transferFrom(msg.sender, address(this), _amount);
        uint256 unlockTime = block.timestamp + (_days * 1 days);

        // Get ratio with 4 decimal places precision
        uint256 ratio = getRedeemRatio(_days);
        // Calculate reward amount, adjusting for the precision factor
        uint256 rewardAmount = _amount.mul(ratio).div(100 * RATIO_PRECISION);

        LockInfo memory info = LockInfo(
            _amount,
            unlockTime,
            _days,
            rewardAmount
        );

        userLock[msg.sender].push(info);
    }

    function finalizeRedeem(uint256 index) public {
        require(
            index < userLock[msg.sender].length,
            "AtlantisStaking: index not valid"
        );
        LockInfo memory info = userLock[msg.sender][index];
        require(
            block.timestamp >= info.unlockTime,
            "AtlantisStaking: lock time not expired"
        );

        escrowToken.redeem(info.amount);

        uint256 AQUAresidual = info.amount.sub(info.rewardAmount);

        if (AQUAresidual > 0) {
            token.approve(address(this), AQUAresidual);
            token.burnFrom(address(this), AQUAresidual);
        }

        _deleteRedeemEntry(index, msg.sender);

        token.transfer(msg.sender, info.rewardAmount);
    }

    /**
     * @notice Calculate redeem ratio with increased precision
     * @param _days Number of days for redemption
     * @return Redeem ratio with 4 decimal places (multiplied by RATIO_PRECISION)
     */
    function getRedeemRatio(uint256 _days) public view returns (uint256) {
        if (_days >= maxRedeemDays) return maxRedeemRatio.mul(RATIO_PRECISION);
        else if (_days == minRedeemDays)
            return minRedeemRatio.mul(RATIO_PRECISION);

        // Calculate with higher precision to avoid truncation
        uint256 numerator = (_days.sub(minRedeemDays))
            .mul(maxRedeemRatio.sub(minRedeemRatio))
            .mul(RATIO_PRECISION);

        uint256 denominator = maxRedeemDays.sub(minRedeemDays);

        // Return the high-precision ratio
        return
            minRedeemRatio.mul(RATIO_PRECISION).add(numerator.div(denominator));
    }

    function _deleteRedeemEntry(uint256 index, address user) internal {
        userLock[user][index] = userLock[user][userLock[user].length - 1];
        userLock[user].pop();
    }

    function getUserRedeemLength(address user) public view returns (uint256) {
        return userLock[user].length;
    }

    function getUserRedeem(
        address user,
        uint256 index
    )
        public
        view
        returns (uint256 amount, uint256 rewardAmount, uint256 endTime)
    {
        require(
            index < userLock[user].length,
            "AtlantisStaking: index not valid"
        );
        LockInfo memory info = userLock[user][index];
        amount = info.amount;
        endTime = info.unlockTime;
        rewardAmount = info.rewardAmount;
    }
}
