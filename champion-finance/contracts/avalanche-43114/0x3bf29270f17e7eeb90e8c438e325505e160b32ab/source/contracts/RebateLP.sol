// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./utils/HasFactory.sol";
import "./utils/HasRouter.sol";
import "./utils/HasBlacklist.sol";
import "./utils/HasPOL.sol";
import "./utils/CanPause.sol";
import "./owner/Operator.sol";
import "./interfaces/ITreasury.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IUniswapV2Factory.sol";
import "./interfaces/IOracle.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./lib/SafeMath.sol";

contract RebateLP is Operator, HasBlacklist, CanPause, HasPOL, HasFactory, HasRouter {
    using SafeMath for uint256;

    struct Asset {
        bool isAdded;
        address[] path;// token to side lp token
    }

    struct VestingSchedule {
        uint256 amount;
        uint256 rewardAmount;
        uint256 period;
        uint256 end;
        uint256 claimed;
        uint256 rewardClaimed;
        uint256 lastRewardClaimed;
        uint256 lastClaimed;
    }

    IERC20 public MainToken;
    IERC20 public SideToken;
    IERC20 public RewardToken;
    mapping (address => Asset) public assets;
    mapping(address => mapping(uint256 => uint256)) public userAmountInDays;
    mapping(uint256 => uint256) public amountInDays;
    mapping (address => VestingSchedule) public vesting;

    uint256 public maxAmountInDays;
    uint256 public maxUserAmountInDays;
    uint256 public bondVesting = 10 days;
    uint256 public discountPercent = 10;
    uint256 public rewardPerLP;
    uint256 public startDay;
    uint256 public endDay;

    uint256 public totalVested = 0;
    uint256 public constant secondInDay = 1 days;

    event Bond(address token, address sender, uint256 amount, 
        uint256 discountAmount, uint256 sideTokenAmount, 
        uint256 LPTokenAmount, uint256 totalVested, uint256 rewardAmount);
    /*
     * ---------
     * MODIFIERS
     * ---------
     */
    
    // Only allow a function to be called with a bondable asset
    modifier onlyAsset(address token) {
        require(assets[token].isAdded, "RebateLP: token is not a bondable asset");
        _;
    }

    /*
     * ------------------
     * EXTERNAL FUNCTIONS
     * ------------------
     */

    // Initialize parameters
    constructor(address mainToken, address sideToken, address rewardToken, 
        uint256 _rewardPerLP, uint256 _startDay, uint256 _maxAmountInDays, uint256 _maxUserAmountInDays) {
        MainToken = IERC20(mainToken);
        SideToken = IERC20(sideToken);
        RewardToken = IERC20(rewardToken);
        rewardPerLP = _rewardPerLP;
        startDay = _startDay;
        endDay = _startDay + secondInDay;
        maxAmountInDays = _maxAmountInDays;
        maxUserAmountInDays = _maxUserAmountInDays;
    }

    // Bond asset for discounted MainToken at bond rate
    function bond(address token, uint256 amount) external onlyAsset(token) onlyOpen notInBlackList(msg.sender) {
        require(amount > 0, "RebateLP: invalid bond amount");
        if (block.timestamp > endDay) {
            uint256 times = (block.timestamp - endDay)/secondInDay;
            startDay = times * secondInDay + endDay;
            endDay = startDay + secondInDay;
        }

        _verifyEnoughMainToken(token, amount);

        IERC20(token).transferFrom(msg.sender, address(this), amount);
        uint256 discountAmount = amount * (100 + discountPercent)/100;
        uint256 amountForLP = discountAmount/2;
        uint256 sideTokenAmount;
        if (token == address(SideToken)) {
            sideTokenAmount = amountForLP;
        } else {
            sideTokenAmount = _buySideToken(token, amountForLP);
        }

        uint256 LPTokenAmount = _addLPFromSideToken(sideTokenAmount);

        if (block.timestamp >= startDay && block.timestamp <= endDay) {
            amountInDays[startDay] = amountInDays[startDay] + LPTokenAmount;
            userAmountInDays[msg.sender][startDay] = userAmountInDays[msg.sender][startDay] + LPTokenAmount;
        }
        
        require(amountInDays[startDay] <= maxAmountInDays, "RebateLP: over max amount in days");
        require(userAmountInDays[msg.sender][startDay] <= maxUserAmountInDays, "RebateLP: over max user amount in days");

        _claimVested(msg.sender);
        _claimRewards(msg.sender);
        
        uint256 rewardAmount = _getRewardAmountByLP(LPTokenAmount);
        VestingSchedule storage schedule = vesting[msg.sender];
        schedule.amount = schedule.amount - schedule.claimed + LPTokenAmount;
        schedule.rewardAmount = schedule.rewardAmount - schedule.rewardClaimed + rewardAmount;
        schedule.period = bondVesting;
        schedule.end = block.timestamp + bondVesting;
        schedule.claimed = 0;
        schedule.rewardClaimed = 0;
        schedule.lastClaimed = block.timestamp;
        schedule.lastRewardClaimed = block.timestamp;
        totalVested += LPTokenAmount;
        
        emit Bond(token, msg.sender, amount, discountAmount, sideTokenAmount, LPTokenAmount, totalVested, rewardAmount);
    }

    // Claim available MainToken rewards from bonding
    function claimRewards() external {
        _claimRewards(msg.sender);
    }

    function claimVested() external {
        _claimVested(msg.sender);
    }

    /*
     * --------------------
     * RESTRICTED FUNCTIONS
     * --------------------
     */
    function setDiscountPercent(uint256 _discountPercent) external onlyOperator {
        discountPercent = _discountPercent;
    }

    function setBondVesting(uint256 _bondVesting) external onlyOperator {
        bondVesting = _bondVesting;
    }

    function setStartDay(uint256 _startDay) external onlyOperator {
        startDay = _startDay;
        endDay = _startDay + secondInDay;
    }

    function setRewardPerLP(uint256 _rewardPerLP) external onlyOperator {
        rewardPerLP = _rewardPerLP;
    }

    // Set main token
    function setMainToken(address mainToken) external onlyOperator {
        MainToken = IERC20(mainToken);
    }

    // Set side token
    function setSideToken(address sideToken) external onlyOperator {
        SideToken = IERC20(sideToken);
    }

    // Set reward token
    function setRewardToken(address rewardToken) external onlyOperator {
        RewardToken = IERC20(rewardToken);
    }

    function setMaxUserAmountInDays(uint256 _maxUserAmountInDays) external onlyOperator {
        maxUserAmountInDays = _maxUserAmountInDays;
    }

    function setmaxAmountInDays(uint256 _maxAmountInDays) external onlyOperator {
        maxAmountInDays = _maxAmountInDays;
    }

    // Set bonding parameters of token
    function setAsset(
        address token,
        bool isAdded,
        address[] memory path
    ) external onlyOperator {
        assets[token].isAdded = isAdded;
        assets[token].path = path;
    }

    /*
     * ------------------
     * INTERNAL FUNCTIONS
     * ------------------
     */
    function _verifyEnoughMainToken(address token, uint256 amount) internal view {
        uint256 discountAmount = amount * (100 + discountPercent)/100;
        uint256 amountForLP = discountAmount/2;
        uint256 _amountBDesired;
        if (token == address(SideToken)) {
            _amountBDesired = amountForLP;
        } else {
            Asset memory asset = assets[token];
            uint256[] memory tokenAmount = ROUTER.getAmountsOut(amountForLP, asset.path);
            _amountBDesired = tokenAmount[asset.path.length - 1];
        }

        address pairAddress = FACTORY.getPair(address(MainToken), address(SideToken));
        IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        if (pair.token0() == address(SideToken)) {
            uint256 reserve2 = reserve0;
            reserve0 = reserve1;
            reserve1 = reserve2;
        }
        uint256 _amountADesired = _amountBDesired * reserve0 / reserve1;
        uint256 mainBalance = MainToken.balanceOf(address(this));

        require(mainBalance >= _amountADesired, "RebateLP: not enough balance");
    }

    function _getRewardAmountByLP(uint256 _lpAmount) internal view returns(uint256) {
        return _lpAmount.mul(rewardPerLP).div(10**6);
    }

    function _claimRewards(address account) internal {
        VestingSchedule storage schedule = vesting[account];
        if (schedule.rewardAmount == 0 || schedule.rewardAmount == schedule.rewardClaimed) return;
        if (block.timestamp <= schedule.lastRewardClaimed || schedule.lastRewardClaimed >= schedule.end) return;

        uint256 claimable = claimableRewardToken(account);
        if (claimable == 0) return;

        schedule.rewardClaimed += claimable;
        schedule.lastRewardClaimed = block.timestamp > schedule.end ? schedule.end : block.timestamp;
        
        RewardToken.transfer(account, claimable);
    }

    function _claimVested(address account) internal {
        VestingSchedule storage schedule = vesting[account];
        if (schedule.amount == 0 || schedule.amount == schedule.claimed) return;

        uint256 claimable = claimableMainToken(account);
        if (claimable == 0) return;

        schedule.claimed += claimable;
        schedule.lastClaimed = block.timestamp > schedule.end ? schedule.end : block.timestamp;
        totalVested -= claimable;
        address LpAddress = FACTORY.getPair(address(MainToken), address(SideToken));
        IERC20(LpAddress).transfer(account, claimable);
    }

    function _getLpAmount(address _tokenA, address _tokenB, uint256 _amountBDesired) internal view returns (uint256) {
        address pairAddress = FACTORY.getPair(_tokenA, _tokenB);
        IUniswapV2Pair pair = IUniswapV2Pair(pairAddress);
        uint256 totalSupply = pair.totalSupply();
        (uint256 reserve0, uint256 reserve1, ) = pair.getReserves();
        address token0 = pair.token0();
        uint256 _amountADesired = _amountBDesired * reserve0 / reserve1;
        if (_tokenB == token0) {
            _amountADesired = _amountBDesired;
            _amountBDesired = _amountADesired * reserve1 / reserve0;
        }

        uint256 liquidityForLpA = _amountADesired.mul(totalSupply).div(reserve0);
        uint256 liquidityForLpB = _amountBDesired.mul(totalSupply).div(reserve1);

        if (liquidityForLpA > liquidityForLpB) {
            return liquidityForLpB;
        } 
        
        return liquidityForLpA;
    }

    function _buySideToken(address token, uint256 amountIn) internal returns(uint256) {
        IERC20(token).approve(address(ROUTER), amountIn);

        address[] memory path = assets[token].path;

        uint[] memory amounts = ROUTER.swapExactTokensForTokens(
            amountIn,
            0,
            path,
            address(this),
            block.timestamp
        );

        return amounts[path.length - 1];
    }

    function _addLPFromSideToken(uint256 sideTokenAmount) internal returns(uint256) {
        uint256 mainBalance = MainToken.balanceOf(address(this));
        uint256 mainTokenAmount = mainBalance;
        MainToken.approve(address(ROUTER), mainTokenAmount);
        SideToken.approve(address(ROUTER), sideTokenAmount);

        (, , uint liquidity) = ROUTER.addLiquidity(
            address(MainToken),
            address(SideToken),
            mainTokenAmount,
            sideTokenAmount,
            0,
            0,
            address(this),
            block.timestamp
        );

        return liquidity;
    }

    /*
     * --------------
     * VIEW FUNCTIONS
     * --------------
     */
    function getEstimateLpAmountAddLp(
        address token,
        uint256 amount
    ) external view returns (uint256) {
        uint256 discountAmount = amount * (100 + discountPercent)/100;
        uint256 amountForLP = discountAmount/2;
        uint256 _amountBDesired;
        if (token == address(SideToken)) {
            _amountBDesired = amountForLP;
        } else {
            Asset memory asset = assets[token];
            uint256[] memory tokenAmount = ROUTER.getAmountsOut(amountForLP, asset.path);
            _amountBDesired = tokenAmount[asset.path.length - 1];
        }
        address _tokenA = address(MainToken);
        address _tokenB = address(SideToken);

        return _getLpAmount(_tokenA, _tokenB, _amountBDesired);
    }

    // Get claimable vested MainToken for account
    function claimableMainToken(address account) public view returns (uint256) {
        VestingSchedule memory schedule = vesting[account];
        if (block.timestamp <= schedule.lastClaimed || schedule.lastClaimed >= schedule.end) return 0;
        if (block.timestamp >= schedule.end) {
            return schedule.amount - schedule.claimed;
        }
        
        uint256 duration = (block.timestamp > schedule.end ? schedule.end : block.timestamp) - schedule.lastClaimed;
        return schedule.amount * duration / schedule.period;
    }

    function claimableRewardToken(address account) public view returns (uint256) {
        VestingSchedule memory schedule = vesting[account];
        if (block.timestamp <= schedule.lastRewardClaimed || schedule.lastRewardClaimed >= schedule.end) return 0;
        if (block.timestamp >= schedule.end) {
            return schedule.rewardAmount - schedule.rewardClaimed;
        }

        uint256 duration = (block.timestamp > schedule.end ? schedule.end : block.timestamp) - schedule.lastRewardClaimed;
        return schedule.rewardAmount * duration / schedule.period;
    }

    function emergencyWithdraw(IERC20 token, uint256 amnt) external onlyOperator {
        token.transfer(POL, amnt);
    }
}