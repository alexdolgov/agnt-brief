// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "../interfaces/ILending.sol";
import "../interfaces/IAPI3Oracle.sol";

interface IVault {

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
        uint256 executionFee;
        uint256 oracleSlippage;
        uint256 maxSwapSlippage;
    }

    struct Datas {
        uint256 totalLRTAssetPosition;
        uint256 lendingRepayment;
    }

    struct StrategyAddresses {
        address LRTAsset;
        address wstETH;
        address WETH;
        address API3Oracle;
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

    struct PositionTimestamps {
        uint256 openTimestamp;
        uint256 closeTimestamp;
        uint256 vaultSnapshotID;
    }

    struct KeeperCloseData {
        uint256 interestsPortion;
        uint256 amountOut;
        uint256 interestsAmount;
        uint256 repayAmount;
        address depositedAsset;
        address posBorrow;
        address lenVault;
        uint256 repaymentDiff;
    }

}

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256) external;
    function decimals() external view returns (uint8);
}

interface IAirPuffHandler {
    function executeSwap(uint256 _amount, bytes calldata _data, bool _swapSimple, address _assetIn, address _assetOut) external returns (uint256);
    function getPositionWithInterestRate(address _user, uint256 _positionID, address _AirPuffVault) external view returns (uint256,uint256);
    function getLatestData(address _asset) external view returns (uint256);
    function keeper() external view returns (address);
    function vaultCurrentSnapshotID(address _vault) external view returns (uint256);
}

