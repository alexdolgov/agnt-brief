// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MarketStorage.sol";
import "../libraries/YieldPositionLib.sol";
import "../interfaces/IOracle.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../clearinghouse/ClearingHouseImp.sol";
import "../tokens/PToken.sol";

contract UpdateImp is MarketStorage {
    using SafeMath for int256;
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using YieldPositionLib for YieldPositionLib.YieldPosition;

    error OnlyClearingHouse();
    error ProcessedLPAndUserNotZero();
    error YieldMarketNotPaused();
    error YieldMarketNotExpired();
    error YieldMarketNotUpdating();
    error InvalidLPAccountsProcessed();
    error LiquidityMustBeZero();
    error InvalidEpochStateTransition();
    error InvalidLpState();
    error InvalidUserAccountsProcessed();
    error DuplicateUser();
    error NotSpotMarket();
    error UserHasNoPositionInMarket();


    // Define events
    event EpochUpdateBegin(uint256 epochStartTimestamp, uint256 impliedRate, uint160 curSqrtPriceX96, int24 tickIndex, uint256 maturity);
    event EpochUpdateChangePrice(uint256 epochStartTimestamp, uint256 impliedRate, uint160 newSqrtPriceX96, int24 newTickIndex, uint256 newMaturity);
    event EpochUpdateEnd(uint256 epochUpdateEndTs, int256 totalMarginAmount, int256 totalQuoteAssetAmount);
    event EpochUpdateAddRecord(
        bytes32 indexed subAccountId,
        uint256 lowerRate,
        uint256 upperRate,
        int24 tickLowerIndex,
        int24 tickUpperIndex,
        int256 ammBaseAmount,
        int256 ammQuoteAmount,
        int256 reserveBaseAmount,
        int256 reserveQuoteAmount,
        uint128 liquidity
    );
    
    event EpochUpdateRemoveRecord(
        bytes32 indexed subAccountId,
        uint256 lowerRate,
        uint256 upperRate,
        int24 tickLowerIndexOld,
        int24 tickUpperIndexOld,
        uint256 ammBaseAmountOld,
        uint256 ammQuoteAmountOld,
        uint128 liquidityOld,
        int24 tickLowerIndexNew,
        int24 tickUpperIndexNew,
        uint256 ammBaseAmountNew,
        uint256 ammQuoteAmountNew,
        uint128 liquidityNew
    );

    event SocialLossProcessed(
        bytes32 indexed subAccountId,
        int256 baseAmount,
        int256 quoteAmount,
        int256 lpQuota,
        int256 totalQuota
    );

    event KeeperFeeProcessed(
        bytes32 indexed subAccountId,
        uint256 keeperFee,
        int256 marginAmount,
        int256 totalQuoteAssetAmount,
        int256 totalMarginAmount
    );

    event CalculateOVDebug(
        int256 totalMarginAmount,
        int256 totalQuoteAssetAmount,
        int256 totalQuoteAssetAmountPeg,
        int256 totalQuoteAssetAmountRebase,
        int256 badDebt,
        int256 overValue,
        uint256 currentPrice,
        int256 lpBaseAmount,
        int256 lpQuoteAmount
    );

    event Redistribution(
        int256 lpValue,
        int256 overValue
    );

    event EpochUpdateExpiryCheckRecord(
        bytes32 subAccountId
    );

    event EpochUpdateExpiryApplyRecord(
        bytes32 subAccountId
    );

    event SettleUserRecord(
        bytes32 subAccountId,
        int256 baseAmountFilled,
        int256 quoteAmountFilled,
        int256 baseAmountHeld,
        int256 quoteAmountHeld,
        int256 realizedPnl,
        int256 balanceDelta
    );

    // ClearingHouseImp public immutable clearingHouse;
    // int24 public immutable tickSpacing;

    modifier onlyClearingHouse() {
        if (msg.sender != address(clearingHouse)) revert OnlyClearingHouse();
        _;
    }

    modifier onlyUpdatingMarket() {
        if (stats.status != MarketStatus.Updating) {
            revert YieldMarketNotUpdating();
        }
        _;
    }
   

    function _checkExpiry() internal view {
        if (stats.status != MarketStatus.Expired && expireTs > IOracle(oracle).epochStartTs()) {
            revert YieldMarketNotExpired();
        }
    }

    function epochUpdateBegin(bool isExpired) external onlyClearingHouse {
        // Load oracle data
        uint256 epochStartTimestamp = IOracle(oracle).epochStartTs();
        uint256 lastEpochStartTimestamp = IOracle(oracle).lastEpochStartTs();

        // Validate market state
        if (epochUpdate.lpAccountsProcessed != 0 || epochUpdate.userAccountsProcessed != 0) {
            revert ProcessedLPAndUserNotZero();
        }
        if (stats.status != MarketStatus.Paused) {
            revert YieldMarketNotPaused();
        }

        if (isExpired) {
            _checkExpiry();
        }


        (uint160 curSqrtPriceX96, int24 tickIndex, , , , , ) = IUniswapV3Pool(pool).slot0();
        uint256 maturity = RateMath.getMaturity(lastEpochStartTimestamp, expireTs);
        uint256 impliedRate = RateMath.calculateImpliedRate(maturity, curSqrtPriceX96);

        // Update market state
        epochUpdate.impliedRate = impliedRate;
        epochUpdate.lpBaseAmount = 0;
        epochUpdate.lpQuoteAmount = 0;
        stats.status = MarketStatus.Updating;
        epochUpdate.status = EpochUpdateStatus.Begin;
        epochUpdate.totalSlossQuoteQuota = _getTotalSlossQuota();

        // Emit event
        emit EpochUpdateBegin(epochStartTimestamp, impliedRate, curSqrtPriceX96, tickIndex, maturity);
    }

    function epochUpdateChangePrice(bool isExpired) external onlyClearingHouse onlyUpdatingMarket {

        if (isExpired) {
            _checkExpiry();
        }
        
        // Validate LP accounts processing
        if (epochUpdate.lpAccountsProcessed != stats.numberOfActiveLps) {
            revert InvalidLPAccountsProcessed();
        }
        
        // Validate pool liquidity
        if (IUniswapV3Pool(pool).liquidity() != 0) {
            revert LiquidityMustBeZero();
        }

        // Reset LP accounts processed
        epochUpdate.lpAccountsProcessed = 0;
        stats.totalReserveQuoteAmount = 0;
        stats.totalReserveBaseAmount = 0;
        
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        stats.netQuoteAmountRealized = (stats.netQuoteAmountRealized * currentRate) / stats.netPosition.lastRate;
        stats.netPosition.rebaseYieldPosition(currentRate);
        insuranceYieldPosition.rebaseYieldPosition(currentRate);


        if (isExpired) {            
            epochUpdate.epochPriceGapX64 = 0;
        } else {
            uint256 epochStartTimestamp = IOracle(oracle).epochStartTs();
            uint256 maturity = RateMath.getMaturity(epochStartTimestamp, expireTs);
            uint256 sqrtPrice = RateMath.calculateSqrtPrice(maturity, epochUpdate.impliedRate);
            uint160 sqrtPriceX96 = uint160((uint256(sqrtPrice) * (1 << 96)) / 1e18);
            int24 tickIndex = TickMath.getTickAtSqrtRatio(sqrtPriceX96);

            (uint160 curSqrtPriceX96, , , , , , ) = IUniswapV3Pool(pool).slot0();
            uint160 oldPriceX96 = LiquidityMath.sqrtPriceX96ToPriceX96(curSqrtPriceX96);
            uint160 newPriceX96 = LiquidityMath.sqrtPriceX96ToPriceX96(sqrtPriceX96);
            epochUpdate.epochPriceGapX64 = oldPriceX96 - newPriceX96;

            IUniswapV3Pool(pool).setSqrtPriceX96(sqrtPriceX96, tickIndex);
            
            // Emit price change event
            emit EpochUpdateChangePrice(
                epochStartTimestamp, 
                epochUpdate.impliedRate,
                sqrtPriceX96,
                tickIndex,
                maturity
            );
        }

        // Update epoch status
        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.ChangePrice);
        epochUpdate.status = EpochUpdateStatus.ChangePrice;
    }

    function epochUpdateEnd(bool isExpired) external onlyClearingHouse onlyUpdatingMarket {

        if (epochUpdate.lpAccountsProcessed != stats.numberOfActiveLps) {
            revert InvalidLPAccountsProcessed();
        }

        if (isExpired) {
            _checkExpiry();
            stats.status = MarketStatus.Expired;
        }

        // Reset epoch update state variables
        epochUpdate.impliedRate = 0;
        epochUpdate.lpAccountsProcessed = 0;
        epochUpdate.lpBaseAmount = 0;
        epochUpdate.lpQuoteAmount = 0;
        epochUpdate.totalSlossQuoteQuota = 0;

        // Handle social loss position updates
        // int256 slossBaseAmountFilled = epochUpdate.slossBaseAmountFilled;
        // int256 slossQuoteAmountFilled = epochUpdate.slossQuoteAmountFilled;
        socialLossYieldPosition.baseAssetAmount -=  epochUpdate.slossBaseAmountFilled;
        socialLossYieldPosition.quoteAssetAmount -= epochUpdate.slossQuoteAmountFilled;
        socialLossYieldPosition.rebaseYieldPosition(int256(uint256(IOracle(oracle).getValue())));
        
        // Reset social loss filled amounts
        epochUpdate.slossBaseAmountFilled = 0;
        epochUpdate.slossQuoteAmountFilled = 0;

        // Set market status
        uint256 epochStartTimestamp = IOracle(oracle).epochStartTs();
        if (epochStartTimestamp >= expireTs) {
            stats.status = MarketStatus.Expired;
        } else {
            stats.status = MarketStatus.Active;
        }

        // Update final state
        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.End);
        epochUpdate.status = EpochUpdateStatus.End;
        stats.totalQuoteAssetAmount = _marginToQuote(stats.totalMarginAmount, false);
        epochUpdate.epochUpdateEndTs = block.timestamp;
        updateAllowedSqrtPrice();

        emit EpochUpdateEnd(
            epochUpdate.epochUpdateEndTs,
            stats.totalMarginAmount,
            stats.totalQuoteAssetAmount
        );
    }

    struct EpochUpdateRemoveVars {
        int24 tickLowerIndexOld;
        int24 tickUpperIndexOld;
        uint256 ammBaseAmountOld;
        uint256 ammQuoteAmountOld;
        uint128 liquidityOld;
        uint128 pendingFeesOwed;
        int24 tickLowerIndexNew;
        int24 tickUpperIndexNew;
        uint256 ammBaseAmountNew;
        uint256 ammQuoteAmountNew;
        uint128 liquidityNew;
    }

    function epochUpdateRemove(bool isExpired, bytes32 subAccountId) external onlyClearingHouse onlyUpdatingMarket {

        if (isExpired) {
            _checkExpiry();
        }
        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.Remove);

        
        // Process each LP position
        {
            EpochUpdateRemoveVars memory vars;
            
            // Load LP state
            LiquidityPosition memory position = liquidityPositions[subAccountId];
            if (position.state != LpStatus.Active) revert InvalidLpState();
            
            position.state = LpStatus.Updating;
            IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
            (uint160 curSqrtPriceX96, , , , , , ) = poolInstance.slot0();
            bytes32 positionKey = keccak256(abi.encodePacked(subAccountId, position.lowerTick, position.upperTick));
            (vars.liquidityOld,,,,,,) = poolInstance.positions(positionKey);
            
            // Handle social loss distribution if any exists
            _handleSocialLoss(position, subAccountId);

            // Remove existing liquidity
            if (vars.liquidityOld > 0) {
                (vars.ammBaseAmountOld, vars.ammQuoteAmountOld) = poolInstance.burn(
                    subAccountId,
                    position.lowerTick,
                    position.upperTick,
                    uint128(vars.liquidityOld)
                );
                (vars.tickLowerIndexOld, vars.tickUpperIndexOld) = (position.lowerTick, position.upperTick);
                if (vars.ammBaseAmountOld > 0 || vars.ammQuoteAmountOld > 0) {
                    poolInstance.collect(
                        subAccountId,
                        position.lowerTick,
                        position.upperTick,
                        uint128(vars.ammBaseAmountOld),
                        uint128(vars.ammQuoteAmountOld)
                    );
                }
            }

            // Rebase and distribute
            _rebaseAndDistributePosition(position, vars.ammBaseAmountOld, vars.ammQuoteAmountOld);

            // Handle keeper fee
            _handleKeeperFee(position);

            if (!isExpired) {
                // Calculate new position parameters
                (
                    vars.liquidityNew,
                    vars.ammBaseAmountNew,
                    vars.ammQuoteAmountNew,
                    vars.tickLowerIndexNew,
                    vars.tickUpperIndexNew
                ) = _calculateAndUpdateNewPosition(
                    position,
                    vars.liquidityOld,
                    curSqrtPriceX96,
                    vars.ammBaseAmountOld,
                    vars.ammQuoteAmountOld
                );

                // Update LP position
                position.pendingLiquidity = vars.liquidityNew;
                (uint128 fee0, uint128 fee1) = IUniswapV3Pool(pool).moveFeesFrom(
                    subAccountId,
                    vars.tickLowerIndexOld,
                    vars.tickUpperIndexOld
                );
                position.pendingFeesOwed = fee1;
                // position.lowerTick = vars.tickLowerIndexNew;
                // position.upperTick = vars.tickUpperIndexNew;
                // position.feeGrowthCheckpointA = 0;
                // position.feeGrowthCheckpointB = 0;
                
                // Update market totals
                epochUpdate.lpQuoteAmount += position.reserveQuoteAmount + int256(vars.ammQuoteAmountNew);
                epochUpdate.lpBaseAmount += position.reserveBaseAmount + int256(vars.ammBaseAmountNew);
            } else {
                // Handle expired market case
                position.reserveQuoteAmount += int256(vars.ammQuoteAmountOld);
                position.reserveBaseAmount += int256(vars.ammBaseAmountOld);
                epochUpdate.lpQuoteAmount += position.reserveQuoteAmount;
                epochUpdate.lpBaseAmount += position.reserveBaseAmount;
            }

            // Update LP status
            position.state = LpStatus.Updating;
            liquidityPositions[subAccountId] = position;

            emit EpochUpdateRemoveRecord(
                subAccountId,
                position.lowerRate,
                position.upperRate,
                vars.tickLowerIndexOld,
                vars.tickUpperIndexOld,
                vars.ammBaseAmountOld,
                vars.ammQuoteAmountOld,
                vars.liquidityOld,
                vars.tickLowerIndexNew,
                vars.tickUpperIndexNew,
                vars.ammBaseAmountNew,
                vars.ammQuoteAmountNew,
                vars.liquidityNew
            );
        }

        // Update epoch status
        epochUpdate.status = EpochUpdateStatus.Remove;
        epochUpdate.lpAccountsProcessed++;
    }

    function epochUpdateAdd(bool isExpired, bytes32 subAccountId) external onlyClearingHouse onlyUpdatingMarket {

        if (isExpired) {
            _checkExpiry();
            if (epochUpdate.status <= EpochUpdateStatus.ExpiryApply) {
                if (epochUpdate.userAccountsProcessed != 0) {
                    revert InvalidUserAccountsProcessed();
                }
            }
        }

        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.Add);

        (uint160 curSqrtPriceX96, , , , , , ) = IUniswapV3Pool(pool).slot0();
        (int256 totalLpValue, int256 overValue) = _calculate_overvalue();
        // int256 lpQuoteAmount = epochUpdate.lpQuoteAmount;

        if (isExpired) {
            LiquidityPosition memory position = liquidityPositions[subAccountId];
            
            if (position.state != LpStatus.Updating) {
                revert InvalidLpState();
            }
            position.state = LpStatus.Active;

    
            position.pendingLiquidity = 0;
            
            // Process redistribution for expired market
            _doRedistribution(
                overValue,
                totalLpValue,
                position.reserveBaseAmount,
                position.reserveQuoteAmount,
                0,
                0,
                curSqrtPriceX96,
                position,
                isExpired
            );

            stats.netPosition.baseAssetAmount += position.reserveBaseAmount;
            epochUpdate.lpAccountsProcessed++;
            epochUpdate.status = EpochUpdateStatus.Add;
            position.reserveBaseAmount = 0;

            stats.totalReserveQuoteAmount += position.reserveQuoteAmount;

            // Write changes back to storage
            liquidityPositions[subAccountId] = position;

            emit EpochUpdateAddRecord(
                subAccountId,
                position.lowerRate,
                position.upperRate,
                position.lowerTick,
                position.upperTick,
                0,
                0,
                position.reserveBaseAmount,
                position.reserveQuoteAmount,
                0
            );
        } else {
            // Handle normal epoch update

            LiquidityPosition memory position = liquidityPositions[subAccountId];
            
            if (position.state != LpStatus.Updating) {
                revert InvalidLpState();
            }
            position.state = LpStatus.Active;

            // Read data from memory
            uint128 liquidityNew = position.pendingLiquidity;
            position.pendingLiquidity = 0;

            (uint256 amount0, uint256 amount1) = liquidityNew == 0 ? 
                (0, 0) : 
                IUniswapV3Pool(pool).mint(
                    subAccountId,
                    position.lowerTick,
                    position.upperTick,
                    liquidityNew
                );

            if (position.pendingFeesOwed > 0) {
                IUniswapV3Pool(pool).moveFeesTo(
                    subAccountId,
                    position.lowerTick,
                    position.upperTick,
                    0,
                    position.pendingFeesOwed
                );
                position.pendingFeesOwed = 0;
            }

            _doRedistribution(
                overValue,
                totalLpValue,
                position.reserveBaseAmount,
                position.reserveQuoteAmount,
                int256(amount0),
                int256(amount1),
                curSqrtPriceX96,
                position,
                isExpired
            );

            epochUpdate.lpAccountsProcessed++;
            epochUpdate.status = EpochUpdateStatus.Add;
            
            if (position.reserveBaseAmount < 0) {
                stats.totalReserveBaseAmount += position.reserveBaseAmount;
            }
            stats.totalReserveQuoteAmount += position.reserveQuoteAmount;

            // Write changes back to storage
            liquidityPositions[subAccountId] = position;

            emit EpochUpdateAddRecord(
                subAccountId,
                position.lowerRate,
                position.upperRate,
                position.lowerTick,
                position.upperTick,
                int256(amount0),
                int256(amount1),
                position.reserveBaseAmount,
                position.reserveQuoteAmount,
                liquidityNew
            );
        }
    }

    function epochUpdateExpiryCheck(
        bytes32 subAccountId
    ) external onlyClearingHouse { 
        _checkExpiry();

        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.Expiry);

       (uint256 balance, ) = clearingHouse.traders(subAccountId);
        if (isExpiryOn[subAccountId]) {
            revert DuplicateUser();
        }
        isExpiryOn[subAccountId] = true;
        
        epochUpdate.userAccountsProcessed++;
        int256 marginBalance = int256(balance);
        epochUpdate.status = EpochUpdateStatus.Expiry;

        // Rebase position
        YieldPositionLib.YieldPosition  storage position = yieldPosition[subAccountId];
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        position.rebaseYieldPosition(currentRate);
        int256 quoteAssetAmount = position.quoteAssetAmount;
       
        if (quoteAssetAmount >= 0) {
            expireUpdate.expireTotalPosQuoteAmount += quoteAssetAmount;
            expireUpdate.expireTotalMargin += marginBalance;
        } else {
            int256 quoteAssetAmountInMargin = _quoteToMargin(quoteAssetAmount, false);
            int256 marginRemaining = marginBalance + quoteAssetAmountInMargin;
            expireUpdate.expireTotalMargin += marginRemaining > 0 ? marginRemaining : int256(0);
            
            int256 quoteRemaining = quoteAssetAmount + _marginToQuote(marginBalance, false);
            expireUpdate.expireTotalDebt += quoteRemaining < 0 ? quoteRemaining : int256(0);
        }

        emit EpochUpdateExpiryCheckRecord(subAccountId);
    }

    function epochUpdateExpiryApply(
       bytes32 subAccountId
    ) external onlyClearingHouse returns (int256 processedBalance) {
        _checkExpiry();

        if (epochUpdate.status == EpochUpdateStatus.Expiry) {
            if (stats.numberOfActiveUsers != epochUpdate.userAccountsProcessed) {
                revert InvalidUserAccountsProcessed();
            }
        }

        if (epochUpdate.status == EpochUpdateStatus.Expiry) {
            _handleInsurancePosition();
        }

        _validateEpochStateTransition(epochUpdate.status, EpochUpdateStatus.ExpiryApply);
        epochUpdate.status = EpochUpdateStatus.ExpiryApply;     

        (uint256 marginBalance, ) = clearingHouse.traders(subAccountId);
        if (!isExpiryOn[subAccountId]) {
            revert DuplicateUser();
        }
        isExpiryOn[subAccountId] = false;

        epochUpdate.userAccountsProcessed--;

        processedBalance = _processUserExpiry(subAccountId, int256(marginBalance));

        emit EpochUpdateExpiryApplyRecord(subAccountId);
        return processedBalance;
    }


    function epochUpdateExpirySettleSpotUser(
        bytes32 subAccountId
    ) external onlyClearingHouse returns (int256 balanceDelta) {
        // Check market status and type
        if (stats.status != MarketStatus.Expired) {
            revert YieldMarketNotExpired();
        }
        if (marketType != MarketType.Spot) {
            revert NotSpotMarket();
        }

        // Get user's position
        YieldPositionLib.YieldPosition storage position = yieldPosition[subAccountId];
        
        // Get current oracle rate
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        
        // Rebase position with current rate
        position.rebaseYieldPosition(currentRate);
        
        // Check if position exists
        if (position.baseAssetAmount == 0 && position.quoteAssetAmount == 0) {
            revert UserHasNoPositionInMarket();
        }

        // Update market stats
        stats.numberOfActiveUsers--;
        
        // Store position amounts before reset
        int256 quoteAssetAmount = position.quoteAssetAmount;
        int256 baseAssetAmount = position.baseAssetAmount;
        
        // Update market net amounts
        stats.netPosition.baseAssetAmount -= baseAssetAmount;        
        // Reset position
        delete yieldPosition[subAccountId];
        
        // Update market net amounts
        stats.netPosition.quoteAssetAmount -= quoteAssetAmount;
        stats.netQuoteAmountRealized += quoteAssetAmount;

        balanceDelta = _quoteToMargin(quoteAssetAmount, false);

        emit SettleUserRecord(
            subAccountId,
            -baseAssetAmount,
            -quoteAssetAmount,
            0,
            0,
            quoteAssetAmount,
            balanceDelta
        );

        return balanceDelta;
    }

    function updateAllowedSqrtPrice() public {
        uint256 maturitySecond = RateMath.getMaturity(IOracle(oracle).epochStartTs(), expireTs);
        uint256 minRateSqrtPrice = RateMath.calculateSqrtPrice(uint64(maturitySecond), minAllowedRate);
        minAllowedSqrtPriceX96 = uint160((minRateSqrtPrice * (1 << 96)) / 1e18);        
        uint256 maxRateSqrtPrice = RateMath.calculateSqrtPrice(uint64(maturitySecond), maxAllowedRate);
        maxAllowedSqrtPriceX96 = uint160((maxRateSqrtPrice * (1 << 96)) / 1e18);
    }       

    // internal functions
    function _handleSocialLoss(
        LiquidityPosition memory position,
        bytes32 subAccountId
    ) internal {
        int256 slossTotalBase = socialLossYieldPosition.baseAssetAmount;
        int256 slossTotalQuote = socialLossYieldPosition.quoteAssetAmount;
        
        if (slossTotalBase == 0 && slossTotalQuote == 0) {
            return;
        }

        // Calculate quotas
        int256 lpSlossQuoteQuota = _getLpSlossQuota(position);
        int256 totalSlossQuoteQuota = epochUpdate.totalSlossQuoteQuota;

        // Calculate executing ratio
        int256 executingRatio;
        if (slossTotalQuote < 0 && slossTotalBase >= 0) {
            executingRatio = totalSlossQuoteQuota * 1e18 / slossTotalQuote;
        } else if (slossTotalQuote >= 0 && slossTotalBase < 0) {
            executingRatio = totalSlossQuoteQuota * int256(activeRatioCoef) / slossTotalBase;
        } else {
            executingRatio = totalSlossQuoteQuota * int256(activeRatioCoef) * 1e18 / (slossTotalQuote * int256(activeRatioCoef) + slossTotalBase * 1e18);
        }
        if (executingRatio > 1e18) executingRatio = 1e18;

        // Calculate LP's share of social loss
        int256 slossQuoteAmountLp;
        int256 slossBaseAmountLp;
        if (slossTotalQuote >= 0) {
            slossQuoteAmountLp = SafeMath.mulDiv(slossTotalQuote * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
        } else {
            slossQuoteAmountLp = SafeMath.mulDivCeil(slossTotalQuote * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
        }

        if (slossTotalBase >= 0) {
            slossBaseAmountLp = SafeMath.mulDiv(slossTotalBase * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
        } else {
            slossBaseAmountLp = SafeMath.mulDivCeil(slossTotalBase * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
        }
        // Update LP reserves
        position.reserveBaseAmount += slossBaseAmountLp;
        position.reserveQuoteAmount += slossQuoteAmountLp;

        // Update market state
        // stats.netPosition.baseAssetAmount -= slossBaseAmountLp;
        // stats.netPosition.quoteAssetAmount -= slossQuoteAmountLp;

        epochUpdate.slossQuoteAmountFilled += slossQuoteAmountLp;
        epochUpdate.slossBaseAmountFilled += slossBaseAmountLp;

        emit SocialLossProcessed(
            subAccountId,
            slossBaseAmountLp,
            slossQuoteAmountLp,
            lpSlossQuoteQuota,
            totalSlossQuoteQuota
        );
    }

    // Add validation function for state transitions
    function _validateEpochStateTransition(
        EpochUpdateStatus currentState,
        EpochUpdateStatus nextState
    ) internal pure {
        if (uint8(nextState) < uint8(currentState)) {
            revert InvalidEpochStateTransition();
        }
    }

    function _quoteToMargin(int256 quoteAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(quoteAmount, 1e18, int256(oraclePrice)) : SafeMath.mulDiv(quoteAmount, 1e18, int256(oraclePrice));
    }

    function _marginToQuote(int256 marginAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(marginAmount, int256(oraclePrice), 1e18) : SafeMath.mulDiv(marginAmount, int256(oraclePrice), 1e18);
    }

    function _getTotalSlossQuota() internal view returns (int256) {
        int256 quoteUsed = stats.totalReserveBaseAmount * int256(1e18) / int256(activeRatioCoef);
        int256 quoteQuota = -stats.totalReserveQuoteAmount - quoteUsed;
        return quoteQuota;
    }

    function _getLpSlossQuota(LiquidityPosition memory position) internal view returns (int256) {
        // Calculate quote used based on base amount
        int256 baseAmount = position.reserveBaseAmount < 0 ? position.reserveBaseAmount : int256(0);
        int256 quoteUsed = baseAmount * 1e18 / int256(activeRatioCoef);
        // Calculate quote quota
        int256 quoteQuota = -position.reserveQuoteAmount - quoteUsed;
        // Convert to positive uint256 if needed
        return quoteQuota;
    }

    function _handleKeeperFee(
        LiquidityPosition memory position
    ) internal {
        // Get keeper fee amount
        // uint256 keeperFee = stats.keeperFee;
        
        // Cap keeper fee at available reserve amount
        int256 lpKeeperFee;
        if (keeperFee > position.reserveQuoteAmount) {
            lpKeeperFee = position.reserveQuoteAmount.max(0);
        } else {
            lpKeeperFee = keeperFee;
        }

        // Update LP reserve
        position.reserveQuoteAmount -= lpKeeperFee;
        // Convert quote amount to margin amount
        int256 marginAmount = _quoteToMargin(lpKeeperFee, true);

        // Update market totals
        stats.totalQuoteAssetAmount -= lpKeeperFee;
        stats.totalMarginAmount -= marginAmount;
        stats.totalKeeperFee += marginAmount;
    }

    function _rebaseAndDistributePosition(
        LiquidityPosition memory position,
        uint256 ammQuoteAmount,
        uint256 ammBaseAmount
    ) internal view {
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        int256 lastRate = int256(uint256(IOracle(oracle).getLastValue()));

        int256 yield = YieldPositionLib.calculateCumulativeYield(
            position.reserveQuoteAmount + int256(ammQuoteAmount),
            position.reserveBaseAmount + int256(ammBaseAmount),
            currentRate,
            lastRate
        );
        position.reserveQuoteAmount += yield;
        
    }

    struct RebalanceVars {
        uint256 liquidityOld;
        uint256 lowerRate;
        uint256 upperRate;
        int24 tickLowerIndexNew;
        int24 tickUpperIndexNew;
        uint160 sqrtPriceX96;
        uint160 sqrtPriceA;
        uint160 sqrtPriceB;
        uint160 sqrtPriceANew;
        uint160 sqrtPriceBNew;
        uint128 liquidityNew;
        int256 ammQuoteDelta;
        int256 ammBaseDelta;
    }

    function _calculateAndUpdateNewPosition(
        LiquidityPosition memory position,
        uint256 liquidityOld,
        uint160 curSqrtPriceX96,
        uint256 ammBaseAmount,
        uint256 ammQuoteAmount
    ) internal view returns (
        uint128 liquidityNew,
        uint256 ammBaseAmountNew,
        uint256 ammQuoteAmountNew,
        int24 tickLowerIndexNew,
        int24 tickUpperIndexNew
    ) {
        RebalanceVars memory vars;

        // Load current position parameters
        vars.liquidityOld = liquidityOld;
        vars.lowerRate = position.lowerRate;
        vars.upperRate = position.upperRate;

        // Calculate new tick indices
        uint256 new_maturity = RateMath.getMaturity(IOracle(oracle).epochStartTs(), expireTs);
        vars.tickLowerIndexNew = RateMath.calculateTickIndexFromImpliedRate(
            new_maturity,
            vars.lowerRate,
            tickSpacing,
            true
        );
        vars.tickUpperIndexNew = RateMath.calculateTickIndexFromImpliedRate(
            new_maturity,
            vars.upperRate,
            tickSpacing,
            false
        );
        // Calculate new sqrt price
        uint256 sqrtPrice = RateMath.calculateSqrtPrice(
            new_maturity,
            epochUpdate.impliedRate
        );
        vars.sqrtPriceX96 = uint160(sqrtPrice) * (1 << 96) / 1e18;
        // Calculate old and new sqrt prices
        vars.sqrtPriceA = TickMath.getSqrtRatioAtTick(position.lowerTick);
        vars.sqrtPriceB = TickMath.getSqrtRatioAtTick(position.upperTick);
        vars.sqrtPriceANew = TickMath.getSqrtRatioAtTick(vars.tickLowerIndexNew);
        vars.sqrtPriceBNew = TickMath.getSqrtRatioAtTick(vars.tickUpperIndexNew);

        uint256 numerator1 = uint256(vars.sqrtPriceANew) * uint256(vars.sqrtPriceBNew);
        uint256 numerator2 = uint256(vars.sqrtPriceB - vars.sqrtPriceA);
        uint256 denominator1 = uint256(vars.sqrtPriceA) * uint256(vars.sqrtPriceB);
        uint256 denominator2 = uint256(vars.sqrtPriceBNew - vars.sqrtPriceANew);

        // Use intermediate variables and adjust calculation order
        uint256 ratio1 = (numerator1 * 1e18) / denominator1;
        uint256 ratio2 = (numerator2 * 1e18) / denominator2;
        vars.liquidityNew = uint128((uint256(vars.liquidityOld) * ratio1 * ratio2) / 1e36);
        

        // Calculate new amounts
        if (vars.liquidityNew > 0) {
            (ammBaseAmountNew, ammQuoteAmountNew) = LiquidityAmount.getAmountsForLiquidity(
                vars.sqrtPriceX96,
                vars.sqrtPriceANew,
                vars.sqrtPriceBNew,
                vars.liquidityNew
            );

            // Calculate deltas
            vars.ammQuoteDelta = int256(ammQuoteAmountNew) - int256(ammQuoteAmount);
            vars.ammBaseDelta = int256(ammBaseAmountNew) - int256(ammBaseAmount);

            // Update LP reserves
            position.reserveBaseAmount -= vars.ammBaseDelta;
            position.reserveQuoteAmount -= vars.ammQuoteDelta;

            position.lowerTick = vars.tickLowerIndexNew;
            position.upperTick = vars.tickUpperIndexNew;

        }

        return (
            vars.liquidityNew,
            ammBaseAmountNew,
            ammQuoteAmountNew,
            vars.tickLowerIndexNew,
            vars.tickUpperIndexNew
        );
    }

    function _calculate_overvalue() internal returns (int256 totalLpValue, int256 overValue) {
        (uint160 curSqrtPriceX96, , , , , , ) = IUniswapV3Pool(pool).slot0();
        
        // Calculate total quote asset amount peg
        int256 totalQuoteAssetAmountPeg = _marginToQuote(stats.totalMarginAmount, false);
        int256 badDebt = expireUpdate.expireTotalDebt - expireUpdate.expireTotalDebtCovered;

        // Calculate earn realized rebase
        int256 earnRealizedRebase;
        uint256 currentRate = IOracle(oracle).getValue();
        uint256 lastRate = IOracle(oracle).getLastValue();
        earnRealizedRebase = (earnPosition.netQuoteAmountRealized * int256(currentRate) / int256(lastRate)) 
                            - earnPosition.netQuoteAmountRealized;
     

        // Calculate total quote asset amount rebase
        int256 totalQuoteAssetAmountRebase = epochUpdate.lpQuoteAmount
            + stats.netPosition.quoteAssetAmount
            + stats.netQuoteAmountRealized
            + earnPosition.netQuoteAmountRealized
            + earnRealizedRebase;

        // Calculate over value
        overValue = totalQuoteAssetAmountPeg - totalQuoteAssetAmountRebase;

        // Calculate total LP value
        uint256 currentPrice = LiquidityMath.sqrtPriceX96ToPrice(curSqrtPriceX96);
        totalLpValue = (epochUpdate.lpBaseAmount * int256(currentPrice) / 1e18) + epochUpdate.lpQuoteAmount;

        // Optional: Emit debug info
        emit CalculateOVDebug(
            stats.totalMarginAmount,
            stats.totalQuoteAssetAmount,
            totalQuoteAssetAmountPeg,
            totalQuoteAssetAmountRebase,
            badDebt,
            overValue,
            currentPrice,
            epochUpdate.lpBaseAmount,
            epochUpdate.lpQuoteAmount
        );

        return (totalLpValue, overValue);
    }

    function _doRedistribution(
        int256 ov,
        int256 totalLpValue,
        int256 reserveBaseAmount,
        int256 reserveQuoteAmount,
        int256 ammBaseAmount,
        int256 ammQuoteAmount,
        uint160 sqrtPrice,
        LiquidityPosition memory position,
        bool isExpired
    ) internal {
        int256 lpValue;
        
        if (isExpired) {
            // For expired markets, LP value is just the quote amount
            lpValue = position.reserveQuoteAmount;
        } else {
            // Calculate net base amount and value for non-expired markets
            int256 netBaseAmount = ammBaseAmount + reserveBaseAmount;
            uint256 currentPrice = LiquidityMath.sqrtPriceX96ToPrice(sqrtPrice);
            int256 baseAssetValue = (netBaseAmount * int256(currentPrice)) / 1e18;
            lpValue = baseAssetValue + reserveQuoteAmount + ammQuoteAmount;
        }

        // Calculate over value distribution
        int256 overValue;
        if (totalLpValue != 0) {
            overValue = (ov * lpValue) / totalLpValue;
        }

        // Update LP's reserve quote amount
        position.reserveQuoteAmount += overValue;
        emit Redistribution(
            lpValue,
            overValue
        );
        
        
    }
    
    function _handleInsurancePosition() internal {
        if (insuranceYieldPosition.baseAssetAmount == 0 && insuranceYieldPosition.quoteAssetAmount == 0) {
            return;
        }

        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        insuranceYieldPosition.rebaseYieldPosition(currentRate);
        int256 insuranceQuoteAmount = insuranceYieldPosition.quoteAssetAmount;
        int256 insuranceBaseAmount = insuranceYieldPosition.baseAssetAmount;
        int256 debtCovered;

        if (insuranceQuoteAmount >= 0) {
            if (insuranceQuoteAmount >= -expireUpdate.expireTotalDebt) {
                insuranceYieldPosition.quoteAssetAmount += expireUpdate.expireTotalDebt;
                insuranceYieldPosition.baseAssetAmount = 0;
                debtCovered = expireUpdate.expireTotalDebt;
                expireUpdate.expireTotalDebt = 0;

                stats.totalLiquidationFee += _quoteToMargin(insuranceYieldPosition.quoteAssetAmount, false);
            } else {
                expireUpdate.expireTotalDebt += insuranceQuoteAmount;
                debtCovered = -insuranceQuoteAmount;
            }
        } else {
            expireUpdate.expireTotalDebt += insuranceQuoteAmount;
            debtCovered = -insuranceQuoteAmount;
        }
        delete insuranceYieldPosition;

        stats.netPosition.quoteAssetAmount -= insuranceQuoteAmount;
        stats.netPosition.baseAssetAmount -= insuranceBaseAmount;
        stats.netQuoteAmountRealized += (insuranceQuoteAmount + debtCovered);
    }

    function _processUserExpiry(bytes32 subAccountId, int256 marginBalance) internal returns (int256 balanceDelta) {
        YieldPositionLib.YieldPosition storage position = yieldPosition[subAccountId];
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        position.rebaseYieldPosition(currentRate);

        int256 quoteAssetAmount = position.quoteAssetAmount;
        int256 baseAssetAmount = position.baseAssetAmount;
        stats.netPosition.baseAssetAmount -= baseAssetAmount;
        delete yieldPosition[subAccountId];

        // Calculate bad debt
        int256 badDebt2 = expireUpdate.expireTotalPosQuoteAmount + expireUpdate.expireTotalDebt;
        int256 expireTotalMarginInQuote = _marginToQuote(expireUpdate.expireTotalMargin, false);
        int256 badDebt3 = badDebt2 + expireTotalMarginInQuote;
        int256 realizedPnl;


        if (quoteAssetAmount >= 0) {
            if (badDebt2 >= 0) {
                // Bad debt case 1
                int256 debtCovered;
                if (expireUpdate.expireTotalPosQuoteAmount > 0) {
                    debtCovered = SafeMath.mulDivCeil(expireUpdate.expireTotalDebt, quoteAssetAmount, expireUpdate.expireTotalPosQuoteAmount);
                } else {
                    debtCovered = 0;
                }
                realizedPnl = quoteAssetAmount + debtCovered;
                balanceDelta = _quoteToMargin(realizedPnl, false);
                expireUpdate.expireTotalDebtCovered += debtCovered;

                stats.netPosition.quoteAssetAmount -= quoteAssetAmount;
                stats.netQuoteAmountRealized += quoteAssetAmount + debtCovered;
                
            } else if (badDebt2 < 0 && badDebt3 >= 0) {
                // Bad debt case 2
                int256 debt2Covered = SafeMath.mulDivCeil(badDebt2, marginBalance, expireUpdate.expireTotalMargin);
                realizedPnl = debt2Covered;
                balanceDelta = _quoteToMargin(realizedPnl, false);
                expireUpdate.expireTotalDebtCovered = expireUpdate.expireTotalDebtCovered + debt2Covered - quoteAssetAmount;

                stats.netPosition.quoteAssetAmount -= quoteAssetAmount;
                stats.netQuoteAmountRealized += realizedPnl;

            } else if (badDebt3 < 0) {
                // Bad debt case 3
                realizedPnl = -_marginToQuote(marginBalance, false);
                expireUpdate.expireTotalDebtCovered = expireUpdate.expireTotalDebtCovered - quoteAssetAmount - 
                                             _marginToQuote(marginBalance, false);
                balanceDelta = 0;
                stats.netPosition.quoteAssetAmount -= quoteAssetAmount;
                stats.netQuoteAmountRealized += realizedPnl;
            }
        } else {
            // Negative quote asset amount case
            realizedPnl = quoteAssetAmount;
            int256 quoteAssetAmountInMargin = _quoteToMargin(quoteAssetAmount, false);
            int256 marginRemaining = marginBalance + quoteAssetAmountInMargin;
            stats.netPosition.quoteAssetAmount -= quoteAssetAmount;
            stats.netQuoteAmountRealized += quoteAssetAmount;

            if (marginRemaining >= 0) {
                balanceDelta = marginRemaining - marginBalance;
            } else {
                // Handle bad debt
                balanceDelta = -marginBalance;
                int256 marginRemainingInQuote = _marginToQuote(marginRemaining, false);
                stats.netQuoteAmountRealized -= marginRemainingInQuote;
            }

            if (marginBalance + balanceDelta > 0) {
                if (badDebt2 < 0 && badDebt3 >= 0) {
                    // Bad debt case 2
                    int256 debt2Covered = SafeMath.mulDiv(badDebt2, marginBalance + balanceDelta, expireUpdate.expireTotalMargin);
                    realizedPnl += debt2Covered;
                    balanceDelta += _quoteToMargin(debt2Covered, false);
                    expireUpdate.expireTotalDebtCovered += debt2Covered;
                } else if (badDebt3 < 0) {
                    // Bad debt case 3
                    realizedPnl -= _marginToQuote(marginBalance + balanceDelta, false);
                    expireUpdate.expireTotalDebtCovered -= _marginToQuote(marginBalance + balanceDelta, false);
                    balanceDelta = -marginBalance;
                }
            }
        }

        emit SettleUserRecord(
            subAccountId,
            -baseAssetAmount,
            0,
            0,
            0,
            realizedPnl,
            balanceDelta
        );

        
    }

       
} 