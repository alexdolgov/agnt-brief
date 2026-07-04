// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "../interfaces/ILending.sol";
import "../interfaces/IAPI3Oracle.sol";
import "../interfaces/IVaultM.sol";

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}


interface IAirPuffHandler {
    function handlerSwap(bool isSimple, uint256 _amount,address _assetFrom,address _assetTo, bool _isClose, bool _isBalancer)  external returns (uint256);
    function getPositionWithInterestRate(address _user, uint256 _positionID, address _AirPuffVault) external view returns (uint256,uint256);
    function getLatestData(address _asset) external view returns (uint256);
    function keeper() external view returns (address);
    function vaultCurrentSnapshotID(address _vault) external view returns (uint256);
}

abstract contract AirPuffVaultM is IVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;

    FeeConfiguration public feeConfiguration;
    StrategyAddresses public strategyAddresses;
    LeverageBounds public leverageBounds;
    SwapData private swapData;

    address public LendingVault;
    uint256 public DTVLimit;

    address[] private allUsers;
    uint256 internal MAX_BPS;
    uint256 internal DENOMINATOR;
    uint256 internal DECIMAL;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public isUser;
    mapping(address => bool) public isSwapSimple;
    mapping(address => bool) public isBalancer;
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
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 leverage, uint256 repayAmount, uint256 time, uint256 userTokensBurned);
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newLendingFeeReceiver
    );
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 reward,
        uint256 time
    );
    event SetLendingVault(address vault);
    event SetStrategyAddresses(address API3Oracle, address AirPuffHandler);
    event SetDTVLimit(uint256 DTVLimit);
    event LeverageBoundsSet(uint256 minLeverage, uint256 maxLeverage, uint256 minDeposit);
    event SetIsSwapSimple(bool isSimple);
    event SetIsBalancer(bool isBalancer);

    /** ----------- Change onlyOwner functions ------------- */

    function setIsSwapSimple(bool _isSimple) external onlyOwner {
        isSwapSimple[strategyAddresses.LRTAsset] = _isSimple;
        emit SetIsSwapSimple(_isSimple);
    }

    function setIsBalancer(bool _isBalancer) external onlyOwner {
        isBalancer[strategyAddresses.LRTAsset] = _isBalancer;
        emit SetIsBalancer(_isBalancer);
    }

    function setStrategyAddresses(
        address _API3Oracle,
        address _AirPuffHandler
    ) external onlyOwner {
        strategyAddresses.API3Oracle = _API3Oracle;
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        emit SetStrategyAddresses(_API3Oracle, _AirPuffHandler);
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
        require(_minLeverage >= 1000 && _maxLeverage >= 15000, "AirPuff: incorrect leverage bounds");
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
        address _mFeeReceiver
    ) external onlyOwner {
        require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        require(_mFeePercent <= 90000, "Invalid mFeePercent");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.lendingFeeReceiver = _lendingFeeReceiver;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;
        feeConfiguration.mFeePercent = _mFeePercent;

        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _lendingFeeReceiver
        );
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /** ----------- View functions ------------- */

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
            _positionID,
            address(this));
        
        //In USD value of position
        uint256 currentPositionValue = getCurrentPositionValue(_positionID, _user);

        //In Borrowed asset USD value
        (uint256 currentPosValueBorrowedAsset,) = _getInputAssetValue(leverageWithInterests, strategyAddresses.WETH);
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

        (uint256 pos,) = _getInputAssetValue(_userInfo.position, strategyAddresses.LRTAsset);
        return pos;
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

        //swap logic here
        IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(strategyAddresses.AirPuffHandler, leveragedAmount + amount);
        uint256 LRTAssetPosition = IAirPuffHandler(strategyAddresses.AirPuffHandler).handlerSwap(isSwapSimple[strategyAddresses.LRTAsset],leveragedAmount + amount, strategyAddresses.WETH,strategyAddresses.LRTAsset, false, isBalancer[strategyAddresses.LRTAsset]);
        require(LRTAssetPosition > 0, "AirPuff: LRTAssetPosition is 0");

        uint256 posID = userInfo[msg.sender].length;
        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: amount,
            leverage: _leverage,
            position: LRTAssetPosition,
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

        _mint(msg.sender, LRTAssetPosition);

        emit Deposit(msg.sender, amount, LRTAssetPosition, block.timestamp, posID, _leverage);
    }

    function closePosition(uint256 _positionID) external InvalidID(_positionID, msg.sender) nonReentrant notTrxOrigin {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_userInfo.position > 0, "AirPuff: position is not enough to close");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");
        uint256 positionID = _positionID;

        CloseData memory closeData;
        SwapData memory sData;

        //Check for liquidation
        (closeData.currentDTV,,,closeData.fulldebtValue,closeData.totalInterests) = getUpdatedDebt(positionID, msg.sender);

        if (closeData.currentDTV >= (DTVLimit)) {
            revert("Wait for liquidation");
        }

        //LRTAsset price in USD
        (uint256 LRTAssetValue,) = _getInputAssetValue(DECIMAL, strategyAddresses.LRTAsset);

        //Debt USD value
        (closeData.lendingRepayment,) = _getInputAssetValue(closeData.fulldebtValue, strategyAddresses.WETH);

        (closeData.totalInterests,) = _getInputAssetValue(closeData.totalInterests, strategyAddresses.WETH);

        //Debt Conversion to LRTAsset
        closeData.lendingRepayment = closeData.lendingRepayment * DECIMAL / LRTAssetValue;

        closeData.totalInterests = closeData.totalInterests * DECIMAL / LRTAssetValue;
        
        //Management fees taken on interests in LRTAsset
        closeData.mFee = closeData.totalInterests.mulDiv(feeConfiguration.mFeePercent, MAX_BPS);

        closeData.lendingRepayment = closeData.lendingRepayment - closeData.mFee - closeData.totalInterests;

        //Position value in LRTAsset
        closeData.totalLRTAssetPosition = _userInfo.position - closeData.mFee - closeData.totalInterests;

        uint256 userTokensBurned = _userInfo.position;
        _burn(msg.sender, _userInfo.position);
        
        if (closeData.mFee > 0) {
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(feeConfiguration.mFeeReceiver, closeData.mFee);
        }

        if (closeData.totalInterests > 0) {
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(feeConfiguration.lendingFeeReceiver,closeData.totalInterests);
        }

        closeData.toLeverageUser = closeData.totalLRTAssetPosition - closeData.lendingRepayment;
        
        uint256 withdrawFee;
        if (feeConfiguration.withdrawalFee > 0) {
            withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(feeConfiguration.feeReceiver, withdrawFee);
        }

        closeData.toLeverageUser = closeData.toLeverageUser - withdrawFee;

        IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(strategyAddresses.AirPuffHandler, (closeData.lendingRepayment + closeData.toLeverageUser));
        sData.amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).handlerSwap(isSwapSimple[strategyAddresses.LRTAsset],(closeData.lendingRepayment + closeData.toLeverageUser), strategyAddresses.LRTAsset, strategyAddresses.WETH, true, isBalancer[strategyAddresses.LRTAsset]);

        if (sData.amountOut < _userInfo.leverageAmount) {
            sData.repayAmount = sData.amountOut;
        } else {
            _userInfo.closed = true;
            _userInfo.position = 0;
            sData.repayAmount = _userInfo.leverageAmount;
            sData.toLeverageUserOut = sData.amountOut - sData.repayAmount;
            IWETH(strategyAddresses.WETH).withdraw(sData.toLeverageUserOut);
            payable(msg.sender).transfer(sData.toLeverageUserOut);
        }

        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, sData.repayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, sData.repayAmount);

        _userInfo.leverageAmount = 0;
        PositionTimestamps storage pts = positionTimestamps[_userInfo.user][positionID];
        pts.closeTimestamp = block.timestamp;
        
        emit Withdraw(_userInfo.user, positionID, sData.toLeverageUserOut, _userInfo.leverage, sData.repayAmount, block.timestamp, userTokensBurned);
    }

    function liquidatePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        (uint256 currentDTV,,,,) = getUpdatedDebt(_positionID, _user);
        CloseData memory closeData;

        require(currentDTV >= DTVLimit, "Liquidation not required");

        uint256 position = _userInfo.position;
        _burn(_user, position);

        _userInfo.liquidator = msg.sender;

        IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(strategyAddresses.AirPuffHandler, _userInfo.position);
        uint256 amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).handlerSwap(isSwapSimple[strategyAddresses.LRTAsset], _userInfo.position, strategyAddresses.LRTAsset, strategyAddresses.WETH, true, isBalancer[strategyAddresses.LRTAsset]);

        uint256 lendingRepayAmount;
        uint256 liquidatorReward;
        if (amountOut < _userInfo.leverageAmount) {
            lendingRepayAmount = amountOut;
        } else {
            lendingRepayAmount = _userInfo.leverageAmount;
            liquidatorReward = amountOut - lendingRepayAmount;
            IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(msg.sender, liquidatorReward);
        }

        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, lendingRepayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, lendingRepayAmount);

        _userInfo.liquidated = true;

        emit Liquidated(_user, _positionID, msg.sender, liquidatorReward, block.timestamp);
    }

    /** ----------- Token functions ------------- */

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {}

    function transfer(address to, uint256 amount) public virtual override returns (bool) {}

    function burn(uint256 amount) public virtual override {}

    function burnFrom(address from, uint256 amount) public virtual override {}

    /** ----------- Internal functions ------------- */

    function _getInputAssetValue(uint256 _amount, address _asset) internal view returns (uint256,uint256) {
        uint256 inputAssetValue;
        (int224 LRTAssetPriceInt,) = IAPI3Oracle(strategyAddresses.API3Oracle).read();
        uint256 LRTAssetPrice = abi.decode(abi.encode(LRTAssetPriceInt), (uint256));

        if (_asset == strategyAddresses.LRTAsset) {
            uint256 ETHValue = _amount * LRTAssetPrice / DECIMAL;
            inputAssetValue = ETHValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
        } else  {
            inputAssetValue = (_amount * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset) / DECIMAL) * (10 ** (18-IWETH(_asset).decimals()));
        }

        return (inputAssetValue,LRTAssetPrice);
    }

    receive() external payable {}
}