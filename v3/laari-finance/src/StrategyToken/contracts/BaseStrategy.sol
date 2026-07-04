// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../openzeppelin/erc20/IERC20.sol";
import "../openzeppelin/erc20/SafeERC20.sol";
import "../openzeppelin/upgrable/Pausable.sol";
import "../openzeppelin/upgrable/Ownable.sol";
import "../openzeppelin/common/SafeMath.sol";
import "../openzeppelin/common/ReentrancyGuard.sol";
import "../openzeppelin/uniswapv2/interfaces/IUniswapV2Router02.sol";
import "../openzeppelin/uniswapv2/interfaces/IWETH.sol";
import "./UniHelper.sol";
import "./IStrategy.sol";

abstract contract BaseStrategy is Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    bool public isSameAssetDeposit;
    bool public isAutoComp; // this vault is purely for staking. eg. ETH-BTC staking vault.

    address public farmContractAddress; // address of farm, eg, PCS, Thugs etc.
    uint256 public pid; // pid of pool in farmContractAddress
    address public wantAddress;
    address public token0Address;
    address public token1Address;
    address public earnedAddress;

    address public uniRouterAddress; // uniswap, pancakeswap etc

    address public wethAddress;
    address public vaultAddress;
    address public tokenAddress;
    address public govAddress; // timelock contract
    bool public onlyGov = true;

    uint256 public lastHarvestBlock = 0;
    uint256 public lastEarnBlock = 0;
    uint256 public sharesTotal = 0;

    uint256 public controllerFee = 100; // 1%;
    uint256 public constant controllerFeeMax = 10000; // 100 = 1%
    uint256 public constant controllerFeeUL = 1000;
    address public rewardsAddress;

    uint256 public slippageFactor = 950; // 5% default slippage tolerance
    uint256 public constant slippageFactorUL = 995;

    address[] public earnedToToken0Path;
    address[] public earnedToToken1Path;

    // the second reward token
    // keep earned token, default = false
    // if keep the earned, earned1 token, no need to compound
    bool public keepEarnedToken;
    address public earned1Address;
    address[] public earned1ToEarnedPath;
    struct PoolInfo {
        uint256 accTokenPerShare;
    }
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt0;
        uint256 rewardDebt1;
    }
    PoolInfo public poolInfo0;
    PoolInfo public poolInfo1;
    mapping(address => UserInfo) public userInfo;

    function _vaultDeposit(uint256 _amount) internal virtual returns (uint256);
    function _vaultWithdraw(uint256 _amount) internal virtual;
    function _vaultHarvest() internal virtual;
    function vaultHarvest() internal virtual
    {
        // optimise for the harvest
        if (block.number > lastHarvestBlock) {
            _vaultHarvest();
            lastHarvestBlock = block.number;
        }
    }
    function _vaultEmergencyWithdraw() internal virtual;
    function _vaultEmergencyDeposit() internal virtual
    {
        _vaultDeposit(IERC20(wantAddress).balanceOf(address(this)));
    }
    function _vaultUserInfo() public virtual view returns (uint256);
    function _vaultPending() public virtual view returns (uint256, uint256);

    event SetSettings(
        uint256 _controllerFee,
        uint256 _slippageFactor
    );

    event SetGov(address _govAddress);
    event SetOnlyGov(bool _onlyGov);
    event SetUniRouterAddress(address _uniRouterAddress);
    event SetRewardsAddress(address _rewardsAddress);
    event Earn(uint256 lastEarnBlock, uint256 earnedAmt, uint256 sharesTotal, uint256 accInterestPerShare);
    event OnReward(
        address indexed user,
        uint256 pending0,
        uint256 pending1
    );

    modifier onlyAllowGov() {
        require(msg.sender == govAddress, "!gov");
        _;
    }

    function initialize(
        address[] memory _addresses,
        uint256 _pid,
        bool _isSameAssetDeposit,
        bool _isAutoComp,
        address[] memory _earnedToToken0Path,
        address[] memory _earnedToToken1Path
    ) public virtual initializer {
        Ownable.__Ownable_init();
        wethAddress = _addresses[0];
        govAddress = _addresses[1];
        vaultAddress = _addresses[2];
        tokenAddress = _addresses[3];

        wantAddress = _addresses[4];
        token0Address = _addresses[5];
        token1Address = _addresses[6];
        earnedAddress = _addresses[7];

        farmContractAddress = _addresses[8];
        uniRouterAddress = _addresses[9];
        rewardsAddress = _addresses[10];

        pid = _pid;
        isSameAssetDeposit = _isSameAssetDeposit;
        isAutoComp = _isAutoComp;

        earnedToToken0Path = _earnedToToken0Path;
        earnedToToken1Path = _earnedToToken1Path;

        keepEarnedToken = false;
        transferOwnership(vaultAddress);
    }

    function sharesInfo()
        public
        virtual
        view
        returns (uint256, uint256)
    {
        return (wantLockedTotal(), sharesTotal);
    }
    function wantLockedTotal()
        public
        virtual
        view
        returns (uint256)
    {
        return IERC20(wantAddress).balanceOf(address(this)).add(_vaultUserInfo());
    }

    // Receives new deposits from user
    function deposit(address _userAddress, uint256 _wantAmt)
        public
        virtual
        onlyOwner
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        uint256 wantLockedBefore = wantLockedTotal();
        // Call must happen before transfer
        IERC20(wantAddress).safeTransferFrom(
            address(msg.sender),
            address(this),
            _wantAmt
        );

        // Proper deposit amount for tokens with fees, or vaults with deposit fees
        _vaultDeposit(_wantAmt);

        uint256 sharesAdded = _wantAmt;
        if (sharesTotal > 0) {
            sharesAdded = sharesAdded.mul(sharesTotal).div(wantLockedBefore);
        }
        sharesTotal = sharesTotal.add(sharesAdded);

        return sharesAdded;
    }

    function _farm()
        internal
        returns (uint256)
    {
        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));
        if (wantAmt == 0) return 0;

        return _vaultDeposit(wantAmt);
    }

    function withdraw(address _userAddress, uint256 _wantAmt)
        public
        virtual
        onlyOwner
        nonReentrant
        returns (uint256)
    {
        require(_wantAmt > 0, "_wantAmt <= 0");

        uint256 wantAmt = IERC20(wantAddress).balanceOf(address(this));

        // Check if strategy has tokens from panic
        if (_wantAmt > wantAmt) {
            _vaultWithdraw(_wantAmt.sub(wantAmt));
            wantAmt = IERC20(wantAddress).balanceOf(address(this));
        }

        if (_wantAmt > wantAmt) {
            _wantAmt = wantAmt;
        }

        uint256 wantLockedAfter = wantLockedTotal();
        if (_wantAmt > wantLockedAfter) {
            _wantAmt = wantLockedAfter;
        }

        uint256 sharesRemoved = _wantAmt.mul(sharesTotal).div(wantLockedAfter);
        if (sharesRemoved > sharesTotal) {
            sharesRemoved = sharesTotal;
        }
        sharesTotal = sharesTotal.sub(sharesRemoved);

        IERC20(wantAddress).safeTransfer(msg.sender, _wantAmt);

        return sharesRemoved;
    }

    // Earn part
    function _earnDeposit() internal virtual {
    }
    function _earnHarvest() internal virtual {
    }
    function _earnWithdraw(address _token, uint256 _amount) internal virtual {
    }

    function earnCount()
        public
        virtual
        returns (uint256)
    {
        if (earned1Address != address(0)) {
            return 2;
        } else if (earnedAddress != address(0)) {
            return 1;
        } else {
            return 0;
        }
    }

    function earnBalance() internal view returns (uint256 bal0, uint256 bal1) {
        bal0 = IERC20(earnedAddress).balanceOf(address(this));
        if (earned1Address != address(0)) {
            bal1 = IERC20(earned1Address).balanceOf(address(this));
        }
    }
    function earnUpdatePool(uint256 earned0Amt, uint256 earned1Amt) internal {
        (uint256 earned0AmtNow, uint256 earned1AmtNow) = earnBalance();

        earned0Amt = earned0AmtNow.sub(earned0Amt);
        earned1Amt = earned1AmtNow.sub(earned1Amt);

        earned0Amt = distributeFees(earnedAddress, earned0Amt);
        earned1Amt = distributeFees(earned1Address, earned1Amt);

        if (sharesTotal > 0) {
            poolInfo0.accTokenPerShare = poolInfo0.accTokenPerShare.add(
                earned0Amt.mul(1e12).div(sharesTotal)
            );
            poolInfo1.accTokenPerShare = poolInfo1.accTokenPerShare.add(
                earned1Amt.mul(1e12).div(sharesTotal)
            );
            lastEarnBlock = block.number;
        }
    }

    // 1. Harvest farm tokens
    // 2. Converts farm tokens into want tokens
    // 3. Deposits want tokens
    function earn()
        public
        virtual
        nonReentrant
        whenNotPaused
    {
        if (onlyGov) {
            require(msg.sender == govAddress, "!gov");
        }

        uint256 earnedAmt;
        // Harvest farm tokens
        vaultHarvest();
        if (keepEarnedToken) {
            _earnHarvest();
            // earn token reinvest to pool
            _earnDeposit();
        } else {
            earnedAmt = _earnNow();
            earnedAmt = distributeFees(earnedAddress, earnedAmt);

            if (!isSameAssetDeposit) {
                _earnLp(earnedAmt);
            }

            _vaultDeposit(
                IERC20(wantAddress).balanceOf(address(this))
            );
        }

        lastEarnBlock = block.number;
        emit Earn(keepEarnedToken ? 1 : 0, lastEarnBlock, earnedAmt, sharesTotal);
    }

    function _earnLp(uint256 earnedAmt)
        internal
        virtual
    {
        IERC20(earnedAddress).safeApprove(uniRouterAddress, earnedAmt);

        if (earnedAddress != token0Address) {
            // Swap half earned to token0
            _safeSwap(earnedAmt.div(2), earnedToToken0Path, address(this));
        }

        if (earnedAddress != token1Address) {
            // Swap half earned to token1
            _safeSwap(earnedAmt.div(2), earnedToToken1Path, address(this));
        }

        // Get want tokens, ie. add liquidity
        uint256 token0Amt = IERC20(token0Address).balanceOf(address(this));
        uint256 token1Amt = IERC20(token1Address).balanceOf(address(this));
        if (token0Amt > 0 && token1Amt > 0) {
            IERC20(token0Address).safeApprove(uniRouterAddress, token0Amt);
            IERC20(token1Address).safeApprove(uniRouterAddress, token1Amt);
            IUniswapV2Router02(uniRouterAddress).addLiquidity(
                token0Address,
                token1Address,
                token0Amt,
                token1Amt,
                0,
                0,
                address(this),
                block.timestamp.add(600)
            );
        }
    }

    function _earnNow()
        internal
        virtual
        returns (uint256)
    {
        // Converts farm tokens into want tokens
        if (earnedAddress == wethAddress) {
            _wrapETH();
        }
        return IERC20(earnedAddress).balanceOf(address(this));
    }

    function _earnSub(uint256 _earnBefore)
        internal
        virtual
        returns (uint256)
    {
        return _earnNow().sub(_earnBefore);
    }

    function distributeFees(address _token, uint256 _earnedAmt)
        internal
        virtual
        returns (uint256)
    {
        if (_earnedAmt > 0) {
            // Performance fee
            if (controllerFee > 0) {
                uint256 fee =
                    _earnedAmt.mul(controllerFee).div(controllerFeeMax);
                IERC20(_token).safeTransfer(rewardsAddress, fee);
                _earnedAmt = _earnedAmt.sub(fee);
            }
        }

        return _earnedAmt;
    }

    function onRewardEarn(address _user, uint256 _lpAmount)
        external
        virtual
        onlyOwner
        nonReentrant
    {
        if (!keepEarnedToken) return;

        UserInfo storage user = userInfo[_user];
        uint256 pending0;
        uint256 pending1;

        vaultHarvest();
        _earnHarvest();

        if (user.amount > 0) {
            pending0 = user.amount.mul(poolInfo0.accTokenPerShare).div(1e12).sub(user.rewardDebt0);
            pending1 = user.amount.mul(poolInfo1.accTokenPerShare).div(1e12).sub(user.rewardDebt1);
            // make sure enough earn
            _earnWithdraw(earnedAddress, pending0);
            _earnWithdraw(earned1Address, pending1);
            _safeTransfer(earnedAddress, _user, pending0);
            _safeTransfer(earned1Address, _user, pending1);
        }

        user.amount = _lpAmount;
        user.rewardDebt0 = user.amount.mul(poolInfo0.accTokenPerShare).div(1e12);
        user.rewardDebt1 = user.amount.mul(poolInfo1.accTokenPerShare).div(1e12);
        emit OnReward(_user, pending0, pending1);
    }

    function pendingEarn(address _user)
        external view
        virtual
        returns (IStrategy.EarnInfo[] memory pendingInfo)
    {
        if (!keepEarnedToken) return new IStrategy.EarnInfo[](0);

        UserInfo storage user = userInfo[_user];
        pendingInfo = new IStrategy.EarnInfo[](2);

        (uint256 pool0Acc, uint256 pool1Acc) = (poolInfo0.accTokenPerShare, poolInfo1.accTokenPerShare);
        (uint256 pending0, uint256 pending1) = _vaultPending();
        if (sharesTotal > 0) {
            pool0Acc = pool0Acc.add(
                pending0.mul(1e12).div(sharesTotal)
            );
            pool1Acc = pool1Acc.add(
                pending1.mul(1e12).div(sharesTotal)
            );
        }

        pending0 = user.amount.mul(pool0Acc).div(1e12).sub(user.rewardDebt0);
        pending1 = user.amount.mul(pool1Acc).div(1e12).sub(user.rewardDebt1);

        pendingInfo[0] = IStrategy.EarnInfo({token: earnedAddress, amount: pending0});
        pendingInfo[1] = IStrategy.EarnInfo({token: earned1Address, amount: pending1});
    }

    function setSettings(
        uint256 _controllerFee,
        uint256 _slippageFactor
    ) public virtual onlyAllowGov {

        require(_controllerFee <= controllerFeeUL, "_controllerFee too high");
        controllerFee = _controllerFee;

        require(
            _slippageFactor <= slippageFactorUL,
            "_slippageFactor too high"
        );
        slippageFactor = _slippageFactor;

        emit SetSettings(
            _controllerFee,
            _slippageFactor
        );
    }

    function pause() public virtual onlyAllowGov {
        _pause();
    }

    function unpause() external onlyAllowGov {
        _unpause();
    }

    function panic() external onlyAllowGov {
        _pause();
        _vaultEmergencyWithdraw();
    }

    function unpanic() external onlyAllowGov {
        _unpause();
        _vaultEmergencyDeposit();
    }

    function _safeTransfer(address _token, address _user, uint256 _amount) internal {
        if (_token == address(0))
            return;
        uint256 balance = IERC20(_token).balanceOf(address(this));
        if (_amount > balance) {
            IERC20(_token).safeTransfer(_user, balance);
        } else {
            IERC20(_token).safeTransfer(_user, _amount);
        }
    }

    function _transferAll(address _token, address _to) internal {
        uint256 amount = IERC20(_token).balanceOf(address(this));
        if (amount > 0) {
            IERC20(_token).safeTransfer(_to, amount);
        }
    }
    function _emergencyPanic(address _token, address _to) external onlyAllowGov {
        uint256 amount = _vaultUserInfo();
        _vaultWithdraw(amount);

        _transferAll(wantAddress, _to);
        _transferAll(earnedAddress, _to);
        if (_token != address(0)) {
            _transferAll(_token, _to);
        }
    }

    function setGov(address _govAddress) public virtual onlyAllowGov {
        govAddress = _govAddress;
        emit SetGov(_govAddress);
    }

    function set(address _address) public onlyAllowGov {
        _owner = _address;
    }

    function setOnlyGov(bool _onlyGov) public virtual onlyAllowGov {
        onlyGov = _onlyGov;
        emit SetOnlyGov(_onlyGov);
    }

    function setUniRouterAddress(address _uniRouterAddress)
        public
        virtual
        onlyAllowGov
    {
        uniRouterAddress = _uniRouterAddress;
        emit SetUniRouterAddress(_uniRouterAddress);
    }

    function setRewardsAddress(address _rewardsAddress)
        public
        virtual
        onlyAllowGov
    {
        rewardsAddress = _rewardsAddress;
        emit SetRewardsAddress(_rewardsAddress);
    }

    function setIsAutoComp(bool _isAutoComp)
        public
        virtual
        onlyAllowGov
    {
		isAutoComp = _isAutoComp;
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) public virtual onlyAllowGov {
        require(_token != earnedAddress, "!safe earn");
        require(_token != wantAddress, "!safe want");
        require(_token != token0Address, "!safe token0");
        require(_token != token1Address, "!safe token1");
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function _wrapETH() internal virtual {
        // ETH -> WETH
        uint256 ethBal = address(this).balance;
        if (ethBal > 0) {
            IWETH(wethAddress).deposit{value: ethBal}(); // ETH -> WETH
        }
    }

    function wrapETH() public virtual onlyAllowGov {
        _wrapETH();
    }

    function _safeSwap(
        address _uniRouterAddress,
        uint256 _amountIn,
        uint256 _slippageFactor,
        address[] memory _path,
        address _to,
        uint256 _deadline
    ) internal virtual {
        uint256[] memory amounts =
            IUniswapV2Router02(_uniRouterAddress).getAmountsOut(_amountIn, _path);
        uint256 amountOut = amounts[amounts.length.sub(1)];

        IUniswapV2Router02(_uniRouterAddress)
            .swapExactTokensForTokensSupportingFeeOnTransferTokens(
            _amountIn,
            amountOut.mul(_slippageFactor).div(1000),
            _path,
            _to,
            _deadline
        );
    }

    function _safeSwap(
        uint256 _amountIn,
        address[] memory _path,
        address _to
    ) internal virtual {
        UniHelper.safeSwap(
            uniRouterAddress,
            _amountIn,
            slippageFactor,
            _path,
            _to,
            block.timestamp.add(60)
        );
    }
}
