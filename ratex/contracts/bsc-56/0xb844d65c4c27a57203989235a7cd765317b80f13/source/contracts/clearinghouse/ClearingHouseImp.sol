// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../libraries/SafeMath.sol";
import "../libraries/SubAccountId.sol";
import "../libraries/RateMath.sol";
import "../libraries/LiquidityMath.sol";
import "../libraries/LiquidityAmount.sol";
import "./ClearingHouseStorage.sol";
import "../interfaces/IMarket.sol";
import "../interfaces/IWrapSlisBnb.sol";


contract ClearingHouseImp is ClearingHouseStorage {
    using SafeERC20 for IERC20;
    using SubAccountId for bytes32;
   

    // Custom Errors
    error NotAuthorizedKeeper();
    error InvalidUser();
    error InvalidAmount();
    error NotTraderAccount();
    error NotLpAccount();
    error InsufficientBalance();
    error InsufficientMargin();
    error MarketNotActive();
    error InvalidPercentage();
    error IsolatedAccountMultipleMarkets();
    error MeetsMaintenanceRequirement();
    error NoActiveMarkets();
    error InvalidKeeperAddress();
    error AlreadyKeeper();
    error NotKeeper();
    error InvalidMarket();
    error NegativeBalanceInSpotMarketType();
    error SpotMarketCantLiquidate();
    error NotSpotMarket();

    modifier onlyKeeper() {
        if (!keepers[msg.sender]) revert NotAuthorizedKeeper();
        _;
    }

    modifier validMarket(address market) {
        if (!approvedMarket[market]) revert InvalidMarket();
        _;
    }

    event AccountIsolationSet(bytes32 indexed subAccountId, bool isolated);
    event MarketAdded(address indexed market, address oracle);
    event DepositRecord(
        bytes32 indexed subAccountId,
        bool isDeposit,
        uint256 amount,
        uint256 totalBalance
    );
    event SettlementRecord(
        bytes32 indexed subAccountId,
        bool isDeposit,
        uint256 amount,
        uint256 totalBalance
    );
    event KeeperAdded(address indexed keeper);
    event KeeperRemoved(address indexed keeper);
    event ClaimYieldRecord(bytes32 indexed subAccountId, address market, uint256 wrapAmount);

    address public immutable marginToken;
    uint8 public immutable marginTokenDecimals;
    address public immutable wrapSlisBnb;
    enum MarketType {
        Perp,
        Spot
    }
    MarketType public immutable marketType;

    constructor(
        MarketType marketType_,
        address marginToken_,
        address wrapSlisBnb_
    ) {
        marketType = marketType_;
        marginToken = marginToken_;
        marginTokenDecimals = IERC20Metadata(marginToken_).decimals();
        wrapSlisBnb = wrapSlisBnb_;
    }

    function addKeeper(address keeper) external onlyOwner {
        if (keeper == address(0)) revert InvalidKeeperAddress();
        if (keepers[keeper]) revert AlreadyKeeper();
        keepers[keeper] = true;
        emit KeeperAdded(keeper);
    }

    function removeKeeper(address keeper) external onlyOwner {
        if (!keepers[keeper]) revert NotKeeper();
        keepers[keeper] = false;
        emit KeeperRemoved(keeper);
    }

    // Add new market
    function addMarket(
        address market,
        address oracle
    ) external onlyOwner {
        // Directly store the oracle address
        marketInfo[market] = oracle;
        indexedMarkets.push(market);
        approvedMarket[market] = true;
        emit MarketAdded(market, oracle);
    }

    function approveWrap() external onlyOwner {
        IERC20(marginToken).approve(wrapSlisBnb, type(uint256).max);
    }

    function deposit(bytes32 subAccountId, uint256 amount) public _reentryLock_ {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (amount == 0) revert InvalidAmount();
        if (!subAccountId.isTrader()) revert NotTraderAccount();

        uint256 wrapAmount = _transferInAndWrap(msg.sender, amount);

        TraderAccount storage account = traders[subAccountId];
        account.balance += wrapAmount;
        
        emit DepositRecord(subAccountId, true, wrapAmount, account.balance);
    }

    function withdraw(bytes32 subAccountId, uint256 wrapAmount) external _reentryLock_ {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (wrapAmount == 0) revert InvalidAmount();
        if (!subAccountId.isTrader()) revert NotTraderAccount();

        address[] storage userMarkets = activeMarkets[subAccountId];
        for (uint i = 0; i < userMarkets.length; i++) {
            address activeMarket = userMarkets[i];
            if (!IMarket(activeMarket).isMarketActive()) revert MarketNotActive();
        }
        TraderAccount storage account = traders[subAccountId];
        if (account.balance < wrapAmount) revert InsufficientBalance();
        
        account.balance -= wrapAmount;
        if (marketType == MarketType.Spot) {
            _checkSpotMarginStatus(subAccountId);
        } else {
            bool isInitialMarkOk = _checkMarginStatus(subAccountId, MarginRequirementType.Initial, false);
            bool isMaintenanceTwapOk = _checkMarginStatus(subAccountId, MarginRequirementType.Maintenance, true);
            if (!isInitialMarkOk || !isMaintenanceTwapOk) {
                revert InsufficientMargin();
            }
        }
        _transferOutAndUnwrap(msg.sender, wrapAmount);
        
        emit DepositRecord(subAccountId, false, wrapAmount, account.balance);
    }

    function trade(
        bytes32 subAccountId,
        address market,
        int256 baseAmount,
        uint160 sqrtPriceLimitX96
    ) public _reentryLock_ validMarket(market) {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (!subAccountId.isTrader()) revert NotTraderAccount();
        TraderAccount storage account = traders[subAccountId];

        IMarket.TradeResult memory result = IMarket(market).trade(subAccountId, baseAmount, sqrtPriceLimitX96);
        if (result.isClosed) {
            _removeFromActiveMarkets(subAccountId, market);
        } else {
            _addToActiveMarkets(subAccountId, market);
        }
        // Combine realizedPnl and feeAmount before conversion
        int256 totalPnlAndFee = result.rebaseMargin + result.realizedPnl - int256(result.feeAmount);
        int256 totalPnlAndFeeInMargin = convertDecimals(totalPnlAndFee, false, false);
        
        if (totalPnlAndFeeInMargin > 0) {
            account.balance += uint256(totalPnlAndFeeInMargin);
            emit SettlementRecord(subAccountId, true, uint256(totalPnlAndFeeInMargin), account.balance);
        } else {
            account.balance -= uint256(-totalPnlAndFeeInMargin);
            emit SettlementRecord(subAccountId, false, uint256(-totalPnlAndFeeInMargin), account.balance);
        }

        if (account.isIsolated) {
            if (result.isClosed && account.balance > 0) {
                uint256 amount = account.balance;
                _transferOutAndUnwrap(msg.sender, amount);
                account.balance = 0;
                emit DepositRecord(subAccountId, false, amount, account.balance);
            } else if (totalPnlAndFeeInMargin > 0) {
                uint256 amount = uint256(totalPnlAndFeeInMargin);
                _transferOutAndUnwrap(msg.sender, amount);
                account.balance -= amount;
                emit DepositRecord(subAccountId, false, amount, account.balance);
            }
        }
        if (marketType == MarketType.Spot) {
            _checkSpotMarginStatus(subAccountId);
        } else {
            if (result.isReduce) {
                bool isMaintenanceTwapOk = _checkMarginStatus(subAccountId, MarginRequirementType.Maintenance, false);
                bool isBasicMarkOk = _checkMarginStatus(subAccountId, MarginRequirementType.Basic, false);
                if (!isMaintenanceTwapOk && !isBasicMarkOk) {
                    revert InsufficientMargin();
                }
            } else {
                bool isInitialMarkOk = _checkMarginStatus(subAccountId, MarginRequirementType.Initial, true);
                bool isMaintenanceTwapOk = _checkMarginStatus(subAccountId, MarginRequirementType.Maintenance, true);
                if (!isInitialMarkOk || !isMaintenanceTwapOk) {
                    revert InsufficientMargin();
                }
            }
        }
    }

    function depositAndTrade(
        bytes32 subAccountId,
        uint256 amount,
        address market,
        int256 baseAmount,
        uint160 sqrtPriceLimitX96
    ) external validMarket(market) {
        _setAccountIsolation(subAccountId);
        deposit(subAccountId, amount);
        trade(subAccountId, market, baseAmount, sqrtPriceLimitX96);
    }

    function addLpShares(
        bytes32 subAccountId,
        address market,
        uint256 amount,
        uint256 lowerRate,
        uint256 upperRate
    ) external _reentryLock_ validMarket(market) {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (!subAccountId.isLp()) revert NotLpAccount();
        if (amount <= 0) revert InvalidAmount();

        uint256 wrapAmount = _transferInAndWrap(msg.sender, amount);
        int256 scaledAmount = convertDecimals(int256(wrapAmount), true, false);
        IMarket(market).addLpShares(subAccountId, scaledAmount, lowerRate, upperRate);
    }


    function removeLpShares(
        bytes32 subAccountId,
        address market,
        uint256 percentage,
        uint160 sqrtPriceLimitX96
    ) external _reentryLock_ validMarket(market) returns (uint256 wrapAmount) {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (!subAccountId.isLp()) revert NotLpAccount();
        if (percentage == 0 || percentage > 1e18) revert InvalidPercentage();

        (uint256 withdrawMarginAmount, uint256 feeMargin) = IMarket(market).removeLpShares(subAccountId, percentage, sqrtPriceLimitX96);
        wrapAmount = uint256(convertDecimals(int256(withdrawMarginAmount + feeMargin), false, false));
        _transferOutAndUnwrap(msg.sender, wrapAmount);
    }

    function claimFee(
        bytes32 subAccountId,
        address market
    ) external _reentryLock_ validMarket(market) returns (uint256 wrapAmount) {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (!subAccountId.isLp()) revert NotLpAccount();

        uint256 fees = IMarket(market).claimFee(subAccountId);
        if (fees > 0) {
            wrapAmount = uint256(convertDecimals(int256(fees), false, false));
            _transferOutAndUnwrap(msg.sender, wrapAmount);
        }
    }

    function updateAndQueryFee(
        bytes32 subAccountId,
        address market
    ) external _reentryLock_ validMarket(market) returns (uint256 wrapAmount) {
        if (!subAccountId.isLp()) revert NotLpAccount();
        uint256 fees = IMarket(market).updateAndQueryFee(subAccountId);
        if (fees > 0) {
            wrapAmount = uint256(convertDecimals(int256(fees), false, false));
        }
    }    

    function earnInvest(
        address market,
        uint256 wrapAmount
    ) external _reentryLock_ validMarket(market) {
        int256 scaledAmount = convertDecimals(int256(wrapAmount), true, false);
        (uint256 marginAmount, uint256 feeAmountInMargin) = IMarket(market).earnInvest(msg.sender, uint256(scaledAmount));
        uint256 newWrapAmount = uint256(convertDecimals(int256(marginAmount + feeAmountInMargin), false, true));
        uint256 amount = IWrapSlisBnb(wrapSlisBnb).wrapAmoutToAmount(newWrapAmount);
        _transferInAndWrap(msg.sender, amount);
    }

    function earnRedeem(
        address market,
        uint256 ptAmount,
        uint160 sqrtPriceLimitX96
    ) external _reentryLock_ validMarket(market) {
        (uint256 marginAmount, uint256 feeAmountInMargin) = IMarket(market).earnRedeem(msg.sender, ptAmount, sqrtPriceLimitX96);
        uint256 amount = uint256(convertDecimals(int256(marginAmount - feeAmountInMargin), false, false));
        _transferOutAndUnwrap(msg.sender, amount);
    }

    function claimProtocolFee(
        address market
    ) external _reentryLock_ onlyOwner {
        uint256 fees = IMarket(market).claimProtocolFee();
        uint256 amount = uint256(convertDecimals(int256(fees), false, false));
        _transferOutAndUnwrap(msg.sender, amount);
    }

    function claimYield(
        bytes32 subAccountId,
        address market,
        uint256 wrapAmount
    ) external _reentryLock_ validMarket(market) {
        if (subAccountId.toAddress() != msg.sender) revert InvalidUser();
        if (!subAccountId.isTrader()) revert NotTraderAccount();
        if (marketType != MarketType.Spot) revert NotSpotMarket();

        TraderAccount storage account = traders[subAccountId];
        int256 balanceDelta = IMarket(market).claimYield(subAccountId);
        int256 balanceDeltaInMargin = convertDecimals(balanceDelta, false, false);

        if (balanceDeltaInMargin > 0) {
            account.balance += uint256(balanceDeltaInMargin);
            emit SettlementRecord(subAccountId, true, uint256(balanceDeltaInMargin), account.balance);
        }

        if (account.balance < wrapAmount) revert InsufficientBalance();
        account.balance -= wrapAmount;
        _checkSpotMarginStatus(subAccountId);

        _transferOutAndUnwrap(msg.sender, wrapAmount);
        emit DepositRecord(subAccountId, false, wrapAmount, account.balance);
        emit ClaimYieldRecord(subAccountId, market, wrapAmount);
        
    }

    function liquidate(
        bytes32 subAccountId
    ) external _reentryLock_ onlyKeeper {
        if (!subAccountId.isTrader()) revert NotTraderAccount();
        if (_checkMarginStatus(subAccountId, MarginRequirementType.Maintenance, true)) {
            revert MeetsMaintenanceRequirement();
        }
        
        address[] storage userMarkets = activeMarkets[subAccountId];
        if (userMarkets.length == 0) revert NoActiveMarkets();

        // Get user's total margin before liquidation
        TraderAccount storage account = traders[subAccountId];
        uint256 totalMargin = account.balance;
        InsuranceFundInfo[] memory sortedFunds = _distributeMarginToInsuranceFunds(subAccountId, totalMargin);
        account.balance = 0;

        // Iterate through all active markets
        for (uint i = 0; i < sortedFunds.length; i++) {
            address market = sortedFunds[i].market;
            IMarket(market).liquidate(
                subAccountId,
                int256(sortedFunds[i].marginTransferred)
            );
        }

        // Check if all positions are closed
        bool allPositionsClosed = true;
        for (uint i = 0; i < userMarkets.length; i++) {
            address market = userMarkets[i];
            YieldPositionLib.YieldPosition memory position = IMarket(market).getPosition(subAccountId);
            if (position.baseAssetAmount != 0) {
                allPositionsClosed = false;
                break;
            }
        }

        // If all positions are closed, reset user's active markets
        if (allPositionsClosed) {
            delete activeMarkets[subAccountId];
        }
    }

    function liquidateLp(address market, bytes32 subAccountId) external _reentryLock_ onlyKeeper validMarket(market) {
        if (marketType == MarketType.Spot) {
            revert SpotMarketCantLiquidate();
        }
        if (!subAccountId.isLp()) revert NotLpAccount();
        uint256 fees = IMarket(market).liquidateLp(subAccountId);
        if (fees > 0) {
            uint256 wrapAmount = uint256(convertDecimals(int256(fees), false, false));
            _transferOutAndUnwrap(msg.sender, wrapAmount);
        }
    }
    
     /**
     * @notice Liquidate insurance fund position
     * @param market The market address to liquidate
     * @param adlFinish Whether ADL process is finished
     */
    function liquidateInsurance(
        address market,
        bytes32[] calldata makers,
        bool adlFinish
    ) external _reentryLock_ onlyKeeper validMarket(market) {
        if (marketType == MarketType.Spot) {
            revert SpotMarketCantLiquidate();
        }
        for (uint i = 0; i < makers.length; i++) {
            if (!makers[i].isTrader()) revert NotTraderAccount();
        }

        // Execute liquidation
        IMarket.AdlLiquidationStat[] memory makerStats = IMarket(market).liquidateInsurance(
            makers,
            adlFinish
        );

        // Handle withdrawal if needed
        for (uint i = 0; i < makerStats.length; i++) {
            IMarket.AdlLiquidationStat memory adlStat = makerStats[i];
            if (adlStat.isMakerClosed) {
                _removeFromActiveMarkets(makers[i], market);
            }

            int256 totalPnlAndFeeInMargin = convertDecimals(adlStat.makerRealizedPnl, false, false);
            TraderAccount storage account = traders[makers[i]];
            if (totalPnlAndFeeInMargin > 0) {
                account.balance += uint256(totalPnlAndFeeInMargin);
                emit SettlementRecord(makers[i], true, uint256(totalPnlAndFeeInMargin), account.balance);
            } else {
                account.balance -= uint256(-totalPnlAndFeeInMargin);
                emit SettlementRecord(makers[i], false, uint256(-totalPnlAndFeeInMargin), account.balance);
            }

            if (account.isIsolated) {
                if (adlStat.isMakerClosed && account.balance > 0) {
                    uint256 amount = account.balance;
                    _transferOutAndUnwrap(makers[i].toAddress(), amount);
                    account.balance = 0;
                    emit DepositRecord(makers[i], false, amount, account.balance);
                } else if (totalPnlAndFeeInMargin > 0) {
                    uint256 amount = uint256(totalPnlAndFeeInMargin);
                    _transferOutAndUnwrap(makers[i].toAddress(), amount);
                    account.balance -= amount;
                    emit DepositRecord(makers[i], false, amount, account.balance);
                }
            }
        }
    }

    function epochUpdateBegin(address market, bool isExpired) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateBegin(isExpired);
    }

    function epochUpdateChangePrice(address market, bool isExpired) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateChangePrice(isExpired);
    }

    function epochUpdateEnd(address market, bool isExpired) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateEnd(isExpired);
    }

    function epochUpdateRemove(address market, bool isExpired, bytes32 subAccountId) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateRemove(isExpired, subAccountId);
    }

    function epochUpdateAdd(address market, bool isExpired, bytes32 subAccountId) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateAdd(isExpired, subAccountId);
    }

    function epochUpdateExpiryCheck(address market, bytes32 subAccountId) external onlyKeeper validMarket(market) {
        IMarket(market).epochUpdateExpiryCheck(subAccountId);
    }

    function epochUpdateExpiryApply(address market, bytes32 subAccountId) external onlyKeeper validMarket(market) {
        int256 balanceDelta = IMarket(market).epochUpdateExpiryApply(subAccountId);
        int256 balanceDeltaInMargin = convertDecimals(balanceDelta, false, false);
        
        if (balanceDeltaInMargin > 0) {
            traders[subAccountId].balance += uint256(balanceDeltaInMargin);
            emit SettlementRecord(subAccountId, true, uint256(balanceDeltaInMargin), traders[subAccountId].balance);
        } else {
            traders[subAccountId].balance -= uint256(-balanceDeltaInMargin);
            emit SettlementRecord(subAccountId, false, uint256(-balanceDeltaInMargin), traders[subAccountId].balance);
        }
    }

    function epochUpdateExpirySettleSpotUser(address market, bytes32 subAccountId) external onlyKeeper validMarket(market) {
        int256 balanceDelta = IMarket(market).epochUpdateExpirySettleSpotUser(subAccountId);
        int256 balanceDeltaInMargin = convertDecimals(balanceDelta, false, false);
        
        if (balanceDeltaInMargin > 0) {
            traders[subAccountId].balance += uint256(balanceDeltaInMargin);
            emit SettlementRecord(subAccountId, true, uint256(balanceDeltaInMargin), traders[subAccountId].balance);
        } else {
            traders[subAccountId].balance -= uint256(-balanceDeltaInMargin);
            emit SettlementRecord(subAccountId, false, uint256(-balanceDeltaInMargin), traders[subAccountId].balance);
        }
    }

    function claimInsurance(address market) external onlyOwner validMarket(market) {
        int256 balanceDelta = IMarket(market).claimInsurance();
        int256 balanceDeltaInMargin = convertDecimals(balanceDelta, false, false);
        
        if (balanceDeltaInMargin > 0) {
            _transferOutAndUnwrap(msg.sender, uint256(balanceDeltaInMargin));
        }
    }

    function claimKeeperFee(address market) external onlyOwner validMarket(market) {
        int256 totalKeeperFee = IMarket(market).claimKeeperFee();
        uint256 amount = uint256(convertDecimals(totalKeeperFee, false, false));
        if (amount > 0) {
            _transferOutAndUnwrap(msg.sender, amount);
        }
    }

    function claimEarnFee(address market) external onlyOwner validMarket(market) {
        int256 totalEarnFee = IMarket(market).claimEarnFee();
        uint256 amount = uint256(convertDecimals(totalEarnFee, false, false));
        if (amount > 0) {
            _transferOutAndUnwrap(msg.sender, amount);
        }
    }

    /// adhoc functions for testing only
    function withdrawAll() external onlyOwner {
        uint256 slisBnbAmount = IWrapSlisBnb(wrapSlisBnb).withdrawAll();
        IERC20(marginToken).safeTransfer(msg.sender, slisBnbAmount);
    }

    /// Internal functions
    function _addToActiveMarkets(bytes32 subAccountId, address market) internal {
        address[] storage userMarkets = activeMarkets[subAccountId];
        TraderAccount storage account = traders[subAccountId];
        if (account.isIsolated && userMarkets.length > 0) {
            if (userMarkets[0] != market) {
                revert IsolatedAccountMultipleMarkets();
            }
        }
        
        bool exists = false;
        for(uint i = 0; i < userMarkets.length; i++) {
            if(userMarkets[i] == market) {
                exists = true;
                break;
            }
        }
        if(!exists) {
            userMarkets.push(market);
        }
    }

    function _removeFromActiveMarkets(bytes32 subAccountId, address market) internal {
        address[] storage userMarkets = activeMarkets[subAccountId];
        for (uint i = 0; i < userMarkets.length; i++) {
            if (userMarkets[i] == market) {
                userMarkets[i] = userMarkets[userMarkets.length - 1]; // Move the last element to the current position
                userMarkets.pop(); // Remove the last element
                break;
            }
        }
    }

    function _transferInAndWrap(address from, uint256 amount) internal returns (uint256) {
        // Transfer margin token in
        IERC20(marginToken).safeTransferFrom(from, address(this), amount);
        
        return IWrapSlisBnb(wrapSlisBnb).deposit(amount);
    } 

    function _transferOutAndUnwrap(address to, uint256 amount) internal {
        if (amount == 0) {
            return;
        }
        // Transfer margin token out
        uint256 slisBnbAmount = IWrapSlisBnb(wrapSlisBnb).withdraw(amount);
        IERC20(marginToken).safeTransfer(to, slisBnbAmount);
    }        

    // Query user position in a market
    function getPosition(bytes32 subAccountId, address market) internal view returns (YieldPositionLib.YieldPosition memory) {
        YieldPositionLib.YieldPosition memory position = IMarket(market).getPosition(subAccountId);
        return position;
    }

    // Set account isolation status
    function _setAccountIsolation(bytes32 subAccountId) internal {
        TraderAccount storage account = traders[subAccountId];
        // require(account.balance > 0, "Not a trader account");
        
        // If setting to isolated account, check number of active markets
        if (activeMarkets[subAccountId].length > 1) {
            revert IsolatedAccountMultipleMarkets();
        }
        if (account.isIsolated == false) {
            account.isIsolated = true;
            emit AccountIsolationSet(subAccountId, true);
        }
    }

    function _checkSpotMarginStatus( 
        bytes32 subAccountId
    ) internal view {
        TraderAccount storage account = traders[subAccountId];

        address[] storage userMarkets = activeMarkets[subAccountId];
        int256 totalQuoteInMargin;
        for (uint i = 0; i < userMarkets.length; i++) {
            address activeMarket = userMarkets[i];
            YieldPositionLib.YieldPosition memory position = IMarket(activeMarket).getPosition(subAccountId);

            if (position.baseAssetAmount < 0) {
                revert NegativeBalanceInSpotMarketType();
            }
            totalQuoteInMargin += IMarket(activeMarket).calculateQuoteInMargin(position);
        }

        if (int256(account.balance) + totalQuoteInMargin < 0) {
            revert NegativeBalanceInSpotMarketType();
        }

    }


    function _checkMarginStatus(
        bytes32 subAccountId,
        MarginRequirementType requirementType,
        bool isTwap
    ) internal view returns (bool) {
        TraderAccount storage account = traders[subAccountId];

        address[] storage userMarkets = activeMarkets[subAccountId];
        int256 totalAssetValue = 0;
        int256 totalLiabilityValue = 0;
        int256 marginValue = convertDecimals(int256(account.balance), true, false);

        // Iterate through all active markets
        for (uint i = 0; i < userMarkets.length; i++) {
            address activeMarket = userMarkets[i];
            YieldPositionLib.YieldPosition memory position = IMarket(activeMarket).getPosition(subAccountId);
    
            // Calculate position's asset and liability values
            (int256 assetValue, int256 liabilityValue) = IMarket(activeMarket).calculatePositionValue(position, isTwap);
            int256 requiredRatio;
            if (requirementType == MarginRequirementType.Initial) {
                if (IMarket(activeMarket).isPreExpiry()) {
                    requiredRatio = IMarket(activeMarket).collateralRatioInitialPreExpiry();
                } else {
                    requiredRatio = IMarket(activeMarket).collateralRatioInitial();
                }
            } else if (requirementType == MarginRequirementType.Maintenance) {
                requiredRatio = IMarket(activeMarket).collateralRatioMaintenance();
            } else if (requirementType == MarginRequirementType.Basic) {
                requiredRatio = IMarket(activeMarket).collateralRatioBasic();
            }
            totalAssetValue += assetValue;
            totalLiabilityValue += liabilityValue * requiredRatio / 1e18;
        }

        // Check if margin requirements are met
        return (marginValue + totalAssetValue) >= totalLiabilityValue;
    }

    /// @notice Convert between margin token decimals and 18 decimals with floor or ceil option
    /// @param amount Amount to convert
    /// @param toStandard If true, convert to 18 decimals; if false, convert from 18 decimals
    /// @param roundUp If true, ceil the result; if false, floor the result
    /// @return Converted amount
    function convertDecimals(int256 amount, bool toStandard, bool roundUp) internal view returns (int256) {
        if (marginTokenDecimals == 18) return amount;
        int256 factor = int256(10 ** (18 - marginTokenDecimals));
        if (toStandard) {
            return amount * factor;
        } else {
            if (amount >= 0) {
                if (roundUp) {
                    return amount % factor == 0 ? amount / factor : amount / factor + 1;
                } else {
                    return amount / factor;
                }
            } else {
                if (roundUp) {
                    return amount / factor;
                } else {
                    return amount % factor == 0 ? amount / factor : amount / factor - 1;
                }
            }
        }
    }

    /// @notice Get trader account information
    /// @param subAccountId Sub-account ID
    /// @return balance Account balance
    /// @return isIsolated Whether account is isolated
    function getTraderAccount(bytes32 subAccountId) external view returns (
        uint256 balance,
        bool isIsolated
    ) {
        TraderAccount storage account = traders[subAccountId];
        return (account.balance, account.isIsolated);
    }
    
    function _sortInsuranceFunds(
        address[] memory markets
    ) internal view returns (InsuranceFundInfo[] memory) {
        uint256 length = markets.length;
        InsuranceFundInfo[] memory funds = new InsuranceFundInfo[](length);
        
        // Calculate CR for each market's insurance fund
        for (uint i = 0; i < length; i++) {
            address market = markets[i];
            IMarket marketInstance = IMarket(market);
            
            // Get insurance fund position
            YieldPositionLib.YieldPosition memory position = marketInstance.getInsuranceYieldPosition();
            
            // Calculate asset and liability values
            (int256 assetValue, int256 liabilityValue) = marketInstance.calculatePositionValue(position, true);
            
            // Calculate collateral ratio
            int256 cr;
            if (liabilityValue == 0) {
                cr = type(int256).max;
            } else {
                cr = (assetValue * 1e18) / liabilityValue;
            }
            
            // Calculate required margin to reach maintenance ratio
            int256 maintenanceRatio = marketInstance.collateralRatioMaintenance();
            int256 requiredMargin;
            if (cr < maintenanceRatio) {
                requiredMargin = ((maintenanceRatio * liabilityValue / 1e18) - assetValue);
            } else {
                requiredMargin = 0;
            }

            funds[i] = InsuranceFundInfo({
                market: market,
                collateralRatio: cr,
                requiredMargin: requiredMargin,
                marginTransferred: 0
            });
        }

        // Sort by CR (bubble sort for simplicity)
        for (uint i = 0; i < length - 1; i++) {
            for (uint j = 0; j < length - i - 1; j++) {
                if (funds[j].collateralRatio > funds[j + 1].collateralRatio) {
                    InsuranceFundInfo memory temp = funds[j];
                    funds[j] = funds[j + 1];
                    funds[j + 1] = temp;
                }
            }
        }

        return funds;
    }

    function _distributeMarginToInsuranceFunds(
        bytes32 subAccountId,
        uint256 margin
    ) internal returns (InsuranceFundInfo[] memory) {
        // Get active markets and sort their insurance funds
        address[] memory markets = activeMarkets[subAccountId];
        InsuranceFundInfo[] memory sortedFunds = _sortInsuranceFunds(markets);

        // Distribute margin to insurance funds based on CR
        uint256 remainingMargin = uint256(convertDecimals(int256(margin), true, false));
        for (uint i = 0; i < sortedFunds.length && remainingMargin > 0; i++) {
            InsuranceFundInfo memory fund = sortedFunds[i];
            if (fund.collateralRatio >= IMarket(fund.market).collateralRatioMaintenance()) {
                break;  // No more funds need margin
            }

            uint256 marginToTransfer = uint256(fund.requiredMargin);
            if (marginToTransfer > remainingMargin) {
                marginToTransfer = remainingMargin;
            }
            if (marginToTransfer > 0) {
                // Add margin to insurance fund
                IMarket(fund.market).addInsuranceMargin(marginToTransfer);
                sortedFunds[i].marginTransferred += marginToTransfer;
                remainingMargin -= marginToTransfer;
            }
        }

        // If there's remaining margin, give it all to the market with lowest CR
        if (remainingMargin > 0 && sortedFunds.length > 0) {
            // Add remaining margin to market with lowest CR
            IMarket(sortedFunds[0].market).addInsuranceMargin(remainingMargin); 
            sortedFunds[0].marginTransferred += remainingMargin;
        }
        return sortedFunds;
    }

    // Add getter for active markets
    function getActiveMarkets(bytes32 subAccountId) external view returns (address[] memory) {
        return activeMarkets[subAccountId];
    }

    

}