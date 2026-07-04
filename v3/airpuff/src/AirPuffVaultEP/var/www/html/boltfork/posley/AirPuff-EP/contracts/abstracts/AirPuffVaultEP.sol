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

interface IEigenDepositHelper {
    //amount, claimed
    function getUserCycleInfo(uint256 _cycle,address _user,address _asset) external view returns (uint256, uint256);
    function currentCycle() external view returns (uint256);
    function userClaim(uint256[] calldata _cycles, address[] calldata _assets) external;
}

interface IEigenPieDeposit {
    function depositAsset(address asset,uint256 depositAmount,uint256 minRec,address referral) external;
}

interface IswETH {
    function deposit() external payable;
    function swETHToETHRate() external view returns (uint256);
}

interface ISWExit {
    function createWithdrawRequest(uint256 amount) external;
    function getLastTokenIdCreated() external view returns (uint256);
    function setApprovalForAll(address operator, bool approved) external;
    function finalizeWithdrawal(uint256 tokenId) external;
    function getLastTokenIdProcessed() external view returns (uint256);
    function getProcessedRateForTokenId(uint256 tokenId) external view returns (bool isProcessed, uint256 processedRate);
    function claimableCycles(uint256 _cycleID) external view returns (bool);
}

abstract contract AirPuffVaultEP is IVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
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
    bool public withdrawEnabled;
    uint256[] public allCycles;

    address[] private allUsers;
    uint256 internal MAX_BPS;
    uint256 internal DENOMINATOR;
    uint256 internal DECIMAL;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public isUser;
    mapping(address => mapping(uint256 => PositionTimestamps)) public positionTimestamps;
    mapping(address => mapping(uint256 => uint256)) public positionCycle;
    mapping(address => mapping(uint256 => CloseRequestData)) public closeRequests;
    mapping(address => uint256[]) public userCloseRequestsCount;
    mapping(uint256 => bool) public isCycle;
   
    uint256[50] private __gaps;
    mapping(address => mapping(uint256 => bool)) public closePending;
    mapping(address => mapping(uint256 => uint256)) public closeWETHAmount;
    mapping(address => bool) public onlyAllowedClosers;
    
    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "AirPuff: positionID is not valid");
        _;
    }

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage);
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 leverage, uint256 repayAmount, uint256 time, uint256 userTokensBurned, uint256 closeRequestID);
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
        uint256 time,
        uint256 lendingRepayAmount,
        uint256 position
    );
    event SetLendingVault(address vault);
    event SetStrategyAddresses(address AirPuffHandler, address _mswETH, address _eigenPie, address _swETH, address _EigenPreDepositHelper, address _swExit);
    event SetDTVLimit(uint256 DTVLimit);
    event LeverageBoundsSet(uint256 minLeverage, uint256 maxLeverage, uint256 minDeposit);
    event SetIsSwapSimple(bool isSimple);
    event SetIsBalancer(bool isBalancer);
    event UnstakeEnabled(bool isUnstakeEnabled);
    event SetWithdrawEnabled(bool _withdrawEnabled);
    event SetAllowedClosers(address _closer, bool _allowed);
    event PositionCloseFulfilled(address _user, uint256 _closeRequestID, uint256 _lendingRepayAmount, bool isLiquidation);
    
    /** ----------- Change onlyOwner functions ------------- */

    function setAllowedClosers(address _closer, bool _allowed) external onlyOwner {
        onlyAllowedClosers[_closer] = _allowed;
        emit SetAllowedClosers(_closer, _allowed);
    }

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
        address _mswETH,
        address _EigenPie,
        address _swETH,
        address _EigenPreDepositHelper,
        address _swExit
    ) external onlyOwner {
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        strategyAddresses.mswETH = _mswETH;
        strategyAddresses.EigenPie = _EigenPie;
        strategyAddresses.swETH = _swETH;
        strategyAddresses.EigenPreDepositHelper = _EigenPreDepositHelper;
        strategyAddresses.swExit = _swExit;
        ISWExit(_swExit).setApprovalForAll(_swExit, true);
        emit SetStrategyAddresses(_AirPuffHandler, _mswETH, _EigenPie, _swETH, _EigenPreDepositHelper, _swExit);
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

    function geUserCloseRequests(address _user) public view returns (CloseRequestData[] memory) {
        uint256 count = userCloseRequestsCount[_user].length;
        CloseRequestData[] memory closeRequestsData = new CloseRequestData[](count);
        for (uint256 i = 0; i < count; i++) {
            closeRequestsData[i] = closeRequests[_user][i];
        }
        return closeRequestsData;
    }

    function getUserRequestCount(address _user) public view returns (uint256) {
        return userCloseRequestsCount[_user].length;
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

        //In ETH (that asset returns e18 decimals but the handler already converts it to e10 so we need to re-divide it by 1e10 to get the correct value)
        uint256 mswETHPrice = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.swETH);

        //in ETH
        uint256 currentPositionValue = _userInfo.position.mulDiv(mswETHPrice, DECIMAL); 

        uint256 currentDTV = leverageWithInterests.mulDiv(DECIMAL, currentPositionValue);

        return (
            currentDTV,
            currentPositionValue,
            leverageWithInterests,
            totalInterests);
    }
    
    function getAllEigeinPieCycleDepositAmounts() public view returns (uint256) {
        uint256 currentCycle = IEigenDepositHelper(strategyAddresses.EigenPreDepositHelper).currentCycle();

        uint256 totalDeposited;
        for (uint256 i = 0; i <= currentCycle; i++) {
            (uint256 bal,) = IEigenDepositHelper(strategyAddresses.EigenPreDepositHelper).getUserCycleInfo(i, address(this), strategyAddresses.swETH);
            totalDeposited += bal;
        }

        return totalDeposited;
    }

    /** ----------- User functions ------------- */
    function openPosition(uint256 _leverage) external payable nonReentrant {
        require(onlyAllowedClosers[msg.sender], "AirPuff: only allowed closers");
        require(_leverage >= leverageBounds.minLeverage && _leverage <= leverageBounds.maxLeverage, "AirPuff: leverage is out of bounds");
        require(msg.value >= leverageBounds.minDeposit, "AirPuff: deposit is less than minimum");

        uint256 amount = msg.value;

        uint256 leveragedAmount = (amount.mulDiv(_leverage, DENOMINATOR) - amount);
        require(leveragedAmount > 0, "AirPuff: leveragedAmount is 0");
        bool success = ILending(LendingVault).lend(leveragedAmount,address(this));
        require(success, "AirPuff: lending failed");

        IWETH(strategyAddresses.WETH).withdraw(leveragedAmount);

        uint256 staked = _depositAndStake(amount + leveragedAmount);
        require(staked > 0, "AirPuff: staked is 0");

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
        positionCycle[msg.sender][posID] = IEigenDepositHelper(strategyAddresses.EigenPreDepositHelper).currentCycle();
        pts.openTimestamp = block.timestamp;
        pts.vaultSnapshotID = IAirPuffHandler(strategyAddresses.AirPuffHandler).vaultCurrentSnapshotID(LendingVault);

        if (!isCycle[positionCycle[msg.sender][posID]]) {
            allCycles.push(positionCycle[msg.sender][posID]);
            isCycle[positionCycle[msg.sender][posID]] = true;
        }

        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);

        _mint(msg.sender, staked);

        emit Deposit(msg.sender, amount, staked, block.timestamp, posID, _leverage);
    }

    function closePosition(uint256 _positionID) external InvalidID(_positionID, msg.sender) nonReentrant {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_userInfo.position > 0, "AirPuff: position is not enough to close");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");
        require(!closePending[msg.sender][_positionID], "AirPuff: close position is pending");
        
        uint256 positionID = _positionID;

        CloseData memory closeData;
        SwapData memory sData;

        //Check for liquidation
        (closeData.currentDTV,,closeData.fulldebtValue,closeData.totalInterests) = getUpdatedDebt(positionID, msg.sender);

        if (closeData.currentDTV >= (DTVLimit)) {
            revert("Wait for liquidation");
        }

        uint256 userTokensBurned = _userInfo.position;
        _burn(msg.sender, _userInfo.position);

        uint256 debtSW = closeData.fulldebtValue * DECIMAL / IswETH(strategyAddresses.swETH).swETHToETHRate();

        closeData.toLeverageUser = _userInfo.position - debtSW;

        uint256 userRequestCount = userCloseRequestsCount[msg.sender].length;
        CloseRequestData storage closeRequest = closeRequests[msg.sender][userRequestCount];
        closeRequest.positionID = positionID;
        closeRequest.amount = debtSW;
        closeRequest.closeRequestID = userRequestCount;
        closeRequest.user = msg.sender;
        closeRequest.done = false;

        userCloseRequestsCount[msg.sender].push(userRequestCount);
        
        uint256 withdrawFee;
        if (feeConfiguration.withdrawalFee > 0) {
            withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            IERC20Upgradeable(strategyAddresses.mswETH).safeTransfer(feeConfiguration.feeReceiver, withdrawFee);
        }

        sData.toLeverageUserOut = closeData.toLeverageUser - withdrawFee;
        IERC20Upgradeable(strategyAddresses.mswETH).safeTransfer(_userInfo.user, sData.toLeverageUserOut);
        IERC20Upgradeable(strategyAddresses.mswETH).safeTransfer(feeConfiguration.lendingFeeReceiver, debtSW);

        closePending[msg.sender][positionID] = true;
        PositionTimestamps storage pts = positionTimestamps[_userInfo.user][positionID];
        pts.closeTimestamp = block.timestamp;

        emit Withdraw(msg.sender, positionID, _userInfo.position, _userInfo.leverage, debtSW, block.timestamp, userTokensBurned, userRequestCount);
    }

    function fulfillClosePosition(address _user, uint256 _closeRequestID, uint256 _lendingRepayAmount) public {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: not allowed to fulfill close position");
        CloseRequestData storage closeRequest = closeRequests[_user][_closeRequestID];
        require(!closeRequest.done, "AirPuff: close request already fulfilled");
        require(closePending[_user][closeRequest.positionID], "AirPuff: close request is not pending");
        require(_lendingRepayAmount > 0, "AirPuff: lending repay amount is 0");
        require(closeRequest.user != address(0), "AirPuff: request does not exist");

        uint256 posID = closeRequest.positionID;
        UserInfo storage _userInfo = userInfo[_user][posID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_lendingRepayAmount >= _userInfo.leverageAmount, "AirPuff: incorrect lending repay amount");
        
        IERC20Upgradeable(strategyAddresses.WETH).safeTransferFrom(msg.sender, address(this), _lendingRepayAmount);
        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, _lendingRepayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, _lendingRepayAmount);

        closeWETHAmount[_user][posID] = _lendingRepayAmount;
        _userInfo.closed = true;
        _userInfo.position = 0;
        _userInfo.leverageAmount = 0;
        closeRequest.done = true;

        if (_userInfo.liquidator != address(0)) {
            _userInfo.liquidated = true;
        }

        emit PositionCloseFulfilled(_user, _closeRequestID, _lendingRepayAmount, _userInfo.liquidated);
    }

    function liquidatePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) nonReentrant {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: not allowed to liquidate positions");
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        (uint256 currentDTV,,,) = getUpdatedDebt(_positionID, _user);
        CloseData memory closeData;
        SwapData memory sData;

        require(currentDTV >= DTVLimit, "Liquidation not required");

        uint256 position = _userInfo.position;
        _burn(_user, position);

        IERC20Upgradeable(strategyAddresses.mswETH).safeTransfer(feeConfiguration.lendingFeeReceiver, _userInfo.position);

        uint256 userRequestCount = userCloseRequestsCount[_user].length;
        CloseRequestData storage closeRequest = closeRequests[_user][userRequestCount];
        closeRequest.positionID = _positionID;
        closeRequest.amount = position;
        closeRequest.closeRequestID = userRequestCount;
        closeRequest.user = _user;
        closeRequest.done = false;

        userCloseRequestsCount[_user].push(userRequestCount);

        _userInfo.liquidator = msg.sender;

        emit Liquidated(_user, _positionID, msg.sender, block.timestamp, _userInfo.position, position);
    }

    // -- Internal functions -- //

    function claimAll(uint256[] memory _cycles,address[] memory _assets) public onlyOwner {
        IEigenDepositHelper(strategyAddresses.EigenPreDepositHelper).userClaim(_cycles, _assets);
    }

    function _depositAndStake(uint256 totalAmount) internal returns (uint256) {
        uint256 swETHBalBefore = IERC20Upgradeable(strategyAddresses.swETH).balanceOf(address(this));
        IswETH(strategyAddresses.swETH).deposit{value: totalAmount}();
        uint256 swETHBalAfter = IERC20Upgradeable(strategyAddresses.swETH).balanceOf(address(this));
        uint256 swETHAmountOut = swETHBalAfter - swETHBalBefore;

        uint256 depositedBal = _eigenPieDeposit(swETHAmountOut);

        return depositedBal;
    }

    function _eigenPieDeposit(uint256 _amount) internal returns (uint256) {
        IERC20Upgradeable(strategyAddresses.swETH).safeIncreaseAllowance(strategyAddresses.EigenPie, _amount);
        uint256 balBefore = IERC20Upgradeable(strategyAddresses.mswETH).balanceOf(address(this));
        IEigenPieDeposit(strategyAddresses.EigenPie).depositAsset(strategyAddresses.swETH,_amount, _amount, address(0));
        uint256 balAfter = IERC20Upgradeable(strategyAddresses.mswETH).balanceOf(address(this));

        uint256 depositedBal = balAfter - balBefore;
        return depositedBal;
    }

    /** ----------- Token functions ------------- */

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {}

    function transfer(address to, uint256 amount) public virtual override returns (bool) {}

    function burn(uint256 amount) public virtual override {}

    function burnFrom(address from, uint256 amount) public virtual override {}

    function onERC721Received(
    address,
    address _from,
    uint256 _tokenId,
    bytes calldata
  ) external returns (bytes4) {
    return this.onERC721Received.selector;
  }

    receive() external payable {}
}