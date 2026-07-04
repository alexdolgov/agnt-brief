// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "../interfaces/ILending.sol";
import "../interfaces/IVaultM.sol";

import "hardhat/console.sol";

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}

interface IAirPuffHandler {
    function handlerSwap(bool isSimple, uint256 _amount,address _assetFrom,address _assetTo, bool _isClose, bool _isBalancer)  external returns (uint256);
    function getPositionWithInterestRate(address _user, uint256 _positionID, address _AirPuffVault) external view returns (uint256,uint256);
    function keeper() external view returns (address);
    function vaultCurrentSnapshotID(address _vault) external view returns (uint256);
    function getLatestData(address _token) external view returns (uint256);
}

interface IVectorDeposit {
    function deposit(address _restakedLST, address _to, uint256 _amount) external;
    function redeem(address _restakedLSTToReceive, address _to,uint256 _vETHToRedeem) external;
    function balanceOf(address _account) external view returns (uint256);
}

interface IVectorStake {
    function stake(uint256 _amount) external;
    function unstake(uint256 _amount) external;
    function totalSupply() external view returns (uint256);
}

interface IOracle {
    function answer() external view returns (uint256);
}

interface IVectorOracle {
    function consultsvETHPrice() external view returns (uint256);
    function consultvETHPrice() external view returns (uint256);
}

