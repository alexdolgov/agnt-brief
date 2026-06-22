// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {PositionStatus, IPositionManager} from "../interfaces/IPositionManager.sol";
import "../interfaces/IPositionRiskAnalyzer.sol";
import "../libraries/Position.sol";
import "../libraries/PositionKey.sol";
import "../libraries/PrecisionUtils.sol";
import "../libraries/Int256Utils.sol";
import "../interfaces/IFundingRate.sol";
import "../interfaces/IPool.sol";
import "../interfaces/IPriceFeed.sol";
import "../interfaces/IAddressesProvider.sol";
import "../interfaces/IRoleManager.sol";
import "../interfaces/IRiskReserve.sol";
import "../interfaces/IFeeCollector.sol";
import "../libraries/Upgradeable.sol";
import "../helpers/TokenHelper.sol";
import "../helpers/TradingHelper.sol";

contract PositionManager is IPositionManager, Upgradeable {
    using SafeERC20 for IERC20;
    using PrecisionUtils for uint256;
    using Math for uint256;
    using SafeMath for uint256;
    using Int256Utils for int256;
    using Int256Utils for uint256;
    using Position for mapping(bytes32 => Position.Info);
    using Position for Position.Info;

    mapping(bytes32 => Position.Info) public positions;

    mapping(uint256 => uint256) public override longTracker;
    mapping(uint256 => uint256) public override shortTracker;

    // gobleFundingRateIndex tracks the funding rates based on utilization
    mapping(uint256 => int256) public globalFundingFeeTracker;

    mapping(uint256 => int256) public currentFundingRate;

    // lastFundingRateUpdateTimes tracks the last time funding was updated for a token
    mapping(uint256 => uint256) public lastFundingRateUpdateTimes;

    IRiskReserve public riskReserve;
    IPool public pool;
    IFeeCollector public feeCollector;
    address public pledgeAddress;
    address public router;

    mapping(bytes32 => uint64) public positionsUpdateAt;
    mapping(address => bool) public isAllowedRouters;

    address public positionRiskAnalyzer;

    function initialize(
        IAddressesProvider addressProvider,
        IPool _pool,
        address _pledgeAddress,
        IFeeCollector _feeCollector,
        IRiskReserve _riskReserve
    ) public initializer {
        ADDRESS_PROVIDER = addressProvider;
        pledgeAddress = _pledgeAddress;
        pool = _pool;
        feeCollector = _feeCollector;
        riskReserve = _riskReserve;
    }

    modifier onlyRouter() {
        require(isAllowedRouters[msg.sender], "onlyRouter");
        _;
    }

    modifier onlyExecutor() {
        require(
            msg.sender == ADDRESS_PROVIDER.executionLogic() ||
                msg.sender == ADDRESS_PROVIDER.liquidationLogic(),
            "onlyExecutor"
        );
        _;
    }

    function setRouter(address _router) external onlyPoolAdmin {
        revert("deprecated");
    }

    function setAllowedRouters(address _router, bool _enable) external onlyPoolAdmin {
        isAllowedRouters[_router] = _enable;
        emit SetAllowedRouters(msg.sender, _router, _enable);
    }

    function setPositionRiskAnalyzer(address _positionRiskAnalyzer) external onlyPoolAdmin {
        address old = positionRiskAnalyzer;
        positionRiskAnalyzer = _positionRiskAnalyzer;
        emit UpdatePositionRiskAnalyzer(msg.sender, old, _positionRiskAnalyzer);
    }

    function increasePosition(
        uint256 pairIndex,
        uint256 orderId,
        address account,
        address keeper,
        uint256 sizeAmount,
        bool isLong,
        int256 collateral,
        IFeeCollector.TradingFeeTier memory tradingFeeTier,
        uint256 referralsRatio,
        uint256 referralUserRatio,
        address referralOwner,
        uint256 oraclePrice
    ) external onlyExecutor returns (uint256 tradingFee, int256 fundingFee) {
        IPool.Pair memory pair = pool.getPair(pairIndex);
        require(pair.stableToken == pledgeAddress, "!pledge");
        bytes32 positionKey = PositionKey.getPositionKey(account, pairIndex, isLong);
        Position.Info storage position = positions[positionKey];

        positionsUpdateAt[positionKey] = uint64(block.timestamp);

        uint256 beforeCollateral = position.collateral;
        uint256 beforePositionAmount = position.positionAmount;
        uint256 sizeDelta = sizeAmount.mulPrice(oraclePrice);

        if (position.positionAmount == 0) {
            position.init(pairIndex, account, isLong, oraclePrice);
        }

        if (position.positionAmount > 0 && sizeDelta > 0) {
            position.averagePrice = (position.positionAmount.mulPrice(position.averagePrice) +
                sizeDelta).mulDiv(
                    PrecisionUtils.pricePrecision(),
                    (position.positionAmount + sizeAmount)
                );
        }

        // update funding fee
        _updateFundingRate(pairIndex, oraclePrice);
        _handleCollateral(pairIndex, position, collateral);

        // settlement trading fee and funding fee
        int256 charge;
        (charge, tradingFee, fundingFee) = _takeFundingFeeAddTraderFee(
            pairIndex,
            account,
            keeper,
            orderId,
            sizeAmount,
            true,
            isLong,
            tradingFeeTier,
            referralsRatio,
            referralUserRatio,
            referralOwner,
            oraclePrice
        );

        if (charge >= 0) {
            position.collateral = position.collateral.add(charge.abs());
        } else {
            if (position.collateral >= charge.abs()) {
                position.collateral = position.collateral.sub(charge.abs());
            } else {
                // adjust position averagePrice
                uint256 lossPer = charge.abs().divPrice(position.positionAmount);
                position.isLong
                    ? position.averagePrice = position.averagePrice + lossPer
                    : position.averagePrice = position.averagePrice - lossPer;
            }
        }

        position.fundingFeeTracker = globalFundingFeeTracker[pairIndex];
        position.positionAmount += sizeAmount;

        // settlement lp position
        _settleLPPosition(pairIndex, sizeAmount, isLong, true, oraclePrice);
        emit UpdatePosition(
            account,
            positionKey,
            pairIndex,
            orderId,
            isLong,
            beforeCollateral,
            position.collateral,
            oraclePrice,
            beforePositionAmount,
            position.positionAmount,
            position.averagePrice,
            position.fundingFeeTracker,
            0
        );
    }

    function decreasePosition(
        uint256 pairIndex,
        uint256 orderId,
        address account,
        address keeper,
        uint256 sizeAmount,
        bool isLong,
        int256 collateral,
        IFeeCollector.TradingFeeTier memory tradingFeeTier,
        uint256 referralsRatio,
        uint256 referralUserRatio,
        address referralOwner,
        uint256 oraclePrice,
        bool useRiskReserve
    ) external onlyExecutor returns (uint256 tradingFee, int256 fundingFee, int256 pnl) {
        bytes32 positionKey = PositionKey.getPositionKey(account, pairIndex, isLong);
        Position.Info storage position = positions[positionKey];
        require(position.account != address(0), "!0");

        positionsUpdateAt[positionKey] = uint64(block.timestamp);

        uint256 beforeCollateral = position.collateral;
        uint256 beforePositionAmount = position.positionAmount;

        // update funding fee
        _updateFundingRate(pairIndex, oraclePrice);

        // settlement trading fee and funding fee
        int256 charge;
        (charge, tradingFee, fundingFee) = _takeFundingFeeAddTraderFee(
            pairIndex,
            account,
            keeper,
            orderId,
            sizeAmount,
            false,
            isLong,
            tradingFeeTier,
            referralsRatio,
            referralUserRatio,
            referralOwner,
            oraclePrice
        );

        position.fundingFeeTracker = globalFundingFeeTracker[pairIndex];
        position.positionAmount -= sizeAmount;

        IPool.Pair memory pair = pool.getPair(pairIndex);

        // settlement lp position
        _settleLPPosition(pairIndex, sizeAmount, isLong, false, oraclePrice);

        pnl = position.getUnrealizedPnl(pair, sizeAmount, oraclePrice);

        int256 totalSettlementAmount = pnl + charge;
        if (totalSettlementAmount >= 0) {
            position.collateral = position.collateral.add(totalSettlementAmount.abs());
        } else {
            if (position.collateral >= totalSettlementAmount.abs()) {
                position.collateral = position.collateral.sub(totalSettlementAmount.abs());
            } else {
                if (position.positionAmount == 0) {
                    uint256 subsidy = totalSettlementAmount.abs() - position.collateral;
                    riskReserve.decrease(pair.stableToken, subsidy);
                    position.collateral = 0;
                } else {
                    // adjust position averagePrice
                    uint256 lossPer = totalSettlementAmount.abs().divPrice(position.positionAmount);
                    position.isLong
                        ? position.averagePrice = position.averagePrice + lossPer
                        : position.averagePrice = position.averagePrice - lossPer;
                }
            }
        }

        _handleCollateral(pairIndex, position, collateral);

        if (position.positionAmount == 0 && position.collateral > 0) {
            if (useRiskReserve) {
                riskReserve.increase(pair.stableToken, position.collateral);
            } else {
                pool.transferTokenOrSwap(
                    pairIndex,
                    pledgeAddress,
                    position.account,
                    position.collateral
                );
            }
            position.collateral = 0;
        }

        emit UpdatePosition(
            account,
            positionKey,
            pairIndex,
            orderId,
            isLong,
            beforeCollateral,
            position.collateral,
            oraclePrice,
            beforePositionAmount,
            position.positionAmount,
            position.averagePrice,
            position.fundingFeeTracker,
            pnl
        );
    }

    function adjustCollateral(
        uint256 pairIndex,
        address account,
        bool isLong,
        int256 collateral
    ) external override onlyRouter {
        bytes32 positionKey = PositionKey.getPositionKey(account, pairIndex, isLong);
        Position.Info storage position = positions[positionKey];
        if (position.positionAmount == 0) {
            revert("position not exists");
        }

        IPool.Pair memory pair = pool.getPair(pairIndex);

        uint256 price = IPriceFeed(ADDRESS_PROVIDER.priceOracle()).getPriceSafely(pair.indexToken);

        require(!needLiquidation(positionKey, price), "need liquidation");

        positionsUpdateAt[positionKey] = uint64(block.timestamp);

        IPool.TradingConfig memory tradingConfig = pool.getTradingConfig(pairIndex);
        position.validLeverage(
            pair,
            price,
            collateral,
            0,
            true,
            tradingConfig.maxLeverage,
            tradingConfig.maxPositionAmount,
            false,
            getFundingFee(account, pairIndex, isLong)
        );

        if (collateral > 0) {
            IERC20(pair.stableToken).safeTransferFrom(msg.sender, address(pool), uint256(collateral));
        }

        uint256 collateralBefore = position.collateral;
        _handleCollateral(pairIndex, position, collateral);

        emit AdjustCollateral(
            position.account,
            position.pairIndex,
            position.isLong,
            positionKey,
            collateralBefore,
            position.collateral
        );
    }

    function updateFundingRate(uint256 _pairIndex) external onlyRouter {
        IPool.Pair memory pair = pool.getPair(_pairIndex);
        uint256 price = IPriceFeed(ADDRESS_PROVIDER.priceOracle()).getPriceSafely(pair.indexToken);
        _updateFundingRate(_pairIndex, price);
    }

    function _takeFundingFeeAddTraderFee(
        uint256 _pairIndex,
        address _account,
        address _keeper,
        uint256 _orderId,
        uint256 _sizeAmount,
        bool _isIncrease,
        bool _isLong,
        IFeeCollector.TradingFeeTier memory tradingFeeTier,
        uint256 referralsRatio,
        uint256 referralUserRatio,
        address referralOwner,
        uint256 _price
    ) internal returns (int256 charge, uint256 tradingFee, int256 fundingFee) {
        IPool.Pair memory pair = pool.getPair(_pairIndex);
        uint256 sizeDeltaStable = uint256(
            TokenHelper.convertIndexAmountToStableWithPrice(pair, int256(_sizeAmount), _price)
        );

        bool isMaker;
        (tradingFee, isMaker) = _regularTradingFee(_pairIndex, _isLong, _isIncrease, sizeDeltaStable, _price);
        charge -= int256(tradingFee);

        int256 exposureAmount = getExposedPositions(_pairIndex);

        int256 afterExposureAmount;
        if ((_isIncrease && _isLong) || (!_isIncrease && !_isLong)) {
            afterExposureAmount = exposureAmount + _sizeAmount.safeConvertToInt256();
        } else {
            afterExposureAmount = exposureAmount - _sizeAmount.safeConvertToInt256();
        }

        (int256 lpAmount, int256 vipTradingFee, uint256 givebackFeeAmount) = feeCollector.distributeTradingFee(
            pair,
            _account,
            _orderId,
            _keeper,
            _sizeAmount,
            sizeDeltaStable,
            _price,
            tradingFee,
            isMaker,
            tradingFeeTier,
            exposureAmount,
            afterExposureAmount,
            referralsRatio,
            referralUserRatio,
            referralOwner
        );

        fundingFee = getFundingFee(_account, _pairIndex, _isLong);
        charge += fundingFee;
        emit TakeFundingFeeAddTraderFeeV2(
            _account,
            _pairIndex,
            _orderId,
            sizeDeltaStable,
            fundingFee,
            tradingFee,
            vipTradingFee,
            givebackFeeAmount,
            lpAmount
        );
    }

    function _settleLPPosition(
        uint256 _pairIndex,
        uint256 _sizeAmount,
        bool _isLong,
        bool isIncrease,
        uint256 _price
    ) internal {
        if (_sizeAmount == 0) {
            return;
        }
        int256 currentExposureAmountChecker = getExposedPositions(_pairIndex);
        if (isIncrease) {
            _isLong
                ? longTracker[_pairIndex] += _sizeAmount
                : shortTracker[_pairIndex] += _sizeAmount;
        } else {
            _isLong
                ? longTracker[_pairIndex] -= _sizeAmount
                : shortTracker[_pairIndex] -= _sizeAmount;
        }
        int256 nextExposureAmountChecker = getExposedPositions(_pairIndex);
        uint256 sizeDelta = _sizeAmount.mulPrice(_price);

        PositionStatus currentPositionStatus = PositionStatus.Balance;
        if (currentExposureAmountChecker > 0) {
            currentPositionStatus = PositionStatus.NetLong;
        } else if (currentExposureAmountChecker < 0) {
            currentPositionStatus = PositionStatus.NetShort;
        }

        PositionStatus nextPositionStatus = PositionStatus.Balance;
        if (nextExposureAmountChecker > 0) {
            nextPositionStatus = PositionStatus.NetLong;
        } else if (nextExposureAmountChecker < 0) {
            nextPositionStatus = PositionStatus.NetShort;
        }

        bool isAddPosition = (currentPositionStatus == PositionStatus.NetLong &&
            nextExposureAmountChecker > currentExposureAmountChecker) ||
            (currentPositionStatus == PositionStatus.NetShort &&
                nextExposureAmountChecker < currentExposureAmountChecker);

        IPool.Vault memory lpVault = pool.getVault(_pairIndex);
        IPool.Pair memory pair = pool.getPair(_pairIndex);

        if (currentPositionStatus == PositionStatus.Balance) {
            if (nextExposureAmountChecker > 0) {
                pool.increaseReserveAmount(_pairIndex, _sizeAmount, 0);
            } else {
                uint256 sizeDeltaStable = uint256(
                    TokenHelper.convertIndexAmountToStable(pair, int256(sizeDelta))
                );
                pool.increaseReserveAmount(_pairIndex, 0, sizeDeltaStable);
            }
            pool.updateAveragePrice(_pairIndex, _price);
            return;
        }

        if (currentPositionStatus == PositionStatus.NetLong) {
            if (isAddPosition) {
                pool.increaseReserveAmount(_pairIndex, _sizeAmount, 0);

                uint256 averagePrice = (uint256(currentExposureAmountChecker).mulPrice(
                    lpVault.averagePrice
                ) + sizeDelta).calculatePrice(uint256(currentExposureAmountChecker) + _sizeAmount);

                pool.updateAveragePrice(_pairIndex, averagePrice);
            } else {
                uint256 decreaseLong;
                uint256 increaseShort;
                if (nextPositionStatus != PositionStatus.NetShort) {
                    decreaseLong = _sizeAmount;
                } else {
                    decreaseLong = uint256(currentExposureAmountChecker);
                    increaseShort = _sizeAmount - decreaseLong;
                }
                pool.decreaseReserveAmount(_pairIndex, decreaseLong, 0);
                if (increaseShort > 0) {
                    pool.increaseReserveAmount(
                        _pairIndex,
                        0,
                        uint256(
                            TokenHelper.convertIndexAmountToStableWithPrice(
                                pair,
                                int256(increaseShort),
                                _price
                            )
                        )
                    );
                    pool.updateAveragePrice(_pairIndex, _price);
                }

                _calLpProfit(pair, false, decreaseLong, _price);
            }
        } else if (currentPositionStatus == PositionStatus.NetShort) {
            if (isAddPosition) {
                uint256 sizeDeltaStable = uint256(
                    TokenHelper.convertIndexAmountToStable(pair, int256(sizeDelta))
                );
                pool.increaseReserveAmount(_pairIndex, 0, sizeDeltaStable);

                uint256 averagePrice = (uint256(-currentExposureAmountChecker).mulPrice(
                    lpVault.averagePrice
                ) + sizeDelta).calculatePrice(uint256(-currentExposureAmountChecker) + _sizeAmount);
                pool.updateAveragePrice(_pairIndex, averagePrice);
            } else {
                uint256 decreaseShort;
                uint256 increaseLong;
                if (nextExposureAmountChecker <= 0) {
                    decreaseShort = _sizeAmount;
                } else {
                    decreaseShort = uint256(-currentExposureAmountChecker);
                    increaseLong = _sizeAmount - decreaseShort;
                }

                pool.decreaseReserveAmount(
                    _pairIndex,
                    0,
                    nextExposureAmountChecker >= 0
                        ? lpVault.stableReservedAmount
                        : uint256(
                            TokenHelper.convertIndexAmountToStableWithPrice(
                                pair,
                                int256(decreaseShort),
                                lpVault.averagePrice
                            )
                        )
                );
                if (increaseLong > 0) {
                    pool.increaseReserveAmount(_pairIndex, increaseLong, 0);
                    pool.updateAveragePrice(_pairIndex, _price);
                }

                _calLpProfit(pair, true, decreaseShort, _price);
            }
        }
        // zero exposure
        if (nextPositionStatus == PositionStatus.Balance) {
            pool.updateAveragePrice(_pairIndex, 0);
        }
    }

    function _calLpProfit(
        IPool.Pair memory pair,
        bool lpIsLong,
        uint amount,
        uint256 price
    ) internal {
        int256 profit = pool.getLpPnl(pair.pairIndex, lpIsLong, amount, price);
        pool.setLPStableProfit(
            pair.pairIndex,
            TokenHelper.convertIndexAmountToStable(pair, profit)
        );
    }

    function _handleCollateral(
        uint256 pairIndex,
        Position.Info storage position,
        int256 collateral
    ) internal {
        if (collateral == 0) {
            return;
        }
        if (collateral < 0) {
            require(position.collateral >= collateral.abs(), "collateral not enough");
            position.collateral = position.collateral.sub(collateral.abs());
            pool.transferTokenOrSwap(pairIndex, pledgeAddress, position.account, collateral.abs());
        } else {
            position.collateral = position.collateral.add(collateral.abs());
        }
    }

    function _regularTradingFee(
        uint256 pairIndex,
        bool isLong,
        bool isIncrease,
        uint256 sizeDeltaStable,
        uint256 executionPrice
    ) internal view returns (uint256 tradingFee, bool isMaker) {
        return IPositionRiskAnalyzer(positionRiskAnalyzer).regularTradingFee(
            pairIndex,
            isLong,
            isIncrease,
            sizeDeltaStable,
            executionPrice
        );
    }

    function _updateFundingRate(uint256 _pairIndex, uint256 _price) internal {
        uint256 fundingInterval = IFundingRate(ADDRESS_PROVIDER.fundingRate()).getFundingInterval(
            _pairIndex
        );
        if (lastFundingRateUpdateTimes[_pairIndex] == 0) {
            lastFundingRateUpdateTimes[_pairIndex] =
                (block.timestamp / fundingInterval) *
                fundingInterval;
            return;
        }
        if (block.timestamp - lastFundingRateUpdateTimes[_pairIndex] < fundingInterval) {
            return;
        }
        int256 nextFundingRate = _nextFundingRate(_pairIndex, _price);

        int256 tracker = (nextFundingRate * int256(_price)) / int256(PrecisionUtils.pricePrecision());
        globalFundingFeeTracker[_pairIndex] += tracker;
        lastFundingRateUpdateTimes[_pairIndex] =
            (block.timestamp / fundingInterval) *
            fundingInterval;
        currentFundingRate[_pairIndex] = nextFundingRate;

        IPool.Pair memory pair = pool.getPair(_pairIndex);

        uint256 _longTracker = longTracker[_pairIndex];
        uint256 _shortTracker = shortTracker[_pairIndex];
        int256 fundingFee;
        if (_longTracker > _shortTracker) {
            fundingFee = TokenHelper.convertIndexAmountToStable(
                pair,
                (tracker * int256(_longTracker - _shortTracker)) / int256(PrecisionUtils.fundingRatePrecision())
            );
        } else if (_longTracker < _shortTracker) {
            fundingFee = TokenHelper.convertIndexAmountToStable(
                pair,
                (-tracker * int256(_shortTracker - _longTracker)) / int256(PrecisionUtils.fundingRatePrecision())
            );
        }
        pool.setLPStableProfit(_pairIndex, fundingFee);

        emit UpdateFundingRateV2(
            _pairIndex,
            _price,
            nextFundingRate,
            lastFundingRateUpdateTimes[_pairIndex],
            globalFundingFeeTracker[_pairIndex],
            fundingFee
        );
    }

    function _nextFundingRate(
        uint256 _pairIndex,
        uint256 _price
    ) internal view returns (int256 fundingRate) {
        fundingRate = IFundingRate(ADDRESS_PROVIDER.fundingRate()).getFundingRateV2(
            pool,
            _pairIndex,
            _price
        );
    }

    function getTradingFee(
        uint256 _pairIndex,
        bool _isLong,
        bool _isIncrease,
        uint256 _sizeAmount,
        uint256 price
    ) public view override returns (uint256 tradingFee) {
        return IPositionRiskAnalyzer(positionRiskAnalyzer).getTradingFee(
            _pairIndex,
            _isLong,
            _isIncrease,
            _sizeAmount,
            price
        );
    }

    function getFundingFee(
        address _account,
        uint256 _pairIndex,
        bool _isLong
    ) public view override returns (int256 fundingFee) {
        Position.Info memory position = positions.get(_account, _pairIndex, _isLong);
        return IPositionRiskAnalyzer(positionRiskAnalyzer).getFundingFee(
            position,
            globalFundingFeeTracker[position.pairIndex]
        );
    }

    function getCurrentFundingRate(uint256 _pairIndex) external view override returns (int256) {
        return currentFundingRate[_pairIndex];
    }

    function getNextFundingRate(
        uint256 _pairIndex,
        uint256 price
    ) external view override returns (int256) {
        return _nextFundingRate(_pairIndex, price);
    }

    function getNextFundingRateUpdateTime(
        uint256 _pairIndex
    ) external view override returns (uint256) {
        return
            lastFundingRateUpdateTimes[_pairIndex] +
            IFundingRate(ADDRESS_PROVIDER.fundingRate()).getFundingInterval(_pairIndex);
    }

    function needADL(
        uint256 pairIndex,
        bool isLong,
        uint256 executionSize,
        uint256 executionPrice
    ) external view returns (bool need, uint256 needADLAmount) {
        return IPositionRiskAnalyzer(positionRiskAnalyzer).needADL(
                pairIndex,
                longTracker[pairIndex],
                shortTracker[pairIndex],
                isLong,
                executionSize,
                executionPrice
        );
    }

    function needLiquidation(
        bytes32 positionKey,
        uint256 price
    ) public view returns (bool) {
        Position.Info memory position = positions[positionKey];
        return IPositionRiskAnalyzer(positionRiskAnalyzer).needLiquidation(
            position,
            globalFundingFeeTracker[position.pairIndex],
            price
        );
    }

    function exposureAmountChecker(
        uint256 pairIndex,
        bool isLong,
        uint256 orderSize,
        uint256 executionPrice
    ) external view returns (uint256 executionSize) {
        IPool.Vault memory lpVault = pool.getVault(pairIndex);
        IPool.Pair memory pair = pool.getPair(pairIndex);
        int256 exposedPositions = getExposedPositions(pairIndex);

        executionSize = orderSize;

        uint256 available = maxAvailableLiquidity(lpVault, pair, exposedPositions, isLong, executionPrice);
        if (executionSize > available) {
            executionSize = available;
        }
        return executionSize;
    }

    function maxAvailableLiquidity(
        IPool.Vault memory lpVault,
        IPool.Pair memory pair,
        int256 exposedPositions,
        bool isLong,
        uint256 executionPrice
    ) public view returns (uint256 amount) {
        return IPositionRiskAnalyzer(positionRiskAnalyzer).maxAvailableLiquidity(
            lpVault,
            pair,
            exposedPositions,
            isLong,
            executionPrice
        );
    }

    function getExposedPositions(uint256 _pairIndex) public view override returns (int256) {
        if (longTracker[_pairIndex] > shortTracker[_pairIndex]) {
            return int256(longTracker[_pairIndex] - shortTracker[_pairIndex]);
        } else {
            return -int256(shortTracker[_pairIndex] - longTracker[_pairIndex]);
        }
    }

    function getPosition(
        address _account,
        uint256 _pairIndex,
        bool _isLong
    ) public view returns (Position.Info memory) {
        Position.Info memory position = positions.get(_account, _pairIndex, _isLong);
        return position;
    }

    function getPositionByKey(bytes32 key) public view returns (Position.Info memory) {
        Position.Info memory position = positions[key];
        return position;
    }

    function getPositionUpdateAtByKey(bytes32 key) external view returns (uint64) {
        return positionsUpdateAt[key];
    }

    function getPositionKey(
        address _account,
        uint256 _pairIndex,
        bool _isLong
    ) public pure returns (bytes32) {
        return PositionKey.getPositionKey(_account, _pairIndex, _isLong);
    }
}
