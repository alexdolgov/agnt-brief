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

interface IAPI3Oracle {
        function read()
        external
        view
        returns (int224 value, uint32 timestamp);
        function getExchangeRate() external view returns (uint256);
}

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}

interface IEtherFi {
    function deposit() external payable;
}

interface IeETH {
    function wrap(uint256 _eETHAmount) external;
}

interface IAirPuffHandler {
    function getPositionWithInterestRate(address _user, uint256 _positionID, address _AirPuffVault) external view returns (uint256,uint256);
    function keeper() external view returns (address);
    function vaultCurrentSnapshotID(address _vault) external view returns (uint256);
    function getLatestData(address _token) external view returns (uint256);
}

interface ICellar {
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
    function maxWithdraw(address owner) external view returns (uint256);
    function totalAssetsWithdrawable() external view returns (uint256);
    function multiAssetDeposit(address depositAsset,uint256 assets,address receiver) external returns (uint256 shares);
}

interface IOracle {
    function answer() external view returns (uint256);
}

abstract contract AirPuffVaultLiquid is IVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable, ERC20BurnableUpgradeable {
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
    mapping(address => mapping(uint256 => PositionTimestamps)) public positionTimestamps;
    
    uint256[50] private __gaps;

    mapping(address => bool) public allowedDepositAssets;
    mapping(address => mapping(uint256 => address)) public positionDepositAsset;
    mapping(address => address) public depositAssetOracle;
    EtherFiData public etherFiData;

    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "AirPuff: positionID is not valid");
        _;
    }

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage, address asset);
    event Withdraw(address indexed user, uint256 positionID, uint256 amount, uint256 leverage, uint256 repayAmount, uint256 time, uint256 userTokensBurned, address asset);
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
    event SetStrategyAddresses(address AirPuffHandler, address Oracle, address Cellar);
    event SetDTVLimit(uint256 DTVLimit);
    event LeverageBoundsSet(uint256 minLeverage, uint256 maxLeverage, uint256 minDeposit);
    event SetIsSwapSimple(bool isSimple);
    event SetIsBalancer(bool isBalancer);
    event SetAllowedDepositAsset(address asset, bool status, address API3Oracle);
    event SetEtherFiData(address etherFi, address eETH, address weETH);

    /** ----------- Change onlyOwner functions ------------- */

    function setAllowedDepositAssets(address _asset, bool _status, address _API3Oracle) external onlyOwner {
        allowedDepositAssets[_asset] = _status;
        depositAssetOracle[_asset] = _API3Oracle;
        emit SetAllowedDepositAsset(_asset, _status, _API3Oracle);
    }

    function setEtherFiData(address _etherFiPool, address _eETH, address _weETH) external onlyOwner {
        etherFiData.EtherFiPool = _etherFiPool;
        etherFiData.eETH = _eETH;
        etherFiData.weETH = _weETH;
        emit SetEtherFiData(_etherFiPool, _eETH, _weETH);
    }

    function setStrategyAddresses(
        address _AirPuffHandler,
        address _CellarOracle,
        address _Cellar
    ) external onlyOwner {
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        strategyAddresses.CellarOracle = _CellarOracle;
        strategyAddresses.Cellar = _Cellar;
        emit SetStrategyAddresses(_AirPuffHandler, _CellarOracle, _Cellar);
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
    ) public view returns (uint256, uint256, uint256, uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0, 0);

        //in vault shares
        (uint256 leverageWithInterests,uint256 totalInterests) = IAirPuffHandler(strategyAddresses.AirPuffHandler).getPositionWithInterestRate(
            _user,
            _positionID,
            address(this));
        
        //In ETH value of position
        uint256 oraclePrice = IOracle(strategyAddresses.CellarOracle).answer();
        uint256 currentPositionValue = _userInfo.position.mulDiv(oraclePrice, DECIMAL);

        uint256 currentDTV = leverageWithInterests.mulDiv(DECIMAL, currentPositionValue);

        return (
            currentDTV,
            currentPositionValue,
            leverageWithInterests,
            totalInterests);
    }

    /** ----------- User functions ------------- */
    function openPosition(uint256 _leverage, address _asset, uint256 _amount) external payable whenNotPaused nonReentrant {
        require(_leverage >= leverageBounds.minLeverage && _leverage <= leverageBounds.maxLeverage, "AirPuff: leverage is out of bounds");
        require(allowedDepositAssets[_asset], "AirPuff: asset not allowed");
        OpenData memory od;

        if (_asset != strategyAddresses.WETH) {
            require(msg.value == 0, "Value must be 0 for ERC20 deposits");
            require(_amount >= leverageBounds.minDeposit, "AirPuff: deposit is less than minimum");
            IERC20Upgradeable(_asset).safeTransferFrom(msg.sender, address(this), _amount);
            od.amount = _amount;
        } else {
            require(msg.value >= leverageBounds.minDeposit, "AirPuff: deposit is less than minimum");
            require(msg.value == _amount, "AirPuff: incorrect deposit amount");
            od.amount = msg.value;
            IWETH(strategyAddresses.WETH).deposit{value: msg.value}();
        }
        
        od.borrowNotional = _getInputAssetValue(od.amount, _asset) * DECIMAL / _getAssetPrice(strategyAddresses.WETH);
        od.leveragedAmount = od.borrowNotional.mulDiv(_leverage, DENOMINATOR) - od.borrowNotional;
        require(od.leveragedAmount > 0, "AirPuff: leveragedAmount is 0");

        ILending(LendingVault).lend(od.leveragedAmount,address(this));

        od.wethDepositAmount;
        od.LRTAssetPosition;
        if (_asset != strategyAddresses.WETH) {
            IERC20Upgradeable(_asset).safeIncreaseAllowance(strategyAddresses.Cellar, od.amount);
            od.LRTAssetPosition += ICellar(strategyAddresses.Cellar).multiAssetDeposit(_asset, od.amount, address(this));
            od.wethDepositAmount = od.leveragedAmount;
        } else {
            od.wethDepositAmount = od.leveragedAmount + od.amount;
        }

        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(strategyAddresses.Cellar, od.wethDepositAmount);
        od.LRTAssetPosition += ICellar(strategyAddresses.Cellar).deposit(od.wethDepositAmount, address(this));
        require(od.LRTAssetPosition > 0, "AirPuff: LRTAssetPosition is 0");

        od.posID = userInfo[msg.sender].length;
        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: od.amount,
            leverage: _leverage,
            position: od.LRTAssetPosition,
            positionWETHAmount: od.leveragedAmount + od.amount,
            positionLending: 0,
            liquidated: false,
            liquidator: address(0),
            leverageAmount: od.leveragedAmount,
            positionId: od.posID,
            closed: false
        });

        PositionTimestamps storage pts = positionTimestamps[msg.sender][od.posID];
        pts.openTimestamp = block.timestamp;
        pts.vaultSnapshotID = IAirPuffHandler(strategyAddresses.AirPuffHandler).vaultCurrentSnapshotID(LendingVault);

        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);
        positionDepositAsset[msg.sender][od.posID] = _asset;

        _mint(msg.sender, od.LRTAssetPosition);

        emit Deposit(msg.sender, od.amount, od.LRTAssetPosition, block.timestamp, od.posID, _leverage, _asset);
    }

    function closePosition(uint256 _positionID) external InvalidID(_positionID, msg.sender) nonReentrant {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(_userInfo.position > 0, "AirPuff: position is not enough to close");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");
        uint256 positionID = _positionID;

        CloseData memory closeData;
        SwapData memory sData;

        //Check for liquidation
        (closeData.currentDTV,,,closeData.totalInterests) = getUpdatedDebt(positionID, msg.sender);

        if (closeData.currentDTV >= (DTVLimit)) {
            revert("Wait for liquidation");
        }

        uint256 userTokensBurned = _userInfo.position;
        _burn(msg.sender, _userInfo.position);

        IERC20Upgradeable(strategyAddresses.Cellar).safeIncreaseAllowance(strategyAddresses.Cellar, _userInfo.position);
        sData.amountOut = ICellar(strategyAddresses.Cellar).redeem(_userInfo.position, address(this), address(this));
        require(sData.amountOut > _userInfo.leverageAmount, "Wait for liquidation");

        sData.repayAmount = _userInfo.leverageAmount;
        closeData.toLeverageUser = sData.amountOut - sData.repayAmount - closeData.totalInterests;

        //Management fees taken on interests in WETH
        closeData.mFee = closeData.totalInterests.mulDiv(feeConfiguration.mFeePercent, MAX_BPS);
        closeData.totalInterests -= closeData.mFee;
        
        if (closeData.mFee > 0) {
            IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.mFeeReceiver, closeData.mFee);
        }

        if (closeData.totalInterests > 0) {
            IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.lendingFeeReceiver,closeData.totalInterests);
        }
        
        uint256 withdrawFee;
        if (feeConfiguration.withdrawalFee > 0) {
            withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            IERC20Upgradeable(strategyAddresses.WETH).safeTransfer(feeConfiguration.feeReceiver, withdrawFee);
        }

        sData.toLeverageUserOut = closeData.toLeverageUser - withdrawFee;

        _userInfo.closed = true;
        _userInfo.position = 0;
        _userInfo.leverageAmount = 0;
        
        IWETH(strategyAddresses.WETH).withdraw(sData.toLeverageUserOut);
        address depositedAsset = positionDepositAsset[msg.sender][positionID];
    
        if (depositedAsset != strategyAddresses.WETH && depositedAsset != address(0)) {
            uint256 balOfeETHBefore = IERC20Upgradeable(etherFiData.eETH).balanceOf(address(this));
            IEtherFi(etherFiData.EtherFiPool).deposit{value: sData.toLeverageUserOut}();
            uint256 balOfeETHAfter = IERC20Upgradeable(etherFiData.eETH).balanceOf(address(this));
            sData.toLeverageUserOut = balOfeETHAfter - balOfeETHBefore;

            //got eETH at this point
            if (depositedAsset == etherFiData.weETH) {
                IERC20Upgradeable(etherFiData.eETH).safeIncreaseAllowance(etherFiData.weETH, sData.toLeverageUserOut);
                uint256 balOfweETHBefore = IERC20Upgradeable(etherFiData.weETH).balanceOf(address(this));
                IeETH(etherFiData.weETH).wrap(sData.toLeverageUserOut);
                uint256 balOfweETHAfter = IERC20Upgradeable(etherFiData.weETH).balanceOf(address(this));
                sData.toLeverageUserOut = balOfweETHAfter - balOfweETHBefore;
                IERC20Upgradeable(etherFiData.weETH).safeTransfer(msg.sender, sData.toLeverageUserOut);
            } else {
                IERC20Upgradeable(etherFiData.eETH).safeTransfer(msg.sender, sData.toLeverageUserOut);
            }
        } else {
            (bool closeSuccess, ) = msg.sender.call{ value: sData.toLeverageUserOut }("");
            require(closeSuccess, "AirPuff: close failed");
        }
        

        IERC20Upgradeable(strategyAddresses.WETH).safeIncreaseAllowance(LendingVault, sData.repayAmount);
        ILending(LendingVault).repayDebt(_userInfo.leverageAmount, sData.repayAmount);

        PositionTimestamps storage pts = positionTimestamps[_userInfo.user][positionID];
        pts.closeTimestamp = block.timestamp;
        
        emit Withdraw(_userInfo.user, positionID, sData.toLeverageUserOut, _userInfo.leverage, sData.repayAmount, block.timestamp, userTokensBurned, depositedAsset);
    }

    function liquidatePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        (uint256 currentDTV,,,) = getUpdatedDebt(_positionID, _user);
        CloseData memory closeData;

        require(currentDTV >= DTVLimit, "Liquidation not required");

        uint256 position = _userInfo.position;
        _burn(_user, position);

        _userInfo.liquidator = msg.sender;

        IERC20Upgradeable(strategyAddresses.Cellar).safeIncreaseAllowance(strategyAddresses.Cellar, _userInfo.position);
        uint256 amountOut = ICellar(strategyAddresses.Cellar).redeem(_userInfo.position, address(this), address(this));

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

    // -- Internal functions -- //

    function _getInputAssetValue(uint256 _amount, address _asset) internal view returns (uint256) {
        uint256 inputAssetValue;

        if (_asset != strategyAddresses.WETH) {
            (int224 LRTAssetPriceInt,) = IAPI3Oracle(depositAssetOracle[_asset]).read();
            uint256 LRTAssetPrice = abi.decode(abi.encode(LRTAssetPriceInt), (uint256));
            uint256 ETHValue = _amount * LRTAssetPrice / DECIMAL;
            inputAssetValue = ETHValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
        } else {
            inputAssetValue = (_amount * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset) / DECIMAL) * (10 ** (18-IWETH(_asset).decimals()));
        }

        return (inputAssetValue);
    }

    function _getAssetPrice(address _asset) internal view returns (uint256) {
        uint256 price = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset);
        return price;
    }

    receive() external payable {}
}