abstract contract AirPuffVaultVector is IVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;

    FeeConfiguration public feeConfiguration;
    StrategyAddresses public strategyAddresses;
    LeverageBounds public leverageBounds;
    SwapData private swapData;

    address public LendingVault;
    uint256 public DTVLimit;
    bool public isSwapSimple;
    bool public isBalancer;
    bool public isUnstakeEnabled;

    address[] private allUsers;
    uint256 internal MAX_BPS;
    uint256 internal DENOMINATOR;
    uint256 internal DECIMAL;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public isUser;
    mapping(address => mapping(uint256 => PositionTimestamps)) public positionTimestamps;
   
    uint256[50] private __gaps;
    
    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "AirPuff: positionID is not valid");
        _;
    }

    modifier notTrxOrigin() {
        require(msg.sender == tx.origin, "AirPuff: must be EOA");
        _;
    }

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage);
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 leverage, uint256 repayAmount, uint256 time, uint256 userTokensBurned, uint256 originalInterests, uint256 interestsPaid);
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newLendingFeeReceiver,
        uint256 liquidatorFeeChanged
    );
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 reward,
        uint256 time,
        uint256 lendingRepayAmount,
        uint256 amountOut,
        uint256 position,
        uint256 originalInterests,
        uint256 interestsPaid
    );
    event SetLendingVault(address vault);
    event SetStrategyAddresses(address AirPuffHandler, address Oracle, address Vector, address VectorStake);
    event SetDTVLimit(uint256 DTVLimit);
    event LeverageBoundsSet(uint256 minLeverage, uint256 maxLeverage, uint256 minDeposit);
    event SetIsSwapSimple(bool isSimple);
    event SetIsBalancer(bool isBalancer);
    event UnstakeEnabled(bool isUnstakeEnabled);

    /** ----------- Change onlyOwner functions ------------- */

    function setUnstakeEnabled(bool _isUnstakeEnabled) external onlyOwner {
        isUnstakeEnabled = _isUnstakeEnabled;
        emit UnstakeEnabled(_isUnstakeEnabled);
    }

    function setIsSwapSimple(bool _isSimple) external onlyOwner {
        isSwapSimple = _isSimple;
        emit SetIsSwapSimple(_isSimple);
    }

    function setIsBalancer(bool _isBalancer) external onlyOwner {
        isBalancer = _isBalancer;
        emit SetIsBalancer(_isBalancer);
    }

    function setStrategyAddresses(
        address _AirPuffHandler,
        address _VectorOracle,
        address _Vector,
        address _VectorStake
    ) external onlyOwner {
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        strategyAddresses.VectorOracle = _VectorOracle;
        strategyAddresses.Vector = _Vector;
        strategyAddresses.VectorStake = _VectorStake;
        emit SetStrategyAddresses(_AirPuffHandler, _VectorOracle, _Vector, _VectorStake);
    }

    function setLendingVault(address _vault) public onlyOwner {
        LendingVault = _vault;
        emit SetLendingVault(_vault);
    }

    function setDTVLimit(uint256 _DTVLimit) public onlyOwner {
        DTVLimit = _DTVLimit;
        emit SetDTVLimit(_DTVLimit);
    }

    function setMinMaxLeverageBounds(uint256 _minLeverage, uint256 _maxLeverage, uint256 _minDeposit) public onlyOwner {
        require(_minLeverage >= 1000 && _maxLeverage <= 15000, "AirPuff: incorrect leverage bounds");
        require(_minLeverage < _maxLeverage, "AirPuff: minLeverage is greater than maxLeverage");
        leverageBounds.minLeverage = _minLeverage;
        leverageBounds.maxLeverage = _maxLeverage;
        leverageBounds.minDeposit = _minDeposit;
        emit LeverageBoundsSet(_minLeverage, _maxLeverage, _minDeposit);
    }   

    function setProtocolFee(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _lendingFeeReceiver,
        uint256 _mFeePercent,
        address _mFeeReceiver,
        uint256 _liquidatorFee
    ) external onlyOwner {
        require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        require(_mFeePercent <= 90000, "Invalid mFeePercent");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.lendingFeeReceiver = _lendingFeeReceiver;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;
        feeConfiguration.mFeePercent = _mFeePercent;
        feeConfiguration.liquidatorFee = _liquidatorFee;

        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _lendingFeeReceiver,
            _liquidatorFee
        );
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /** ----------- View functions ------------- */

    function getVectorSharePrice() public view returns (uint256) {
        uint256 totalSupply = IVectorStake(strategyAddresses.VectorStake).totalSupply();
        uint256 totalBalance = IVectorDeposit(strategyAddresses.Vector).balanceOf(strategyAddresses.VectorStake);
        uint256 price = 1e18 * totalBalance / totalSupply;
        return price;
    }

    function getAllUsers() public view returns (address[] memory) {
        return allUsers;
    }

    function getTotalNumbersOfOpenPositionBy(address _user) public view returns (uint256) {
        return userInfo[_user].length;
    }

    function getUpdatedDebt(
        uint256 _positionID,
        address _user
    ) public view returns (uint256, uint256, uint256, uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0, 0);

        //in WETH
        (uint256 leverageWithInterests,uint256 totalInterests) = IAirPuffHandler(strategyAddresses.AirPuffHandler).getPositionWithInterestRate(
            _user,
            _positionID,
            address(this));

        //In vETH
        uint256 VectorSharePrice = IVectorOracle(strategyAddresses.VectorOracle).consultsvETHPrice();
        //In vETH
        uint256 currentPositionValuevETH = _userInfo.position.mulDiv(VectorSharePrice, DECIMAL);

        uint256 VestorvETHPrice = IVectorOracle(strategyAddresses.VectorOracle).consultvETHPrice();
        //in WETH
        uint256 currentPositionValue = currentPositionValuevETH.mulDiv(VestorvETHPrice, DECIMAL);

        //In Borrowed asset USD value
        uint256 currentDTV = leverageWithInterests.mulDiv(DECIMAL, currentPositionValue);

        return (
            currentDTV,
            currentPositionValue,
            leverageWithInterests,
            totalInterests);
    }

    /** ----------- User functions ------------- */
    function openPosition(uint256 _leverage) external payable whenNotPaused nonReentrant notTrxOrigin {
        require(_leverage >= leverageBounds.minLeverage && _leverage <= leverageBounds.maxLeverage, "AirPuff: leverage is out of bounds");
        require(msg.value >= leverageBounds.minDeposit, "AirPuff: deposit is less than minimum");

        uint256 amount = msg.value;

        IWETH(strategyAddresses.WETH).deposit{value: msg.value}();
        uint256 leveragedAmount = (amount.mulDiv(_leverage, DENOMINATOR) - amount);
        require(leveragedAmount > 0, "AirPuff: leveragedAmount is 0");
        bool success = ILending(LendingVault).lend(leveragedAmount,address(this));
        require(success, "AirPuff: lending failed");

        uint256 staked = _depositAndStake(amount, leveragedAmount);

        uint256 posID = userInfo[msg.sender].length;
        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: amount,
            leverage: _leverage,
            position: staked,
            liquidated: false,
            liquidator: address(0),
            leverageAmount: leveragedAmount,
            positionId: posID,
            closed: false
        });

        PositionTimestamps storage pts = positionTimestamps[msg.sender][posID];
        pts.openTimestamp = block.timestamp;
        pts.vaultSnapshotID = IAirPuffHandler(strategyAddresses.AirPuffHandler).vaultCurrentSnapshotID(LendingVault);

        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);

        _mint(msg.sender, staked);

        emit Deposit(msg.sender, amount, staked, block.timestamp, posID, _leverage);
    }

    function closePosition(uint256 _positionID) external InvalidID(_positionID, msg.sender) nonReentrant notTrxOrigin {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_userInfo.position > 0, "AirPuff: position is not enough to close");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");

        CloseData memory closeData;
        SwapData memory sData;

        //Check for liquidation
        (closeData.currentDTV,,,closeData.totalInterests) = getUpdatedDebt(_positionID, msg.sender);
        uint256 originalInterests = closeData.totalInterests;

        if (closeData.currentDTV >= (DTVLimit)) {
            revert("Wait for liquidation");
        }

        _userInfo.closed = true;
        _burn(msg.sender, _userInfo.position);

        uint256 veETHReceived = _unstakesvETH(_userInfo.position);

        if (isUnstakeEnabled) {
            sData.amountOut = _withdrawvETH(veETHReceived);
        } else {
            IERC20Upgradeable(strategyAddresses.Vector).safeTransfer(strategyAddresses.AirPuffHandler, veETHReceived);
            sData.amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).handlerSwap(isSwapSimple, veETHReceived, strategyAddresses.Vector, strategyAddresses.WETH, true, isBalancer);
        }

        console.log("Amount out: %s", sData.amountOut);

        if (sData.amountOut < _userInfo.leverageAmount) {
                sData.repayAmount = sData.amountOut;
                closeData.totalInterests = 0;
            } else if (sData.amountOut < _userInfo.leverageAmount + closeData.totalInterests && sData.amountOut >= _userInfo.leverageAmount) {
                sData.repayAmount = _userInfo.leverageAmount;
                closeData.totalInterests = sData.amountOut - sData.repayAmount;
                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.lendingFeeReceiver, closeData.totalInterests);
            } else {
                sData.repayAmount = _userInfo.leverageAmount;
                closeData.toLeverageUser = sData.amountOut - sData.repayAmount - closeData.totalInterests;
                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.lendingFeeReceiver, closeData.totalInterests);

                uint256 withdrawFee;
                if (feeConfiguration.withdrawalFee > 0) {
                    withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
                    IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.feeReceiver, withdrawFee);
                    closeData.toLeverageUser = closeData.toLeverageUser - withdrawFee;
                    console.log("Withdraw fee: %s", withdrawFee);
                }
        }

        console.log("Repaying debt: %s", sData.repayAmount);
        console.log("Total Interests: %s", closeData.totalInterests);
        console.log("To leverage user: %s", closeData.toLeverageUser);
        
        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, sData.repayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, sData.repayAmount);

        PositionTimestamps storage pts = positionTimestamps[_userInfo.user][_positionID];
        pts.closeTimestamp = block.timestamp;

        if (closeData.toLeverageUser > 0) {
            IWETH(strategyAddresses.WETH).withdraw(closeData.toLeverageUser);
            payable(msg.sender).transfer(closeData.toLeverageUser);
        }
        
        emit Withdraw(_userInfo.user, _positionID, closeData.toLeverageUser, _userInfo.leverage, sData.repayAmount, block.timestamp, _userInfo.position, originalInterests, closeData.totalInterests);
    }

    function liquidatePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        CloseData memory closeData;
        (closeData.currentDTV,,,closeData.totalInterests) = getUpdatedDebt(_positionID, _user);
        SwapData memory sData;
        uint256 originalInterests = closeData.totalInterests;

        require(closeData.currentDTV >= DTVLimit, "Liquidation not required");

        _userInfo.liquidated = true;
        _userInfo.closed = true;
        _burn(_user, _userInfo.position);

        uint256 veETHReceived = _unstakesvETH(_userInfo.position);
        _userInfo.liquidator = msg.sender;
        
        if (isUnstakeEnabled) {
            sData.amountOut = _withdrawvETH(veETHReceived);
        } else {
            IERC20Upgradeable(strategyAddresses.Vector).safeTransfer(strategyAddresses.AirPuffHandler, veETHReceived);
            sData.amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).handlerSwap(isSwapSimple, veETHReceived, strategyAddresses.Vector, strategyAddresses.WETH, true, isBalancer);
        }

        uint256 liquidatorReward;
        if (sData.amountOut < _userInfo.leverageAmount) {
                sData.repayAmount = sData.amountOut;
            } else if (sData.amountOut < _userInfo.leverageAmount + closeData.totalInterests && sData.amountOut >= _userInfo.leverageAmount) {
                sData.repayAmount = _userInfo.leverageAmount;
                closeData.totalInterests = sData.amountOut - sData.repayAmount;
                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.lendingFeeReceiver, closeData.totalInterests);
            } else {
                sData.repayAmount = _userInfo.leverageAmount;
                sData.amountOut = sData.amountOut - sData.repayAmount - closeData.totalInterests;
                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.lendingFeeReceiver, closeData.totalInterests);

                liquidatorReward = sData.amountOut * feeConfiguration.liquidatorFee  / MAX_BPS;
                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(_userInfo.liquidator, liquidatorReward);
                sData.amountOut = sData.amountOut - liquidatorReward;

                IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(_userInfo.user, sData.amountOut);
        }

        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, sData.repayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, sData.repayAmount);

        emit Liquidated(_user, _positionID, msg.sender, liquidatorReward, block.timestamp, sData.repayAmount, sData.amountOut, _userInfo.position, originalInterests, closeData.totalInterests);
    }

    // -- Internal functions -- //

    function _unstakesvETH(uint256 _positionAmount) internal returns (uint256) {
        IERC20Upgradeable(strategyAddresses.VectorStake).safeIncreaseAllowance(strategyAddresses.VectorStake, _positionAmount);
        uint256 vETHBalBefore = IERC20Upgradeable(strategyAddresses.Vector).balanceOf(address(this));
        IVectorStake(strategyAddresses.VectorStake).unstake(_positionAmount);
        uint256 vETHBalAfter = IERC20Upgradeable(strategyAddresses.Vector).balanceOf(address(this));
        uint256 amountOut = vETHBalAfter - vETHBalBefore;
        return amountOut;
    }

    function _withdrawvETH(uint256 _positionAmount) internal returns (uint256) {
        IERC20Upgradeable(strategyAddresses.Vector).safeIncreaseAllowance(strategyAddresses.Vector, _positionAmount);
        uint256 balBefore = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));
        IVectorDeposit(strategyAddresses.Vector).redeem(strategyAddresses.WETH, address(this), _positionAmount);
        uint256 balAfter = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));
        uint256 amountOut = balAfter - balBefore;
        return amountOut;
    }

    function _depositAndStake(uint256 amount, uint256 leveragedAmount) internal returns (uint256) {
        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(strategyAddresses.Vector, leveragedAmount + amount);
        uint256 balBefore = IERC20Upgradeable(strategyAddresses.Vector).balanceOf(address(this));
        IVectorDeposit(strategyAddresses.Vector).deposit(strategyAddresses.WETH, address(this), leveragedAmount + amount);
        uint256 balAfter = IERC20Upgradeable(strategyAddresses.Vector).balanceOf(address(this));
        uint256 depositedBal = balAfter - balBefore;

        uint256 stakedBalBefore = IERC20Upgradeable(strategyAddresses.VectorStake).balanceOf(address(this));
        IERC20Upgradeable(strategyAddresses.Vector).safeIncreaseAllowance(strategyAddresses.VectorStake, depositedBal);
        IVectorStake(strategyAddresses.VectorStake).stake(depositedBal);
        uint256 stakedBalAfter = IERC20Upgradeable(strategyAddresses.VectorStake).balanceOf(address(this));

        return stakedBalAfter - stakedBalBefore;
    }

    /** ----------- Token functions ------------- */

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {}

    function transfer(address to, uint256 amount) public virtual override returns (bool) {}

    function burn(uint256 amount) public virtual override {}

    function burnFrom(address from, uint256 amount) public virtual override {}

    receive() external payable {}
}