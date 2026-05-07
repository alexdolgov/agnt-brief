// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}

library DateTime {
    /*
     *  Date and Time utilities for ethereum contracts
     *
     */

    function getNowDateTime() public view returns (uint32) {
        uint256 ts = block.timestamp + 8 hours;
        return uint32(ts / 1 days);
    }

    function tsToDateTime(uint256 ts) public pure returns (uint32) {
        return uint32((ts + 8 hours) / 1 days);
    }
}

interface IERC20 {
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

    function mint(uint256 amount) external returns (uint256);

    function destroy(uint256 amount) external returns (uint256);

    function getPrice() external view returns (uint256);
}

interface IUniswapV2Pair {
    function totalSupply() external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address owner) external view returns (uint256);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}

interface ISwapRouter {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function getAmountsOut(
        uint amountIn,
        address[] calldata path
    ) external view returns (uint[] memory amounts);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
}

abstract contract Ownable {
    address internal _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        address msgSender = msg.sender;
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == msg.sender, "!o");
        _;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "n0");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

contract PublicReward {
    constructor(address USDT, address HD) {
        IERC20(USDT).approve(msg.sender, ~uint256(0));
        IERC20(HD).approve(msg.sender, ~uint256(0));
    }
}

contract BlackHoleUpgrad is Ownable, ReentrancyGuard {
    struct User {
        Team team;
        uint8 level; // 等级
        uint64 latestLevelPowerTs; // 最新更新时间
        uint64 latestLPPowerTs; // 最新更新时间
        uint64 latestClaimTs; // 最新领取时间
        uint256 claimedHDReward; // 已领取HD奖励
        uint256 claimedUSDTReward; // 已领取USDT奖励
        uint256 bourtUSDT; // 已购买USDT数
        mapping(uint32 => uint256) teamReward; // 团队BH奖励
        mapping(uint32 => uint256) lpPower; // lp算力
        mapping(uint32 => uint256) levelPower; // 等级算力
        mapping(uint32 => uint256) dailyTransaction; // 每日交易额
    }

    struct Team {
        address add;
        address[] redirects; // 直推
        address left; // 左节点
        address right; //  右节点
        address middle; //  中间节点
        address top; // 父节点
        address leader; // 领导
        uint16 floor; // 所在层
        uint16 reachFloor; // 最下面满层的该层层数
        uint32 nextCount; // 直接子节点数
        uint32 childCount; // 子节点数
        uint32 index; // 所在层的序号
        uint32 latestIndex; // 上次滑落所在父节点序号
        uint64 initTime; // 初始化时间
        mapping(uint32 => mapping(uint16 => uint32)) floorChildInfo; // 下面每层的直接子节信息
    }

    IERC20 USDT;
    IERC20 HD;

    PublicReward public publicReward;

    ISwapRouter router;
    IUniswapV2Pair pair;
    mapping(uint256 => mapping(uint256 => address)) public floorUsers;
    mapping(address => User) users;
    mapping(bytes32 => bool) verifiedMessage;

    // 每一级所需要的投资额
    uint256[] public levelPrice;

    uint256[] public levelUSDTLimit;

    uint256 latestdailyTotalLevelPowerTs;
    uint256 latestdailyTotalLPPowerTs;
    mapping(uint256 => uint256) public dailyTotalLPPower;
    mapping(uint256 => uint256) public dailyTotalLevelPower;
    mapping(uint256 => uint256) public dailyPublicUSDTReward;
    mapping(uint256 => uint256) public dailyPublicHDReward;
    mapping(uint256 => uint256) public dailyLPPowerValue;

    mapping(uint256 => bool) public isPublicRewardEveryDay;
    uint256 public publicRewardEveryDayCount;
    uint256 public publicRewardEveryDayBase;
    // 每日交易额上限
    uint256 dailyTransactionLimit;

    // must
    address private delegateContract;
    address private delegateUpgradContract;
    address deadAddress;

    function _publicRewardEveryday(uint256 nowDate) private {
        if (isPublicRewardEveryDay[nowDate]) {
            return;
        }
        publicRewardEveryDayCount += 1;
        isPublicRewardEveryDay[nowDate] = true;
        uint256 amount = (publicRewardEveryDayBase * 52) / 10000;
        publicRewardEveryDayBase = publicRewardEveryDayBase - amount;
        (, uint256 HDTotalBalance) = _getPairTokenAmount();
        uint256 LPAmount;
        if (amount > HDTotalBalance) {
            LPAmount = pair.balanceOf(address(this)) / 2;
        } else {
            LPAmount = (pair.totalSupply() * amount) / HDTotalBalance;
        }
        (uint USDTAmount, uint HDAmount) = router.removeLiquidity(
            address(USDT),
            address(HD),
            LPAmount,
            0,
            0,
            address(this),
            block.timestamp
        );
        uint256 _toLP = (USDTAmount * 666) / 1000;
        uint256 _toBuy = USDTAmount - _toLP;
        _addLiquidity(_toLP);
        HDAmount += _buyHD(_toBuy);
        _addPubilcHDReward(HDAmount, nowDate);
    }

    function _invite(address add, address _leader) private {
        (bool success, ) = delegateContract.delegatecall(
            abi.encodeWithSignature(
                "inviteProxy(address,address)",
                add,
                _leader
            )
        );
        require(success, "invite failed");
    }

    function _subUserLPPower(User storage user, uint256 power) private {
        uint32 nowDateTime = DateTime.getNowDateTime();
        _updateUserLPPowerBefore(user, nowDateTime);
        if (user.lpPower[nowDateTime] > power) {
            user.lpPower[nowDateTime] -= power;
        } else {
            user.lpPower[nowDateTime] = 0;
        }
    }

    function _addUserLPPower(User storage user, uint256 power) private {
        uint32 nowDateTime = DateTime.getNowDateTime();
        _updateUserLPPowerBefore(user, nowDateTime);
        user.lpPower[nowDateTime] += power;
    }

    function _addUserLevelPower(User storage user, uint256 power) private {
        uint32 nowDateTime = DateTime.getNowDateTime();
        _updateUserLevelPowerBefore(user, nowDateTime);
        user.levelPower[nowDateTime] += power;
    }

    function _subUserLevelPower(User storage user, uint256 power) private {
        uint32 nowDateTime = DateTime.getNowDateTime();
        _updateUserLevelPowerBefore(user, nowDateTime);
        if (user.levelPower[nowDateTime] > power) {
            user.levelPower[nowDateTime] -= power;
        } else {
            user.levelPower[nowDateTime] = 0;
        }
    }

    function _updateUserLPPowerBefore(
        User storage user,
        uint256 nowDateTime
    ) private {
        _updateDailyTotalLPPowerBefore(nowDateTime);
        uint32 latestday = DateTime.tsToDateTime(user.latestLPPowerTs);
        uint256 latestTs2 = user.latestLPPowerTs + 1 days;
        uint32 latestday2 = DateTime.tsToDateTime(latestTs2);
        uint256 yesterday = DateTime.tsToDateTime(block.timestamp - 1 days);
        uint256 value = _updateLPPowerValue(yesterday);
        if (latestday < nowDateTime && user.lpPower[latestday] > 0) {
            (uint256 _totalLPReward, ) = _getPublicRewardAmountByDate(
                user.team.add,
                latestday
            );
            while (user.lpPower[latestday2] == 0 && latestday2 <= nowDateTime) {
                if (dailyLPPowerValue[latestday] == 0) {
                    dailyLPPowerValue[latestday] = value;
                }
                value = dailyLPPowerValue[latestday];

                if ((_totalLPReward * value) / 1e18 > user.lpPower[latestday]) {
                    user.lpPower[latestday2] = 0;
                } else {
                    user.lpPower[latestday2] =
                        user.lpPower[latestday] -
                        ((_totalLPReward * value) / 1e18);
                }
                latestday = latestday2;
                (, _totalLPReward) = _getPublicRewardAmountByDate(
                    user.team.add,
                    latestday
                );
                latestTs2 += 1 days;
                latestday2 = DateTime.tsToDateTime(latestTs2);
            }
        }
        if (
            DateTime.tsToDateTime(block.timestamp) >
            DateTime.tsToDateTime(user.latestLPPowerTs)
        ) {
            user.latestLPPowerTs = _getTs();
        }
    }

    function _updateUserLevelPowerBefore(
        User storage user,
        uint256 nowDateTime
    ) private {
        _updateDailyTotalLevelPowerBefore(nowDateTime);
        uint32 latestday = DateTime.tsToDateTime(user.latestLevelPowerTs);
        uint256 latestTs2 = user.latestLevelPowerTs + 1 days;
        uint32 latestday2 = DateTime.tsToDateTime(latestTs2);
        if (latestday < nowDateTime && user.levelPower[latestday] > 0) {
            (, uint256 _totalLevelReward) = _getPublicRewardAmountByDate(
                user.team.add,
                latestday
            );
            while (
                user.levelPower[latestday2] == 0 && latestday2 <= nowDateTime
            ) {
                if (_totalLevelReward > user.levelPower[latestday]) {
                    user.levelPower[latestday2] = 0;
                } else {
                    user.levelPower[latestday2] =
                        user.levelPower[latestday] -
                        _totalLevelReward;
                }

                latestday = latestday2;
                (, _totalLevelReward) = _getPublicRewardAmountByDate(
                    user.team.add,
                    latestday
                );
                latestTs2 += 1 days;
                latestday2 = DateTime.tsToDateTime(latestTs2);
            }
        }
        if (
            DateTime.tsToDateTime(block.timestamp) >
            DateTime.tsToDateTime(user.latestLevelPowerTs)
        ) {
            user.latestLevelPowerTs = _getTs();
        }
    }

    function _updateDailyTotalLPPowerBefore(uint256 nowDateTime) private {
        uint256 latestday = DateTime.tsToDateTime(latestdailyTotalLPPowerTs);
        uint256 latestTs2 = latestdailyTotalLPPowerTs + 1 days;
        uint256 latestday2 = DateTime.tsToDateTime(latestTs2);
        uint256 yesterday = DateTime.tsToDateTime(block.timestamp - 1 days);
        uint256 value = _updateLPPowerValue(yesterday);
        if (latestday < nowDateTime && dailyTotalLPPower[latestday] > 0) {
            while (
                dailyTotalLPPower[latestday2] == 0 && latestday2 <= nowDateTime
            ) {
                if (dailyLPPowerValue[latestday] == 0) {
                    dailyLPPowerValue[latestday] = value;
                }
                value = dailyLPPowerValue[latestday];
                if (
                    (dailyPublicHDReward[latestday] * value) / 1e18 >
                    dailyTotalLPPower[latestday]
                ) {
                    dailyTotalLPPower[latestday2] = 0;
                } else {
                    dailyTotalLPPower[latestday2] =
                        dailyTotalLPPower[latestday] -
                        ((dailyPublicHDReward[latestday] * value) / 1e18);
                }
                latestday = latestday2;
                latestTs2 += 1 days;
                latestday2 = DateTime.tsToDateTime(latestTs2);
            }
        }
        if (
            DateTime.tsToDateTime(block.timestamp) >
            DateTime.tsToDateTime(latestdailyTotalLPPowerTs)
        ) {
            latestdailyTotalLPPowerTs = block.timestamp;
        }
    }

    function _updateDailyTotalLevelPowerBefore(uint256 nowDateTime) private {
        uint256 latestday = DateTime.tsToDateTime(latestdailyTotalLevelPowerTs);
        uint256 latestTs2 = latestdailyTotalLevelPowerTs + 1 days;
        uint256 latestday2 = DateTime.tsToDateTime(latestTs2);

        if (latestday < nowDateTime && dailyTotalLevelPower[latestday] > 0) {
            while (
                dailyTotalLevelPower[latestday2] == 0 &&
                latestday2 <= nowDateTime
            ) {
                if (
                    dailyPublicUSDTReward[latestday] <
                    dailyTotalLevelPower[latestday]
                ) {
                    dailyTotalLevelPower[latestday2] =
                        dailyTotalLevelPower[latestday] -
                        dailyPublicUSDTReward[latestday];
                } else {
                    dailyTotalLevelPower[latestday2] = 0;
                }
                latestday = latestday2;
                latestTs2 += 1 days;
                latestday2 = DateTime.tsToDateTime(latestTs2);
            }
        }
        if (
            DateTime.tsToDateTime(block.timestamp) >
            DateTime.tsToDateTime(latestdailyTotalLevelPowerTs)
        ) {
            latestdailyTotalLevelPowerTs = block.timestamp;
        }
    }

    function _updateLPPowerValue(uint256 dateTime) private returns (uint256) {
        if (dailyLPPowerValue[dateTime] == 0) {
            uint256 value = _calculateLPPowerValue();
            dailyLPPowerValue[dateTime] = value;
        }
        return dailyLPPowerValue[dateTime];
    }

    function _addDailyTotalLPPower(uint256 power) private {
        uint256 nowDateTime = DateTime.getNowDateTime();
        _updateDailyTotalLPPowerBefore(nowDateTime);
        dailyTotalLPPower[nowDateTime] += power;
    }

    function _subDailyTotalLPPower(uint256 power) private {
        uint256 nowDateTime = DateTime.getNowDateTime();
        _updateDailyTotalLPPowerBefore(nowDateTime);
        dailyTotalLPPower[nowDateTime] -= power;
    }

    function _addDailyTotalLevelPower(uint256 power) private {
        uint256 nowDateTime = DateTime.getNowDateTime();
        _updateDailyTotalLevelPowerBefore(nowDateTime);
        dailyTotalLevelPower[nowDateTime] += power;
    }

    function _subDailyTotalLevelPower(uint256 power) private {
        uint256 nowDateTime = DateTime.getNowDateTime();
        _updateDailyTotalLevelPowerBefore(nowDateTime);
        dailyTotalLevelPower[nowDateTime] -= power;
    }

    function _getUserPower(
        User storage user
    ) private view returns (uint256 lpPower, uint256 levelPower) {
        uint32 latestDate1 = DateTime.tsToDateTime(user.latestLPPowerTs);
        uint32 latestDate2 = DateTime.tsToDateTime(user.latestLevelPowerTs);
        return (user.lpPower[latestDate1], user.levelPower[latestDate2]);
    }

    function _buyHD(uint256 amount) private returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(USDT);
        path[1] = address(HD);
        uint256 HDBalance = HD.balanceOf(address(this));
        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            0,
            path,
            address(this),
            block.timestamp
        );
        return HD.balanceOf(address(this)) - HDBalance;
    }

    function _getUSDTOut(uint256 HDAmount) private view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(HD);
        path[1] = address(USDT);
        uint256[] memory amounts = router.getAmountsOut(HDAmount, path);
        return amounts[1];
    }

    function _getHDOut(uint256 USDTAmount) private view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(USDT);
        path[1] = address(HD);
        uint256[] memory amounts = router.getAmountsOut(USDTAmount, path);
        return amounts[1];
    }

    function _addLiquidity(uint256 USDTAmount) private {
        address[] memory path = new address[](2);
        path[0] = address(USDT);
        path[1] = address(HD);
        uint256 HDAmount = _getHDOut(USDTAmount) * 2;
        HD.mint(HDAmount);
        (, uint256 b, ) = router.addLiquidity(
            address(USDT),
            address(HD),
            USDTAmount,
            ~uint256(0),
            0,
            0,
            address(this),
            block.timestamp
        );
        if (b < HDAmount) HD.destroy(HDAmount - b);
    }

    function _removeLiquidity(uint256 liquidity) private returns (uint, uint) {
        (uint a, uint b) = router.removeLiquidity(
            address(USDT),
            address(HD),
            liquidity,
            0,
            0,
            address(this),
            block.timestamp
        );
        HD.destroy(b);
        return (a, b);
    }

    function _addPubilcUSDTReward(uint256 amount, uint256 nowDateTime) private {
        dailyPublicUSDTReward[nowDateTime] += amount;
        require(USDT.transfer(address(publicReward), amount), "transfer error");
    }

    function _addPubilcHDReward(uint256 amount, uint256 nowDateTime) private {
        dailyPublicHDReward[nowDateTime] += amount;
        require(HD.transfer(address(publicReward), amount), "transfer error");
    }

    function _getTs() private view returns (uint64) {
        return uint64(block.timestamp);
    }

    function _income(
        uint256 price,
        address leader,
        uint256 nowDateTime
    ) private {
        User storage user = users[msg.sender];
        uint256 _totalLevelPower;
        uint256 _totalLPPower;

        uint256 publicRewardAmount = (price) / 10; // 全网
        _addPubilcUSDTReward(publicRewardAmount, nowDateTime);
        uint256 buyAmount = (price * 304) / 1000;
        uint256 teamHDAmount = _buyHD(buyAmount);
        uint256 addLPAmount = price - publicRewardAmount - buyAmount;
        _addLiquidity(addLPAmount);
        (_totalLPPower, _totalLevelPower) = _teamIncome(
            leader,
            teamHDAmount,
            price,
            user.level,
            nowDateTime
        );
        _totalLevelPower = (price - _totalLevelPower);
        _totalLPPower += price;
        _addDailyTotalLPPower(_totalLPPower);
        _addDailyTotalLevelPower(_totalLevelPower);
    }

    struct _Res {
        uint256 totalLPPower;
        uint256 totalLevelPower;
        uint256 addPubilcHDRewardAmount;
    }

    function _teamIncome(
        address leader,
        uint256 teamHDAmount,
        uint256 price,
        uint256 userLevel,
        uint256 nowDateTime
    ) private returns (uint256, uint256) {
        User storage leaderUser = users[leader];
        uint256 leaderReward = (teamHDAmount * 2) / 3;
        uint256 teamOtherReward = (teamHDAmount - leaderReward - 10) / 10;
        uint256 addPubilcHDRewardAmount;
        uint256 _totalLPPower;
        uint256 _totalLevelPower;
        if (leaderUser.level >= userLevel) {
            (addPubilcHDRewardAmount, _totalLevelPower) = _levelPowerIncome(
                leaderUser,
                leaderReward,
                _getUSDTOut(leaderReward),
                uint32(nowDateTime)
            );
            uint256 leaderLPPowerAmount = (price * 3) / 10;
            _addUserLPPower(leaderUser, leaderLPPowerAmount);
            _totalLPPower = leaderLPPowerAmount;
        } else {
            addPubilcHDRewardAmount = leaderReward;
        }
        _Res memory res = _teamOtherIncome(msg.sender, price, teamOtherReward);
        _totalLPPower += res.totalLPPower;
        _totalLevelPower += res.totalLevelPower;
        addPubilcHDRewardAmount += res.addPubilcHDRewardAmount;
        if (addPubilcHDRewardAmount > 0) {
            _addPubilcHDReward(addPubilcHDRewardAmount, nowDateTime);
        }
        return (_totalLPPower, _totalLevelPower);
    }

    function _teamOtherIncome(
        address _user,
        uint256 price,
        uint256 teamOtherReward
    ) private returns (_Res memory) {
        // ten level
        _Res memory res;
        uint i;
        User storage user = users[_user];
        uint256 level = user.level;
        // 烧伤数
        uint256 USDTOut = _getUSDTOut(teamOtherReward);
        uint32 nowDateTime = DateTime.getNowDateTime();
        while (user.team.top != address(0) && i < 10) {
            user = users[user.team.top];
            if (user.level >= level) {
                (
                    uint256 __addPubilcHDRewardAmount,
                    uint256 __totalLevelPower
                ) = _levelPowerIncome(
                        user,
                        teamOtherReward,
                        USDTOut,
                        nowDateTime
                    );
                res.addPubilcHDRewardAmount += __addPubilcHDRewardAmount;
                res.totalLevelPower += __totalLevelPower;
                _addUserLPPower(user, (price * 2) / 100);
                res.totalLPPower += (price * 2) / 100;
            } else {
                res.addPubilcHDRewardAmount += teamOtherReward;
            }
            ++i;
        }
        if (i < 10) {
            res.addPubilcHDRewardAmount += teamOtherReward * (10 - i);
        }
        return res;
    }

    function _calculateLPAmount(
        uint256 HDamount
    ) private view returns (uint256, uint256) {
        uint256 expectedUSDTAmount = _getUSDTOut(HDamount);
        uint256 lpTotalSupply = pair.totalSupply();
        (uint256 USDTTotalBalance, ) = _getPairTokenAmount();
        uint256 LPAmount = (lpTotalSupply * expectedUSDTAmount) /
            USDTTotalBalance;
        return (LPAmount, expectedUSDTAmount);
    }

    function _getPairTokenAmount()
        private
        view
        returns (uint256 USDTTotalBalance, uint256 HDTotalBalance)
    {
        (uint256 amount0, uint256 amount1, ) = pair.getReserves();
        address token0 = pair.token0();
        if (token0 == address(USDT)) {
            USDTTotalBalance = amount0;
            HDTotalBalance = amount1;
        } else {
            USDTTotalBalance = amount1;
            HDTotalBalance = amount0;
        }
    }

    function _calculateLPPowerValue() private view returns (uint256) {
        return _getUSDTOut(1 * 1e18) / 2;
    }

    function _levelPowerIncome(
        User storage user,
        uint256 amount,
        uint256 USDTOut,
        uint32 nowDateTime
    ) private returns (uint256, uint256) {
        uint256 _totalLevelPower;
        uint256 addPubilcHDRewardAmount;
        (, uint256 levelPower) = _getUserPower(user);
        //token
        if (USDTOut >= levelPower) {
            uint256 HDOut;
            if (levelPower > 1e18) {
                HDOut = _getHDOut(levelPower);
            }
            if (HDOut < amount) {
                addPubilcHDRewardAmount = amount - HDOut;

                amount = HDOut;
            }
            _subUserLevelPower(user, levelPower);
            _totalLevelPower = levelPower;
        } else {
            _subUserLevelPower(user, USDTOut);
            _totalLevelPower = USDTOut;
        }
        if (amount > 0) {
            user.teamReward[nowDateTime] += amount;
            require(HD.transfer(user.team.add, amount), "transfer error");
        }
        return (addPubilcHDRewardAmount, _totalLevelPower);
    }

    function _buy(uint256 amount) private {
        User storage user = users[msg.sender];
        uint256 userLevel = user.level;

        require(user.team.initTime > 0, "user not exist");
        require(userLevel >= 3, "level error");
        uint256 usdtBalance = USDT.balanceOf(msg.sender);
        require(usdtBalance >= amount, "balance error");
        require(
            USDT.transferFrom(msg.sender, address(this), amount),
            "transfer error"
        );
        user.bourtUSDT += amount;

        require(
            user.bourtUSDT <= levelUSDTLimit[userLevel] * 10 ** USDT.decimals(),
            "bourtUSDT error"
        );

        uint32 nowDateTime = DateTime.getNowDateTime();
        user.dailyTransaction[nowDateTime] += amount;

        require(
            user.dailyTransaction[nowDateTime] <=
                dailyTransactionLimit * 10 ** USDT.decimals(),
            "dailyTransaction error"
        );

        uint256 addLPAmount = (amount * 666) / 1000;
        _addLiquidity(addLPAmount);
        uint256 buyAmount = amount - addLPAmount;

        uint256 HDAmount = _buyHD(buyAmount);
        uint256 toUserAmount = (HDAmount * 8982) / 10000;
        require(HD.transfer(msg.sender, toUserAmount), "transfer error");
        _addPubilcHDReward(HDAmount - toUserAmount, nowDateTime);
        uint256 _totalLPPower;
        uint256 toUserLPPowerAmount = ((amount * 7) / 10);
        _totalLPPower += toUserLPPowerAmount;
        _addUserLPPower(user, toUserLPPowerAmount);

        User storage leader = users[user.team.leader];
        if (leader.level >= userLevel) {
            uint256 leaderLPPowerAmount = ((amount * 3) / 10);
            _totalLPPower += leaderLPPowerAmount;
            _addUserLPPower(leader, leaderLPPowerAmount);
        }
        uint256 otherTeamAmount = (amount * 1) / 10;
        uint i;
        while (user.team.top != address(0) && i < 10) {
            user = users[user.team.top];
            if (user.level >= userLevel) {
                _totalLPPower += otherTeamAmount;
                _addUserLPPower(user, otherTeamAmount);
            }
            ++i;
        }
        _addDailyTotalLPPower(_totalLPPower);
    }

    function _sell(uint256 amount) private returns (uint256) {
        User storage user = users[msg.sender];
        require(user.team.initTime > 0, "user not exist");
        uint256 HDBalance = HD.balanceOf(msg.sender);
        require(HDBalance >= amount, "balance error");
        require(user.level >= 1, "level error");
        require(
            HD.transferFrom(msg.sender, address(this), amount),
            "transfer error"
        );
        HD.destroy(amount);
        (uint256 LPAmount, uint256 expectedUSDTAmount) = _calculateLPAmount(
            amount
        );
        (uint256 USDTAmount, ) = _removeLiquidity(LPAmount);
        if (USDTAmount > expectedUSDTAmount) {
            USDTAmount = expectedUSDTAmount;
        }
        uint32 nowDateTime = DateTime.getNowDateTime();

        user.dailyTransaction[nowDateTime] += USDTAmount;
        require(
            user.dailyTransaction[nowDateTime] <=
                dailyTransactionLimit * 10 ** USDT.decimals(),
            "dailyTransaction error"
        );
        uint256 USDTToUserAmount = (USDTAmount * 85) / 100;
        require(USDT.transfer(msg.sender, USDTToUserAmount), "transfer error");
        uint256 USDTToBuy = USDTAmount - USDTToUserAmount;
        uint256 _toLP = (USDTToBuy * 666) / 1000;
        uint256 _toBuy = USDTToBuy - _toLP;
        _addLiquidity(_toLP);
        uint256 HDAmount = _buyHD(_toBuy);
        _addPubilcHDReward(HDAmount, nowDateTime);
        _publicRewardEveryday(nowDateTime);
        return USDTToUserAmount;
    }

    function _getPublicRewardAmountByDate(
        address _user,
        uint32 dateTime
    ) private view returns (uint256 _totalLPReward, uint256 _totalLevelReward) {
        User storage user = users[_user];
        _totalLPReward = (
            dailyTotalLPPower[dateTime] == 0
                ? 0
                : ((dailyPublicHDReward[dateTime] * user.lpPower[dateTime]) /
                    dailyTotalLPPower[dateTime])
        );
        _totalLevelReward = dailyTotalLevelPower[dateTime] == 0
            ? 0
            : ((dailyPublicUSDTReward[dateTime] * user.levelPower[dateTime]) /
                dailyTotalLevelPower[dateTime]);
    }

    function _getPublicRewardAmount(
        address _user
    ) private view returns (uint256 _totalLPReward, uint256 _totalLevelReward) {
        User storage user = users[_user];
        uint256 nowDateTime = DateTime.getNowDateTime();
        uint256 latestClaimday = DateTime.tsToDateTime(user.latestClaimTs);
        if (nowDateTime == latestClaimday) {
            return (0, 0);
        }
        uint256 ts;
        if (user.latestClaimTs == 0) {
            ts = user.team.initTime;
        } else {
            ts = user.latestClaimTs;
        }
        uint32 dateTime = DateTime.tsToDateTime(ts);

        while (dateTime < nowDateTime) {
            _totalLPReward += (
                dailyTotalLPPower[dateTime] == 0
                    ? 0
                    : ((dailyPublicHDReward[dateTime] *
                        user.lpPower[dateTime]) / dailyTotalLPPower[dateTime])
            );

            _totalLevelReward += dailyTotalLevelPower[dateTime] == 0
                ? 0
                : ((dailyPublicUSDTReward[dateTime] *
                    user.levelPower[dateTime]) /
                    dailyTotalLevelPower[dateTime]);
            ts += 1 days;
            dateTime = DateTime.tsToDateTime(ts);
        }
        return (_totalLPReward, _totalLevelReward);
    }

    function buy(uint256 amount) public {
        _buy(amount);
    }

    function sell(uint256 amount) public returns (uint256) {
        return _sell(amount);
    }

    // 升级
    function upgrade() public {
        User storage user = users[msg.sender];
        require(user.level < 12, "level error");
        address leader = user.team.leader;
        uint256 usdtBalance = USDT.balanceOf(msg.sender);
        uint256 price = levelPrice[user.level + 1] * 10 ** USDT.decimals();
        require(usdtBalance >= price, "balance error");
        require(
            USDT.transferFrom(msg.sender, address(this), price),
            "transfer error"
        );
        user.level += 1;
        uint256 nowDateTime = DateTime.getNowDateTime();
        // _updateDailyTotalLevelPowerBefore(nowDateTime);
        // _updateDailyTotalLPPowerBefore(nowDateTime);
        _addUserLevelPower(user, price);
        _addUserLPPower(user, price);
        _income(price, leader, nowDateTime);
        _publicRewardEveryday(nowDateTime);
    }

    function claim() public {
        User storage user = users[msg.sender];
        require(user.team.initTime > 0, "user not exist");
        uint256 _totalLPReward;
        uint256 _totalLevelReward;
        uint256 nowDateTime = DateTime.getNowDateTime();
        _updateUserLPPowerBefore(user, nowDateTime);
        _updateUserLevelPowerBefore(user, nowDateTime);
        (_totalLPReward, _totalLevelReward) = _getPublicRewardAmount(
            msg.sender
        );
        user.latestClaimTs = _getTs();
        if (_totalLPReward > 0) {
            user.claimedHDReward += _totalLPReward;
            HD.transferFrom(
                address(publicReward),
                address(this),
                _totalLPReward
            );
            HD.transfer(msg.sender, _totalLPReward);
        }
        if (_totalLevelReward > 0) {
            user.claimedUSDTReward += _totalLevelReward;
            USDT.transferFrom(
                address(publicReward),
                msg.sender,
                _totalLevelReward
            );
        }
        _publicRewardEveryday(nowDateTime);
    }
}
