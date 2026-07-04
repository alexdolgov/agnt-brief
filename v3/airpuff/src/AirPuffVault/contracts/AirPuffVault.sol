// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./interfaces/ILending.sol";
import "./interfaces/IPendleOracle.sol";
import "hardhat/console.sol";

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}

interface IAirPuffHandler {
    function executeSwap(uint256 _amount, bytes calldata _data, bool _swapSimple, address _assetIn, address _assetOut) external returns (uint256);
    function getPositionWithInterestRate(address _user, uint256 _positionID) external view returns (uint256,uint256);
    function getLatestData(address _asset) external view returns (uint256);
    function keeper() external view returns (address);
    function setPositionDebtValue(address _user, uint256 _positionID, address _vault, uint256 _openTimestamp) external;
    function setPositionCloseTimestamp(address _user, uint256 _positionID, uint256 _closeTimestamp) external;
}

contract AirPuffVault is OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;
    using MathUpgradeable for uint128;

    struct UserInfo {
        address user;
        uint256 deposit;
        uint256 leverage;
        uint256 position;
        uint256 originalPositionValue;
        bool liquidated;
        uint256 closedPositionValue;
        address liquidator;
        uint256 positionSwappedBorrowedAmount;
        uint256 leverageAmount;
        uint256 positionId;
        bool closed;
    }

    struct FeeConfiguration {
        address feeReceiver;
        uint256 withdrawalFee;
        address lendingFeeReceiver;
        uint256 liquidatorsRewardPercentage;
        uint256 mFeePercent;
        address mFeeReceiver;
    }

    struct Datas {
        uint256 totalweETHPosition;
        uint256 lendingRepayment;
    }

    struct StrategyAddresses {
        address weETH;
        address wstETH;
        address WETH;
        address pendleOracle;
        address AirPuffHandler;
    }

    struct OpenPositionRequest {
        address user;
        uint256 leveragedAmount;
        uint256 leverage;
        uint256 amount;
        address asset;
        address toBorrow;
        uint256 toSwap1;
        uint256 toSwap2;
        bool isweWETH;
        bool done;
    }

    struct ClosePositionRequest {
        address user;
        uint256 userPositionID;
        uint256 closeRequestID;
        uint256 lendingRepayment;
        uint256 mFee;
        uint256 toLeverageUser;
        bool isLiquidation;
        bool done;
        uint256 totalInterests;
    }

    struct SwapData {
        uint256 toSwap1;
        uint256 toSwap2;
        uint256 toSwap3;
        uint256 amountOut1;
        uint256 amountOut2;
        uint256 weWETHPosition;
    }

    struct CloseData {
        uint256 currentDTV;
        uint256 fulldebtValue;
        uint256 totalInterests;
        uint256 mFee;
        uint256 toLeverageUser;
    }

    struct BorrowedAssetLeverageBounds {
        address asset;
        uint256 maxLeverageLimit;
        uint256 minLeverageLimit;
        uint256 DTVLimit;
    }

    FeeConfiguration public feeConfiguration;
    StrategyAddresses public strategyAddresses;
    SwapData public swapData;

    address[] public allUsers;
    
    uint256 public MAX_BPS;

    uint256 private constant DENOMINATOR = 1_000;
    uint256 private constant DECIMAL = 1e18;
    address[] public allLendingVaults;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public allowedSenders;
    mapping(address => bool) public isUser;
    mapping(address => mapping(uint256 => address)) public positionDepositAsset;
    mapping(address => mapping(uint256 => address)) public positionBorrowAsset;
    mapping(address => bool) public isWhitelistedDepositAsset;
    mapping(address => bool) public isWhitelistedBorrowAsset;
    mapping(address => address) public lendingVault;
    mapping(address => mapping(uint256 => OpenPositionRequest)) public openPositionRequests;
    mapping(address => uint256[]) public userOpenPositionCount;
    mapping(address => mapping(uint256 => ClosePositionRequest)) public closePositionRequests;
    mapping(address => uint256[]) public userClosePositionCount;
    mapping(address => BorrowedAssetLeverageBounds) public borrowedAssetLeverageBounds;

    uint256[50] private __gaps;

    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "AirPuff: positionID is not valid");
        _;
    }

    modifier zeroAddress(address addr) {
        require(addr != address(0), "Zero address");
        _;
    }

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage, address borrowedAsset);
    event Withdraw(address indexed user, uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage, address borrowedAsset);
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newLendingFeeReceiver,
        uint256 liquidatorsRewardPercentage
    );
    event Liquidation(
        address indexed liquidator,
        address indexed borrower,
        uint256 positionId,
        uint256 liquidatedAmount,
        uint256 outputAmount,
        uint256 time
    );
    event SetAllowedSenders(address indexed sender, bool allowed);
    event OpenRequest(address indexed user, uint256 amountAfterFee);
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 amount,
        uint256 reward,
        uint256 time
    );
    
    event SetWhitelistedBorrowAsset(address indexed asset, bool whitelisted);
    event SetWhitelistedDepositAsset(address indexed asset, bool whitelisted);
    event SetLendingVault(address indexed asset, address vault);
    event SetStrategyAddresses(address pendleOracle, address AirPuffHandler);
    event RequestedPositionOpen(address indexed user, uint256 indexed positionID);
    event ClosePositionRequested(address indexed user, uint256 indexed closeRequestID);
    event AddedToPosition(address indexed user, uint256 indexed positionID, uint256 amount,address asset);
    event BorrowedAssetLeverageLimit(address indexed asset, uint256 maxLimit,uint256 minLimit,uint256 DTVLimit);
    
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _weETH,
        address _wstETH,
        address _WETH
    ) external initializer {

        strategyAddresses.weETH = _weETH;
        strategyAddresses.wstETH = _wstETH;
        strategyAddresses.WETH = _WETH;

        MAX_BPS = 100_000;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-EtherFi", "AP-EtherFi");
    }

    /** ----------- Change onlyOwner functions ------------- */

    function setBorrowedAssetLeverageLimit(address _asset, uint256 _maxLimit,uint256 _minLimit, uint256 _DTVLimit) external onlyOwner zeroAddress(_asset) {
        BorrowedAssetLeverageBounds storage ball = borrowedAssetLeverageBounds[_asset];
        ball.asset = _asset;
        ball.maxLeverageLimit = _maxLimit;
        ball.minLeverageLimit = _minLimit;
        ball.DTVLimit = _DTVLimit;
        emit BorrowedAssetLeverageLimit(_asset, _maxLimit, _minLimit, _DTVLimit);
    }

    function setStrategyAddresses(
        address _pendleOracle,
        address _AirPuffHandler
    ) external onlyOwner {
        strategyAddresses.pendleOracle = _pendleOracle;
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        emit SetStrategyAddresses(_pendleOracle, _AirPuffHandler);
    }

    function setLendingVault(address _asset, address _vault) public onlyOwner zeroAddress(_asset) zeroAddress(_vault) {
        lendingVault[_asset] = _vault;
        allLendingVaults.push(_vault);
        emit SetLendingVault(_asset, _vault);
    }

    function setWhitelistedDepositAsset(address _asset, bool _whitelisted) public onlyOwner zeroAddress(_asset) {
        isWhitelistedDepositAsset[_asset] = _whitelisted;
        emit SetWhitelistedDepositAsset(_asset, _whitelisted);
    }

    function setWhitelistedBorrowAsset(address _asset, bool _whitelisted) public onlyOwner zeroAddress(_asset) {
        isWhitelistedBorrowAsset[_asset] = _whitelisted;
        emit SetWhitelistedBorrowAsset(_asset, _whitelisted);
    }

    //MC or any other whitelisted contracts
    function setAllowed(address _sender, bool _allowed) public onlyOwner zeroAddress(_sender) {
        allowedSenders[_sender] = _allowed;
        emit SetAllowedSenders(_sender, _allowed);
    }

    function setProtocolFee(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _lendingFeeReceiver,
        uint256 _liquidatorsRewardPercentage,
        uint256 _mFeePercent,
        address _mFeeReceiver
    ) external onlyOwner zeroAddress(_feeReceiver) zeroAddress(_lendingFeeReceiver) {
        require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        require(_mFeePercent <= 90000, "Invalid mFeePercent");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.lendingFeeReceiver = _lendingFeeReceiver;
        feeConfiguration.liquidatorsRewardPercentage = _liquidatorsRewardPercentage;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;
        feeConfiguration.mFeePercent = _mFeePercent;

        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _lendingFeeReceiver,
            _liquidatorsRewardPercentage
        );
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function executeOpenPosition(
        uint256 _requestPositionID,
        address _user,
        bytes calldata _data,
        bytes calldata _data2,
        bool _swapSimple,
        bool _swapSimple2
    ) public {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: Only Keeper");
        OpenPositionRequest storage opr = openPositionRequests[_user][_requestPositionID];
        SwapData memory opd = swapData;
        require(opr.user != address(0), "AirPuff: open position request does not exist");
        require(!opr.done, "AirPuff: open position request already executed");

        uint256 swappedB;
        if (opr.isweWETH) {
            IERC20Upgradeable(opr.toBorrow).transfer(strategyAddresses.AirPuffHandler, opr.toSwap1);
            opd.amountOut1 = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap1, _data, _swapSimple,opr.toBorrow, strategyAddresses.weETH);
            opd.weWETHPosition = opr.amount + opd.amountOut1;
            swappedB = opd.amountOut1;
        } else {
            IERC20Upgradeable(opr.asset).transfer(strategyAddresses.AirPuffHandler, opr.toSwap1);
            opd.amountOut1 =IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap1, _data, _swapSimple, opr.asset, strategyAddresses.weETH);
            IERC20Upgradeable(opr.toBorrow).transfer(strategyAddresses.AirPuffHandler, opr.toSwap2);
            opd.amountOut2 = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap2, _data2, _swapSimple2, opr.toBorrow, strategyAddresses.weETH);
            opd.weWETHPosition = opd.amountOut1 + opd.amountOut2;
            swappedB = opd.amountOut2;
        }
        
        uint256 posID = userInfo[opr.user].length;
        (uint256 value,) = _getInputAssetValue(opd.weWETHPosition, strategyAddresses.weETH);
        UserInfo memory _userInfo = UserInfo({
            user: opr.user,
            deposit: opr.amount,
            leverage: opr.leverage,
            position: opd.weWETHPosition,
            originalPositionValue: value,
            liquidated: false,
            closedPositionValue: 0,
            liquidator: address(0),
            positionSwappedBorrowedAmount: swappedB,
            leverageAmount: opr.leveragedAmount,
            positionId: posID,
            closed: false
        });

        positionDepositAsset[opr.user][posID] = opr.asset;
        positionBorrowAsset[opr.user][posID] = opr.toBorrow;

        IAirPuffHandler(strategyAddresses.AirPuffHandler).setPositionDebtValue(opr.user,posID, lendingVault[opr.toBorrow],block.timestamp);

        if (isUser[opr.user] == false) {
            isUser[opr.user] = true;
            allUsers.push(opr.user);
        }

        userInfo[opr.user].push(_userInfo);

        opr.done = true;

        _mint(opr.user, opd.weWETHPosition);
        emit Deposit(opr.user, opr.amount, opd.weWETHPosition, block.timestamp, posID, opr.leverage, opr.toBorrow);
    }

    function executeClosePosition(
        uint256 _closePositionID,
        address _user,
        bytes calldata _data,
        bytes calldata _data2,
        bool _swapSimple,
        bool _swapSimple2
    ) public {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: Only Keeper");
        ClosePositionRequest storage cpr = closePositionRequests[_user][_closePositionID];
        require(cpr.user != address(0), "AirPuff: close position request does not exist");
        require(!cpr.done, "AirPuff: close position request already executed");
        UserInfo storage _userInfo = userInfo[_user][cpr.userPositionID];

        address posBorrow = positionBorrowAsset[_user][cpr.userPositionID];
        address lenVault = lendingVault[posBorrow];

        if (!cpr.isLiquidation) {
            IERC20Upgradeable(strategyAddresses.weETH).transfer(strategyAddresses.AirPuffHandler, cpr.lendingRepayment);
            uint256 amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.lendingRepayment,_data,_swapSimple, strategyAddresses.weETH, posBorrow);
            uint256 repayAmount;
            if (amountOut < _userInfo.leverageAmount) {
                repayAmount = amountOut;
            } else {
                repayAmount = _userInfo.leverageAmount;
                IERC20Upgradeable(posBorrow).safeTransfer(feeConfiguration.lendingFeeReceiver, amountOut - repayAmount);
            }
            IERC20Upgradeable(posBorrow).safeIncreaseAllowance(lenVault, repayAmount);
            ILending(lenVault).repayDebt(_userInfo.leverageAmount, repayAmount);

            address depositedAsset = positionDepositAsset[_userInfo.user][cpr.userPositionID];
            if(depositedAsset != strategyAddresses.weETH) {
                IERC20Upgradeable(strategyAddresses.weETH).safeTransfer(strategyAddresses.AirPuffHandler, cpr.toLeverageUser);
                uint256 userAmountSwap = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.toLeverageUser,_data2,_swapSimple2, strategyAddresses.weETH, depositedAsset);
                if(depositedAsset == strategyAddresses.WETH) {
                    IWETH(strategyAddresses.WETH).withdraw(userAmountSwap);
                    payable(_userInfo.user).transfer(userAmountSwap);
                } else {
                    IERC20Upgradeable(depositedAsset).safeTransfer(_userInfo.user, userAmountSwap);
                }
            } else {
                IERC20Upgradeable(depositedAsset).safeTransfer(_userInfo.user, cpr.toLeverageUser);
            }
            _userInfo.closedPositionValue += cpr.toLeverageUser;
        } else {
            IERC20Upgradeable(strategyAddresses.weETH).transfer(strategyAddresses.AirPuffHandler, cpr.lendingRepayment);
            uint256 amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.lendingRepayment,_data,_swapSimple, strategyAddresses.weETH, posBorrow);
            IERC20Upgradeable(posBorrow).safeIncreaseAllowance(lenVault, amountOut);
            ILending(lenVault).repayDebt(_userInfo.leverageAmount, amountOut);
            _userInfo.liquidated = true;
        }

        IAirPuffHandler(strategyAddresses.AirPuffHandler).setPositionCloseTimestamp(_userInfo.user, cpr.userPositionID, block.timestamp);
        
        _userInfo.position = 0;
        _userInfo.leverageAmount = 0;
        _userInfo.closed = true;
        
        cpr.done = true;

        emit Withdraw(_userInfo.user, cpr.toLeverageUser, cpr.toLeverageUser, block.timestamp, cpr.userPositionID, _userInfo.leverage, posBorrow);
    }

    /** ----------- View functions ------------- */

    function getAllLendingVaults() public view returns (address[] memory) {
        return allLendingVaults;
    }

    function getPositionOpenRequestCount(address _user) public view returns (uint256) {
        return userOpenPositionCount[_user].length;
    }

    function getPositionCLoseRequestCount(address _user) public view returns (uint256) {
        return userClosePositionCount[_user].length;
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
    ) public view returns (uint256, uint256, uint256, uint256,uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0, 0, 0);

        //in Borrowed asset
        (uint256 leverageWithInterests,uint256 totalInterests) = IAirPuffHandler(strategyAddresses.AirPuffHandler).getPositionWithInterestRate(
            _user,
            _positionID);
        
        uint256 currentPositionValue = getCurrentPositionValue(_positionID, _user);
        (uint256 currentPosValueBorrowedAsset,) = _getInputAssetValue(leverageWithInterests, positionBorrowAsset[_user][_positionID]);
        uint256 currentDTV = currentPosValueBorrowedAsset.mulDiv(DECIMAL, currentPositionValue);

        return (
            currentDTV,
            currentPositionValue,
            currentPosValueBorrowedAsset,
            leverageWithInterests,
            totalInterests);
    }

    function getCurrentPositionValue(uint256 _positionID, address _user) public view returns (uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return 0;

        (uint256 pos,) = _getInputAssetValue(_userInfo.position, strategyAddresses.weETH);
        return pos;
    }

    /** ----------- User functions ------------- */

    function openPosition(
        uint256 _leverage,
        uint256 _amount,
        address _asset,
        address _toBorrow
    ) external payable whenNotPaused nonReentrant {
        
        require(isWhitelistedBorrowAsset[_toBorrow], "AirPuff: Borrow asset not whitelisted");
        require(isWhitelistedDepositAsset[_asset], "AirPuff: Deposit asset not whitelisted");
        BorrowedAssetLeverageBounds storage ball = borrowedAssetLeverageBounds[_toBorrow];
        require(_leverage >= ball.minLeverageLimit && _leverage <= ball.maxLeverageLimit, "AirPuff: Invalid borrowed asset leverage");

        uint256 amount;
        if (_asset == strategyAddresses.WETH) {
            require(msg.value > 0, "AirPuff: msg.value is 0");
            require(msg.value == _amount, "AirPuff: msg.value is not equal to amount");
            uint256 amountBefore = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));
            IWETH(strategyAddresses.WETH).deposit{value: msg.value}();
            uint256 amountAfter = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));
            amount = amountAfter - amountBefore;
        } else {
            require(_amount > 0, "AirPuff: amount is 0");
            require(msg.value == 0, "AirPuff: msg.value is not 0");
            IERC20Upgradeable(_asset).safeTransferFrom(msg.sender, address(this), _amount);
            amount = _amount;
        }
        
        (uint256 inputAssetValue, ) = _getInputAssetValue(amount, _asset);
        // console.log("inputAssetValue", inputAssetValue);

        uint256 toBorrowPrice = _getToBorrowPrice(_toBorrow);
        // console.log("toBorrowPrice", toBorrowPrice);

        uint256 borrowNotional = inputAssetValue * DECIMAL / toBorrowPrice;
        // console.log("borrowNotional", borrowNotional);
        uint256 decimalAdjustment = 10 ** (18-IWETH(_toBorrow).decimals());
        uint256 leveragedAmount = (borrowNotional.mulDiv(_leverage, DENOMINATOR) - borrowNotional) / decimalAdjustment;
        //console.log("leveragedAmount", leveragedAmount);

        bool status = ILending(lendingVault[_toBorrow]).lend(leveragedAmount,address(this));
        //require(status, "Lending: Lend failed");

        uint256 posCount = userOpenPositionCount[msg.sender].length;
        OpenPositionRequest storage opr = openPositionRequests[msg.sender][posCount];

        SwapData memory opd = swapData;
        if (_asset == strategyAddresses.weETH) {
            opd.toSwap1 = leveragedAmount;
            opr.isweWETH = true;
        } else {
            opd.toSwap1 = amount;
            opd.toSwap2 = leveragedAmount;
        }

        opr.user = msg.sender;
        opr.leveragedAmount = leveragedAmount;
        opr.leverage = _leverage;
        opr.amount = amount;
        opr.asset = _asset;
        opr.toBorrow = _toBorrow;
        opr.toSwap1 = opd.toSwap1;
        opr.toSwap2 = opd.toSwap2;

        userOpenPositionCount[msg.sender].push(posCount);

        emit RequestedPositionOpen(msg.sender, posCount);
    }

    function closePosition(
        uint256 _positionID,
        address _user
    ) external InvalidID(_positionID, _user) nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_userInfo.position > 0, "AirPuff: position is not enough to close");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");

        Datas memory data;
        CloseData memory closeData;
        BorrowedAssetLeverageBounds memory ball = borrowedAssetLeverageBounds[positionBorrowAsset[_user][_positionID]];

        //Check for liquidation
        (closeData.currentDTV,,,closeData.fulldebtValue,closeData.totalInterests) = getUpdatedDebt(_positionID, _user);

        if (closeData.currentDTV >= (ball.DTVLimit)) {
            revert("Wait for liquidation");
        }

        //weETH price in USD
        (uint256 weETHValue,) = _getInputAssetValue(DECIMAL, strategyAddresses.weETH);

        //Debt USD value
        (uint256 lendingDebt,) = _getInputAssetValue(closeData.fulldebtValue, positionBorrowAsset[_user][_positionID]);
        (closeData.totalInterests,) = _getInputAssetValue(closeData.totalInterests, positionBorrowAsset[_user][_positionID]);

        //Debt Conversion to weETH
        lendingDebt = lendingDebt * DECIMAL / weETHValue;
        //console.log("lendingDebt", lendingDebt);
        closeData.totalInterests = closeData.totalInterests * DECIMAL / weETHValue;
        //console.log("totalInterests", closeData.totalInterests);

        //Management fees taken on interests in weETH
        closeData.mFee = closeData.totalInterests.mulDiv(feeConfiguration.mFeePercent, MAX_BPS);
        //console.log("mFee", closeData.mFee);
        lendingDebt = lendingDebt - closeData.mFee;
        //console.log("lendingDebt", lendingDebt);

        //Position value in weETH
        data.totalweETHPosition = _userInfo.position - closeData.mFee;
        //console.log("totalweETHPosition", data.totalweETHPosition);
        
        data.lendingRepayment = lendingDebt;
        closeData.toLeverageUser = data.totalweETHPosition - data.lendingRepayment;
        //console.log("toLeverageUser", closeData.toLeverageUser);

        _burn(_user, _userInfo.position);
        ClosePositionRequest storage cpr = closePositionRequests[_user][userClosePositionCount[_user].length];
        uint256 withdrawFee;
        if (feeConfiguration.withdrawalFee > 0) {
            withdrawFee = cpr.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            cpr.toLeverageUser = cpr.toLeverageUser - withdrawFee;
        }

        if (closeData.mFee > 0) {
            IERC20Upgradeable(strategyAddresses.weETH).safeTransfer(feeConfiguration.mFeeReceiver, closeData.mFee);
        }

        cpr.user = _user;
        cpr.userPositionID = _positionID;
        cpr.lendingRepayment = data.lendingRepayment + withdrawFee;
        cpr.mFee = closeData.mFee;
        cpr.toLeverageUser = closeData.toLeverageUser;
        cpr.closeRequestID = userClosePositionCount[_user].length;
        cpr.isLiquidation = _userInfo.liquidated;
        cpr.totalInterests = closeData.totalInterests;

        userClosePositionCount[_user].push(userClosePositionCount[_user].length);

        emit ClosePositionRequested(_user, cpr.closeRequestID);
    }

    function liquidatePosition(uint256 _positionID, address _user) external nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        (uint256 currentDTV,,,,) = getUpdatedDebt(_positionID, _user);

        BorrowedAssetLeverageBounds memory ball = borrowedAssetLeverageBounds[positionBorrowAsset[_user][_positionID]];
        require(currentDTV >= ball.DTVLimit, "Liquidation Threshold Has Not Reached");

        uint256 position = _userInfo.position;
        _burn(_user, position);

        _userInfo.liquidator = msg.sender;


        uint256 liquidatorReward = position.mulDiv(feeConfiguration.liquidatorsRewardPercentage, MAX_BPS);
        uint256 amountAfterLiquidatorReward = position - liquidatorReward;

        ClosePositionRequest storage cpr = closePositionRequests[_user][userClosePositionCount[_user].length];

        IERC20Upgradeable(strategyAddresses.weETH).safeTransfer(msg.sender, liquidatorReward);

        cpr.user = _user;
        cpr.userPositionID = _positionID;
        cpr.lendingRepayment = amountAfterLiquidatorReward;
        cpr.closeRequestID = userClosePositionCount[_user].length;
        cpr.isLiquidation = true;

        userClosePositionCount[_user].push(userClosePositionCount[_user].length);


        emit Liquidated(_user, _positionID, msg.sender, position, liquidatorReward, block.timestamp);
    }

    /** ----------- Token functions ------------- */

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        require(allowedSenders[from] || allowedSenders[to] || allowedSenders[spender], "ERC20: transfer not allowed");
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address ownerOf = _msgSender();
        require(allowedSenders[ownerOf] || allowedSenders[to], "ERC20: transfer not allowed");
        _transfer(ownerOf, to, amount);
        return true;
    }

    function burn(uint256 amount) public virtual override {
    }

    /** ----------- Internal functions ------------- */

    function _getInputAssetValue(uint256 _amount, address _asset) internal view returns (uint256,uint256) {
        uint256 inputAssetValue;
        uint256 weETHPrice = IPendleOracle(strategyAddresses.pendleOracle).getExchangeRate();
        if (_asset == strategyAddresses.weETH) {
            uint256 ETHValue = _amount * weETHPrice / DECIMAL;
            inputAssetValue = ETHValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
        } else if (_asset == strategyAddresses.wstETH) {
            inputAssetValue = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset);
            inputAssetValue = inputAssetValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
            inputAssetValue = _amount * inputAssetValue / DECIMAL;
        } else  {
            inputAssetValue = (_amount * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset) / DECIMAL) * (10 ** (18-IWETH(_asset).decimals()));
        }

        return (inputAssetValue,weETHPrice);
    }

    function _getToBorrowPrice(address _toBorrow) internal view returns (uint256) {
        uint256 toBorrowPrice;
        if (_toBorrow == strategyAddresses.wstETH) {
            toBorrowPrice = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_toBorrow);
            toBorrowPrice = toBorrowPrice * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
        } else {
            toBorrowPrice = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_toBorrow);
        }
        return toBorrowPrice;
    }

    receive() external payable {
    }
}