abstract contract AirPuffVault is IVault, OwnableUpgradeable, ReentrancyGuardUpgradeable, ERC20BurnableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;

    FeeConfiguration public feeConfiguration;
    StrategyAddresses public strategyAddresses;
    KeeperCloseData private keeperCloseData;
    SwapData private swapData;

    address[] private allUsers;
    uint256 internal MAX_BPS;
    uint256 internal DENOMINATOR;
    uint256 internal DECIMAL;
    address[] private allLendingVaults;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public allowedSenders;
    mapping(address => bool) public isUser;
    mapping(address => mapping(uint256 => address)) public positionDepositAsset;
    mapping(address => mapping(uint256 => address)) public positionBorrowAsset;
    mapping(address => bool) public isWhitelistedDepositAsset;
    mapping(address => bool) public isWhitelistedBorrowAsset;
    mapping(address => address) public lendingVault;
    mapping(address => mapping(uint256 => OpenPositionRequest)) public openPositionRequests;
    mapping(address => uint256[]) private userOpenPositionCount;
    mapping(address => mapping(uint256 => ClosePositionRequest)) public closePositionRequests;
    mapping(address => uint256[]) private userClosePositionCount;
    mapping(address => BorrowedAssetLeverageBounds) public borrowedAssetLeverageBounds;
    mapping(address => mapping(uint256 => PositionTimestamps)) public positionTimestamps;
    mapping(address => mapping(uint256 => bool)) public inCloseProcess;
   
    uint256[50] private __gaps;

    uint256 public priceAdapter;
    mapping(address => mapping(uint256 => uint256)) public closeRequestInterestsBorrowedAsset;

    /** --------------------- Event --------------------- */
    event Deposit(address indexed user,uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage, address borrowedAsset);
    event Withdraw(address indexed user, uint256 amount, uint256 tokenAmount, uint256 time, uint256 positionID, uint256 leverage, address borrowedAsset, uint256 interestsAmount, uint256 originalInterestsAmount);
    event ProtocolFeeChanged(
        address newFeeReceiver,
        uint256 newWithdrawalFee,
        address newLendingFeeReceiver,
        uint256 liquidatorsRewardPercentage,
        uint256 executionFee,
        uint256 oracleSlippage,
        uint256 maxSwapSlippage
    );
    event Liquidated(
        address indexed user,
        uint256 indexed positionId,
        address liquidator,
        uint256 closeRequestID,
        uint256 positionSize,
        uint256 time,
        uint256 interestsAmount
    );
    event SetWhitelistedBorrowAsset(address indexed asset, bool whitelisted);
    event SetWhitelistedDepositAsset(address indexed asset, bool whitelisted);
    event SetLendingVault(address indexed asset, address vault);
    event SetStrategyAddresses(address API3Oracle, address AirPuffHandler);
    event RequestedPositionOpen(address indexed user, uint256 indexed positionID);
    event ClosePositionRequested(address indexed user, uint256 indexed closeRequestID, uint256 _positionID, uint256 _interestsInBorrowedAsset);
    event BorrowedAssetLeverageLimit(address indexed asset, uint256 maxLimit,uint256 minLimit,uint256 DTVLimit);
    event CancelOpenPosition(uint256 indexed requestPositionID, address indexed user);

    /** ----------- Change onlyOwner functions ------------- */

    function setPriceAdapter(uint256 _priceAdapter) external onlyOwner {
        priceAdapter = _priceAdapter;
    }
    
    //Zero addresses check are not implemented due to contract size limitations
    /**
    * @notice Sets leverage limits for a specific borrowed asset
    * @param _asset The address of the asset
    * @param _maxLimit The maximum leverage limit
    * @param _minLimit The minimum leverage limit
    * @param _DTVLimit The debt-to-value limit
    * @dev Only callable by the contract owner. Emits BorrowedAssetLeverageLimit event.
    */
    function setBorrowedAssetLeverageLimit(address _asset, uint256 _maxLimit,uint256 _minLimit, uint256 _DTVLimit) external onlyOwner {
        //require(_maxLimit >= _minLimit && _maxLimit <= 50000 && _minLimit >= 1100 && _DTVLimit < 1e18, "AirPuff: Wong leverage limits");
        BorrowedAssetLeverageBounds storage ball = borrowedAssetLeverageBounds[_asset];
        ball.asset = _asset;
        ball.maxLeverageLimit = _maxLimit;
        ball.minLeverageLimit = _minLimit;
        ball.DTVLimit = _DTVLimit;
        emit BorrowedAssetLeverageLimit(_asset, _maxLimit, _minLimit, _DTVLimit);
    }

    /**
    * @notice Sets the addresses for API3Oracle and AirPuffHandler
    * @param _API3Oracle Address of the API3 Oracle
    * @param _AirPuffHandler Address of the AirPuff Handler
    * @dev Only callable by the contract owner. Emits SetStrategyAddresses event.
    */
    function setStrategyAddresses(
        address _API3Oracle,
        address _AirPuffHandler
    ) external onlyOwner {
        strategyAddresses.API3Oracle = _API3Oracle;
        strategyAddresses.AirPuffHandler = _AirPuffHandler;
        emit SetStrategyAddresses(_API3Oracle, _AirPuffHandler);
    }

    // /**
    // * @notice Sets the lending vault address for a specific asset
    // * @param _asset The asset for which to set the vault
    // * @param _vault The vault's address
    // * @dev Only callable by the contract owner. Emits SetLendingVault event.
    // */
    // function setLendingVault(address _asset, address _vault) public onlyOwner {
    //     //require(lendingVault[_asset] == address(0), "AirPuff: vault already set");
    //     lendingVault[_asset] = _vault;
    //     allLendingVaults.push(_vault);
    //     emit SetLendingVault(_asset, _vault);
    // }

    /**
    * @notice Whitelists a deposit asset
    * @param _asset The address of the asset to whitelist
    * @param _whitelisted Whether the asset is whitelisted
    * @dev Only callable by the contract owner. Emits SetWhitelistedDepositAsset event.
    */
    function setWhitelistedDepositAsset(address _asset, bool _whitelisted) public onlyOwner {
        isWhitelistedDepositAsset[_asset] = _whitelisted;
        emit SetWhitelistedDepositAsset(_asset, _whitelisted);
    }

    /**
    * @notice Whitelists a borrow asset
    * @param _asset The address of the asset to whitelist
    * @param _whitelisted Whether the asset is whitelisted
    * @dev Only callable by the contract owner. Emits SetWhitelistedBorrowAsset event.
    */
    function setWhitelistedBorrowAsset(address _asset, bool _whitelisted) public onlyOwner {
        isWhitelistedBorrowAsset[_asset] = _whitelisted;
        emit SetWhitelistedBorrowAsset(_asset, _whitelisted);
    }

    /**
    * @notice Updates the protocol fee configuration
    * @param _feeReceiver The address to receive withdrawal fees
    * @param _withdrawalFee The fee percentage for withdrawals
    * @param _lendingFeeReceiver The address to receive lending fees
    * @param _liquidatorsRewardPercentage The percentage reward for liquidators
    * @param _mFeePercent The management fee percentage
    * @param _mFeeReceiver The address to receive management fees
    * @param _executionFee The fee for executing swaps
    * @param _oracleSlippage The slippage percentage for oracle price
    * @param _maxSwapSlippage The maximum allowed slippage for swaps
    * @dev Only callable by the contract owner. Emits ProtocolFeeChanged event.
    */
    function setProtocolFee(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _lendingFeeReceiver,
        uint256 _liquidatorsRewardPercentage,
        uint256 _mFeePercent,
        address _mFeeReceiver,
        uint256 _executionFee,
        uint256 _oracleSlippage,
        uint256 _maxSwapSlippage
    ) external onlyOwner {
        // require(_withdrawalFee <= MAX_BPS, "Invalid fees");
        // require(_mFeePercent <= 90000 &&
        // _executionFee <= 0.1e18 &&
        // _oracleSlippage <= MAX_BPS &&
        // _maxSwapSlippage <= MAX_BPS, "Invalid fees params");

        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.lendingFeeReceiver = _lendingFeeReceiver;
        feeConfiguration.liquidatorsRewardPercentage = _liquidatorsRewardPercentage;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;
        feeConfiguration.mFeePercent = _mFeePercent;
        feeConfiguration.executionFee = _executionFee;
        feeConfiguration.oracleSlippage = _oracleSlippage;
        feeConfiguration.maxSwapSlippage = _maxSwapSlippage;

        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _lendingFeeReceiver,
            _liquidatorsRewardPercentage,
            _executionFee,
            _oracleSlippage,
            _maxSwapSlippage
        );
    }

    // /**
    // * @notice Cancels an open position request based on a pre-existing request ID
    // * @param _requestPositionID The ID of the request position to be cancelled
    // * @param _user The user for whom the position is being cancelled
    // * @dev Requires sender to be the owner. Emits CancelOpenPosition event. Refunds the user's deposit assets + fees and repays lending.
    // */
    // function cancelOpenPositionRequest(uint256 _requestPositionID, address _user) external nonReentrant onlyOwner {
    //     OpenPositionRequest storage opr = openPositionRequests[_user][_requestPositionID];
    //     require(opr.user != address(0), "AirPuff: open position request does not exist");
    //     require(!opr.done, "AirPuff: open position request already executed");
    //     opr.done = true;
    //     if (opr.asset == strategyAddresses.WETH) {
    //         IWETH(strategyAddresses.WETH).withdraw(opr.amount);
    //         (bool refundSuccess, ) = opr.user.call{ value: opr.amount }("");
    //         require(refundSuccess, "Refund failed");
    //     } else {
    //         IERC20Upgradeable(opr.asset).safeTransfer(opr.user, opr.amount);
    //     }
    //     IERC20Upgradeable(opr.toBorrow).safeIncreaseAllowance(lendingVault[opr.toBorrow], opr.leveragedAmount);
    //     ILending(lendingVault[opr.toBorrow]).repayDebt(opr.leveragedAmount, opr.leveragedAmount);

    //     (bool feeRefundSuccess, ) = opr.user.call{ value: feeConfiguration.executionFee }("");
    //     require(feeRefundSuccess, "Refund fees failed");

    //     emit CancelOpenPosition(_requestPositionID, _user);
    // }

    /**
    * @notice Executes an open position request based on a pre-existing request ID
    * @param _requestPositionID The ID of the request position
    * @param _user The user for whom the position is being opened
    * @param _data Data parameter for swap execution
    * @param _data2 Second data parameter for swap execution, if needed
    * @param _swapSimple Boolean indicating if the swap is simple
    * @param _swapSimple2 Boolean indicating if the second swap is simple
    * @dev Requires sender to be the keeper. Calculates and mints the position tokens to the user. Emits Deposit event.
    */
    function executeOpenPosition(
        uint256 _requestPositionID,
        address _user,
        bytes calldata _data,
        bytes calldata _data2,
        bool _swapSimple,
        bool _swapSimple2
    ) public nonReentrant {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: Only Keeper");
        OpenPositionRequest storage opr = openPositionRequests[_user][_requestPositionID];
        SwapData memory opd = swapData;
        require(opr.user != address(0), "AirPuff: open position request does not exist");
        require(!opr.done, "AirPuff: open position request already executed");

        uint256 swappedB;
        if (opr.isweWETH) {
            IERC20Upgradeable(opr.toBorrow).safeTransfer(strategyAddresses.AirPuffHandler, opr.toSwap1);
            opd.amountOut1 = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap1, _data, _swapSimple,opr.toBorrow, strategyAddresses.LRTAsset);
            opd.weWETHPosition = opr.amount + opd.amountOut1;
            swappedB = opd.amountOut1;
        } else {
            IERC20Upgradeable(opr.asset).safeTransfer(strategyAddresses.AirPuffHandler, opr.toSwap1);
            opd.amountOut1 =IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap1, _data, _swapSimple, opr.asset, strategyAddresses.LRTAsset);
            IERC20Upgradeable(opr.toBorrow).safeTransfer(strategyAddresses.AirPuffHandler, opr.toSwap2);
            opd.amountOut2 = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(opr.toSwap2, _data2, _swapSimple2, opr.toBorrow, strategyAddresses.LRTAsset);
            opd.weWETHPosition = opd.amountOut1 + opd.amountOut2;
            swappedB = opd.amountOut2;
        }
        
        uint256 posID = userInfo[opr.user].length;
        (uint256 value,) = _getInputAssetValue(opd.weWETHPosition, strategyAddresses.LRTAsset);
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

        PositionTimestamps storage pts = positionTimestamps[opr.user][posID];
        pts.openTimestamp = block.timestamp;
        pts.vaultSnapshotID = IAirPuffHandler(strategyAddresses.AirPuffHandler).vaultCurrentSnapshotID(lendingVault[opr.toBorrow]);


        if (isUser[opr.user] == false) {
            isUser[opr.user] = true;
            allUsers.push(opr.user);
        }

        userInfo[opr.user].push(_userInfo);

        opr.done = true;
        _mint(opr.user, opd.weWETHPosition);

        (bool keeperPaid, ) = IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper().call{ value: feeConfiguration.executionFee}("");
        require(keeperPaid, "Keeper Paid failed");
        
        emit Deposit(opr.user, opr.amount, opd.weWETHPosition, block.timestamp, posID, opr.leverage, opr.toBorrow);
    }

    /**
    * @notice Executes a close position request, allowing users to close their positions
    * @param _closePositionID The ID of the close position request
    * @param _user The user whose position is being closed
    * @param _data Data parameter for swap execution
    * @param _data2 Second data parameter for swap execution, if needed
    * @param _swapSimple Boolean indicating if the swap is simple
    * @param _swapSimple2 Boolean indicating if the second swap is simple
    * @param _lendingRepaymentAmount The amount to be repaid to the lending protocol
    * @dev Requires sender to be the keeper. Handles asset swaps, debt repayment, and position closing. Emits Withdraw event.
    */
    function executeClosePosition(
        uint256 _closePositionID,
        address _user,
        bytes calldata _data,
        bytes calldata _data2,
        bool _swapSimple,
        bool _swapSimple2,
        uint256 _lendingRepaymentAmount
    ) public nonReentrant {
        require(msg.sender == IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper(), "AirPuff: Only Keeper");
        ClosePositionRequest storage cpr = closePositionRequests[_user][_closePositionID];
        UserInfo storage _userInfo = userInfo[_user][cpr.userPositionID];
        KeeperCloseData memory kcd = keeperCloseData;
        require(cpr.user != address(0), "AirPuff: close position request does not exist");
        require(!cpr.done, "AirPuff: close position request already executed");

        //check effect to prevent reentrancy in case keeper compromised
        cpr.done = true;

        kcd.posBorrow = positionBorrowAsset[_user][cpr.userPositionID];
        kcd.lenVault = lendingVault[kcd.posBorrow];

        if (!cpr.isLiquidation) {
            require(_lendingRepaymentAmount >= cpr.lendingRepayment &&
            _lendingRepaymentAmount <= (cpr.lendingRepayment + (cpr.lendingRepayment * feeConfiguration.maxSwapSlippage / MAX_BPS)),
                "AirPuff: Invalid lendingRepaymentAmount");
            kcd.repaymentDiff = _lendingRepaymentAmount - cpr.lendingRepayment;
            cpr.lendingRepayment = _lendingRepaymentAmount;
            cpr.toLeverageUser = cpr.toLeverageUser - kcd.repaymentDiff;

            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(strategyAddresses.AirPuffHandler, cpr.lendingRepayment);
            kcd.interestsPortion = (cpr.totalInterests * DECIMAL / cpr.lendingRepayment ) * 100;
            kcd.amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.lendingRepayment,_data,_swapSimple, strategyAddresses.LRTAsset, kcd.posBorrow);
            kcd.interestsAmount = kcd.amountOut * kcd.interestsPortion / DECIMAL / 100;

            if (kcd.amountOut < _userInfo.leverageAmount) {
                kcd.repayAmount = kcd.amountOut;
                kcd.interestsAmount = 0;
            } else if (kcd.amountOut < _userInfo.leverageAmount + kcd.interestsAmount && kcd.amountOut >= _userInfo.leverageAmount) {
                kcd.repayAmount = _userInfo.leverageAmount;
                kcd.interestsAmount = kcd.amountOut - kcd.repayAmount;
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(feeConfiguration.lendingFeeReceiver, kcd.interestsAmount);
            } else {
                kcd.repayAmount = _userInfo.leverageAmount;
                kcd.amountOut = kcd.amountOut - kcd.interestsAmount;
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(feeConfiguration.lendingFeeReceiver, kcd.interestsAmount);
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(_userInfo.user, kcd.amountOut - kcd.repayAmount);
            }
            
            IERC20Upgradeable(kcd.posBorrow).safeIncreaseAllowance(kcd.lenVault, kcd.repayAmount);
            ILending(kcd.lenVault).repayDebt(_userInfo.leverageAmount, kcd.repayAmount);
            
            address depositedAsset = positionDepositAsset[_userInfo.user][cpr.userPositionID];
            if(depositedAsset != strategyAddresses.LRTAsset) {
                IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(strategyAddresses.AirPuffHandler, cpr.toLeverageUser);
                uint256 userAmountSwap = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.toLeverageUser,_data2,_swapSimple2, strategyAddresses.LRTAsset, depositedAsset);
                if(depositedAsset == strategyAddresses.WETH) {
                    IWETH(strategyAddresses.WETH).withdraw(userAmountSwap);
                    (bool userRepaymentSuccess, ) = _userInfo.user.call{ value: userAmountSwap}("");
                    require(userRepaymentSuccess, "User Repayment failed");
                } else {
                    IERC20Upgradeable(depositedAsset).safeTransfer(_userInfo.user, userAmountSwap);
                }
            } else {
                IERC20Upgradeable(depositedAsset).safeTransfer(_userInfo.user, cpr.toLeverageUser);
            }
            _userInfo.closedPositionValue += cpr.toLeverageUser;
        } else {
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(strategyAddresses.AirPuffHandler, cpr.lendingRepayment);
            kcd.interestsPortion = (cpr.totalInterests * DECIMAL / cpr.lendingRepayment ) * 100;
            kcd.amountOut = IAirPuffHandler(strategyAddresses.AirPuffHandler).executeSwap(cpr.lendingRepayment,_data,_swapSimple, strategyAddresses.LRTAsset, kcd.posBorrow);
            kcd.interestsAmount = kcd.amountOut * kcd.interestsPortion / DECIMAL / 100;
            if (kcd.amountOut < _userInfo.leverageAmount) {
                kcd.repayAmount = kcd.amountOut;
                kcd.interestsAmount = 0;
            } else if (kcd.amountOut < _userInfo.leverageAmount + kcd.interestsAmount && kcd.amountOut >= _userInfo.leverageAmount) {
                kcd.repayAmount = _userInfo.leverageAmount;
                kcd.interestsAmount = kcd.amountOut - kcd.repayAmount;
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(feeConfiguration.lendingFeeReceiver, kcd.interestsAmount);
            } else {
                kcd.repayAmount = _userInfo.leverageAmount;
                kcd.amountOut = kcd.amountOut - kcd.repayAmount - kcd.interestsAmount;
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(feeConfiguration.lendingFeeReceiver, kcd.interestsAmount);

                uint256 liquidatorReward = kcd.amountOut * feeConfiguration.liquidatorsRewardPercentage / MAX_BPS;
                IERC20Upgradeable(kcd.posBorrow).safeTransfer(_userInfo.liquidator, liquidatorReward);
                kcd.amountOut = kcd.amountOut - liquidatorReward;

                IERC20Upgradeable(kcd.posBorrow).safeTransfer(_userInfo.user, kcd.amountOut);
            }

            IERC20Upgradeable(kcd.posBorrow).safeIncreaseAllowance(kcd.lenVault, kcd.repayAmount);
            ILending(kcd.lenVault).repayDebt(_userInfo.leverageAmount, kcd.repayAmount);
           
            _userInfo.liquidated = true;
        }

        PositionTimestamps storage pts = positionTimestamps[_userInfo.user][cpr.userPositionID];
        pts.closeTimestamp = block.timestamp;
        _userInfo.closed = true;

        emit Withdraw(_userInfo.user, cpr.toLeverageUser, _userInfo.position, block.timestamp, cpr.userPositionID, _userInfo.leverage, kcd.posBorrow, kcd.interestsAmount, closeRequestInterestsBorrowedAsset[cpr.user][cpr.closeRequestID]);
    }

    /** ----------- View functions ------------- */
    /**
    * @notice Retrieves a list of all lending vault addresses
    * @dev Returns an array of addresses for the lending vaults.
    */
    function getAllLendingVaults() public view returns (address[] memory) {
        return allLendingVaults;
    }

    /**
    * @notice Gets the count of open position requests for a given user
    * @param _user The address of the user
    * @dev Returns the total number of open position requests made by the user.
    */
    function getPositionOpenRequestCount(address _user) public view returns (uint256) {
        return userOpenPositionCount[_user].length;
    }

    /**
    * @notice Gets the count of close position requests for a given user
    * @param _user The address of the user
    * @dev Returns the total number of close position requests made by the user.
    */
    function getPositionCloseRequestCount(address _user) public view returns (uint256) {
        return userClosePositionCount[_user].length;
    }

    /**
    * @notice Retrieves all users who have interacted with the contract
    * @dev Returns an array of addresses representing users.
    */
    function getAllUsers() public view returns (address[] memory) {
        return allUsers;
    }

    /**
    * @notice Gets the total number of open positions for a given user
    * @param _user The address of the user
    * @dev Returns the count of the user's open positions.
    */
    function getTotalNumbersOfOpenPositionBy(address _user) public view returns (uint256) {
        return userInfo[_user].length;
    }

    /**
    * @notice Retrieves updated debt information for a specific position
    * @param _positionID The ID of the position
    * @param _user The address of the user
    * @dev Returns detailed debt information including current DTV, position value, and total interests.
    */
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
        (uint256 currentPosValueBorrowedAsset,) = _getInputAssetValue(leverageWithInterests, positionBorrowAsset[_user][_positionID]);
        uint256 currentDTV = currentPosValueBorrowedAsset.mulDiv(DECIMAL, currentPositionValue);

        return (
            currentDTV,
            currentPositionValue,
            currentPosValueBorrowedAsset,
            leverageWithInterests,
            totalInterests);
    }

    /**
    * @notice Calculates the current value of a position
    * @param _positionID The ID of the position
    * @param _user The address of the user
    * @dev Returns the current value of the specified position.
    */
    function getCurrentPositionValue(uint256 _positionID, address _user) public view returns (uint256) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return 0;

        (uint256 pos,) = _getInputAssetValue(_userInfo.position, strategyAddresses.LRTAsset);
        return pos;
    }


    /** ----------- User functions ------------- */
    /**
    * @notice Allows a user to open a leveraged position
    * @param _leverage The leverage factor for the position
    * @param _amount The amount of deposit asset
    * @param _asset The address of the deposit asset
    * @param _toBorrow The address of the asset to borrow
    * @dev Callable by any user. Emits RequestedPositionOpen event.
    */
    function openPosition(
        uint256 _leverage,
        uint256 _amount,
        address _asset,
        address _toBorrow
    ) external payable nonReentrant {
        require(isWhitelistedBorrowAsset[_toBorrow], "AirPuff: Borrow asset not whitelisted");
        require(isWhitelistedDepositAsset[_asset], "AirPuff: Deposit asset not whitelisted");
        BorrowedAssetLeverageBounds storage ball = borrowedAssetLeverageBounds[_toBorrow];
        require(_leverage >= ball.minLeverageLimit && _leverage <= ball.maxLeverageLimit, "AirPuff: Invalid borrowed asset leverage");
        require(_amount > 0, "AirPuff: amount is 0");

        uint256 amount = _amount;
        if (_asset == strategyAddresses.WETH) {
            require(msg.value >= (amount + feeConfiguration.executionFee), "AirPuff: Insufficient execution fee + amount value");
            IWETH(strategyAddresses.WETH).deposit{value: amount}();
        } else {
            require(msg.value >= feeConfiguration.executionFee, "AirPuff: Insufficient execution fee value");
            IERC20Upgradeable(_asset).safeTransferFrom(msg.sender, address(this), amount);
        }
        
        (uint256 inputAssetValue, ) = _getInputAssetValue(amount, _asset);
        uint256 toBorrowPrice = _getToBorrowPrice(_toBorrow);
        uint256 borrowNotional = inputAssetValue * DECIMAL / toBorrowPrice;

        uint256 decimalAdjustment = 10 ** (18-IWETH(_toBorrow).decimals());
        uint256 leveragedAmount = (borrowNotional.mulDiv(_leverage, DENOMINATOR) - borrowNotional) / decimalAdjustment;
        require(leveragedAmount > 0, "AirPuff: leveragedAmount is 0");

        ILending(lendingVault[_toBorrow]).lend(leveragedAmount,address(this));

        uint256 posCount = userOpenPositionCount[msg.sender].length;
        OpenPositionRequest storage opr = openPositionRequests[msg.sender][posCount];

        SwapData memory opd = swapData;
        if (_asset == strategyAddresses.LRTAsset) {
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

    /**
    * @notice Allows a user or liquidator to close a position
    * @param _positionID The ID of the position to close
    * @dev Callable by the position owner or a liquidator. Emits ClosePositionRequested or Liquidated event.
    */
    function closePosition(uint256 _positionID) external payable nonReentrant {
        UserInfo storage _userInfo = userInfo[msg.sender][_positionID];
        require(!_userInfo.liquidated && !_userInfo.closed, "AirPuff: position is not active");
        require(msg.sender == _userInfo.user, "AirPuff: not allowed to close position");
        require(msg.value >= feeConfiguration.executionFee, "AirPuff: Insufficient execution fee value");
        require(!inCloseProcess[msg.sender][_positionID], "AirPuff: position is in close process");

        Datas memory data;
        CloseData memory closeData;
        BorrowedAssetLeverageBounds memory ball = borrowedAssetLeverageBounds[positionBorrowAsset[msg.sender][_positionID]];

        //Check for liquidation
        (closeData.currentDTV,,,closeData.fulldebtValue,closeData.totalInterests) = getUpdatedDebt(_positionID, msg.sender);

        if (closeData.currentDTV >= (ball.DTVLimit)) {
            revert("Wait for liquidation");
        }

        //LRTAsset price in USD
        (uint256 LRTAssetValue,) = _getInputAssetValue(DECIMAL, strategyAddresses.LRTAsset);

        //Debt USD value
        (uint256 lendingDebt,) = _getInputAssetValue(closeData.fulldebtValue, positionBorrowAsset[msg.sender][_positionID]);
        uint256 originalInterests = closeData.totalInterests;
        (closeData.totalInterests,) = _getInputAssetValue(closeData.totalInterests, positionBorrowAsset[msg.sender][_positionID]);

        //Debt Conversion to LRTAsset
        lendingDebt = lendingDebt * DECIMAL / LRTAssetValue;
        closeData.totalInterests = closeData.totalInterests * DECIMAL / LRTAssetValue;

        //Management fees taken on interests in LRTAsset
        closeData.mFee = closeData.totalInterests.mulDiv(feeConfiguration.mFeePercent, MAX_BPS);
        lendingDebt = lendingDebt - closeData.mFee;

        //Position value in LRTAsset
        data.totalLRTAssetPosition = _userInfo.position - closeData.mFee;
        
        uint256 slippageFees = lendingDebt.mulDiv(feeConfiguration.oracleSlippage, MAX_BPS);
        data.lendingRepayment = lendingDebt + slippageFees;
        closeData.toLeverageUser = data.totalLRTAssetPosition - data.lendingRepayment;

        _burn(msg.sender, _userInfo.position);
        ClosePositionRequest storage cpr = closePositionRequests[msg.sender][userClosePositionCount[msg.sender].length];
        uint256 withdrawFee;
        if (feeConfiguration.withdrawalFee > 0) {
            withdrawFee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, MAX_BPS);
            closeData.toLeverageUser = closeData.toLeverageUser - withdrawFee;
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(feeConfiguration.feeReceiver, withdrawFee);
        }

        if (closeData.mFee > 0) {
            IERC20Upgradeable(strategyAddresses.LRTAsset).safeTransfer(feeConfiguration.mFeeReceiver, closeData.mFee);
        }

        cpr.user = msg.sender;
        cpr.userPositionID = _positionID;
        cpr.lendingRepayment = data.lendingRepayment;
        cpr.mFee = closeData.mFee;
        cpr.toLeverageUser = closeData.toLeverageUser;
        cpr.closeRequestID = userClosePositionCount[msg.sender].length;
        cpr.isLiquidation = _userInfo.liquidated;
        cpr.totalInterests = closeData.totalInterests;
        closeRequestInterestsBorrowedAsset[msg.sender][userClosePositionCount[msg.sender].length] = originalInterests;
        
        userClosePositionCount[msg.sender].push(userClosePositionCount[msg.sender].length);
        inCloseProcess[msg.sender][_positionID] = true;

        (bool keeperPaid, ) = IAirPuffHandler(strategyAddresses.AirPuffHandler).keeper().call{ value: feeConfiguration.executionFee}("");
        require(keeperPaid, "Keeper Paid failed");

        emit ClosePositionRequested(msg.sender, cpr.closeRequestID, _positionID, originalInterests);
    }

    /**
    * @notice Liquidates a position if it meets the criteria for liquidation
    * @param _positionID The ID of the position to liquidate
    * @param _user The address of the user whose position is being liquidated
    * @dev Callable by any user. Emits Liquidated event.
    */
    function liquidatePosition(uint256 _positionID, address _user) external nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        CloseData memory closeData;
        require(!_userInfo.liquidated, "AirPuff: Already liquidated");
        require(_userInfo.user != address(0), "AirPuff: no active position");
        (closeData.currentDTV,,,,closeData.totalInterests) = getUpdatedDebt(_positionID, _user);

        BorrowedAssetLeverageBounds memory ball = borrowedAssetLeverageBounds[positionBorrowAsset[_user][_positionID]];
        require(closeData.currentDTV >= ball.DTVLimit, "Liquidation Threshold Has Not Reached");
        require(!inCloseProcess[_user][_positionID], "AirPuff: position is in close process");

        uint256 position = _userInfo.position;
        _burn(_user, position);

        //LRTAsset price in USD
        (uint256 LRTAssetValue,) = _getInputAssetValue(DECIMAL, strategyAddresses.LRTAsset);
        uint256 originalInterests = closeData.totalInterests;
        (closeData.totalInterests,) = _getInputAssetValue(closeData.totalInterests, positionBorrowAsset[_user][_positionID]);
        closeData.totalInterests = closeData.totalInterests * DECIMAL / LRTAssetValue;

        _userInfo.liquidator = msg.sender;
        
        ClosePositionRequest storage cpr = closePositionRequests[_user][userClosePositionCount[_user].length];

        cpr.user = _user;
        cpr.userPositionID = _positionID;
        cpr.lendingRepayment = position;
        cpr.closeRequestID = userClosePositionCount[_user].length;
        cpr.isLiquidation = true;
        cpr.totalInterests = closeData.totalInterests;
        closeRequestInterestsBorrowedAsset[_user][userClosePositionCount[_user].length] = originalInterests;

        userClosePositionCount[_user].push(userClosePositionCount[_user].length);
        inCloseProcess[_user][_positionID] = true;

        emit Liquidated(_user, _positionID, msg.sender, cpr.closeRequestID, cpr.lendingRepayment, block.timestamp, originalInterests);
    }

    /** ----------- Token functions ------------- */

    /**
    * @notice Transfers disabled for this contract
    * @param from The address to transfer from
    * @param to The address to transfer to
    * @param amount The amount of tokens to transfer
    * @dev Overrides ERC20's transferFrom. Ensures transfers are not allowed.
    */
    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {}

    /**
    * @notice Transfers disabled for this contract
    * @param to The address to transfer to
    * @param amount The amount of tokens to transfer
    * @dev Overrides ERC20's transfer. Ensures transfers are not allowed.
    */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {}

    /**
    * @notice Burns tokens from the caller's balance
    * @param amount The amount of tokens to burn
    * @dev Overrides ERC20's burn. Ensures burning is not allowed.
    */
    function burn(uint256 amount) public virtual override {}

    /**
    * @notice Burns tokens from a specific address
    * @param from The address to burn tokens from
    * @param amount The amount of tokens to burn
    * @dev Overrides ERC20's burnFrom. Ensures burning is not allowed.
    */
    function burnFrom(address from, uint256 amount) public virtual override {}

    /** ----------- Internal functions ------------- */
    /**
    * @notice Internal function to calculate the value of an asset
    * @param _amount The amount of the asset
    * @param _asset The address of the asset
    * @dev Returns the value of the input asset in terms of another asset or currency.
    */
    function _getInputAssetValue(uint256 _amount, address _asset) internal view returns (uint256,uint256) {
        uint256 inputAssetValue;
        (int224 LRTAssetPriceInt,) = IAPI3Oracle(strategyAddresses.API3Oracle).read();
        uint256 LRTAssetPrice = abi.decode(abi.encode(LRTAssetPriceInt), (uint256));
        LRTAssetPrice = LRTAssetPrice * priceAdapter / DECIMAL;

        if (_asset == strategyAddresses.LRTAsset) {
            uint256 ETHValue = _amount * LRTAssetPrice / DECIMAL;
            inputAssetValue = ETHValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
        } else if (_asset == strategyAddresses.wstETH) {
            inputAssetValue = IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset);
            inputAssetValue = inputAssetValue * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(strategyAddresses.WETH) / DECIMAL;
            inputAssetValue = _amount * inputAssetValue / DECIMAL;
        } else  {
            inputAssetValue = (_amount * IAirPuffHandler(strategyAddresses.AirPuffHandler).getLatestData(_asset) / DECIMAL) * (10 ** (18-IWETH(_asset).decimals()));
        }

        return (inputAssetValue,LRTAssetPrice);
    }

    /**
    * @notice Calculates the price of the asset to borrow in terms of the vault's base currency
    * @param _toBorrow The address of the asset to borrow
    * @dev Returns the current price of the borrow asset. Used to calculate the amount of asset to borrow in openPosition function.
    */
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

    receive() external payable {}
}