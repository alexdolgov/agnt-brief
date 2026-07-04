pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./libraries/exchange/TickPosition.sol";
import "./libraries/exchange/LimitOrder.sol";
import "./libraries/exchange/LiquidityBitmap.sol";
import "./libraries/types/PairManagerStorage.sol";
import "./libraries/helper/Timers.sol";
import "../interfaces/IPairManager.sol";
import {Errors} from "./libraries/helper/Errors.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "hardhat/console.sol";
import "./implement/Block.sol";

/// @title A PairManager stores all the information about the pairs and the liquidity
/// @author Position Exchange Team
/// @notice
/// @dev
contract PairManager is
    Block,
    PairManagerStorage,
    IPairManager,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable
{
    using TickPosition for TickPosition.Data;
    using LiquidityBitmap for mapping(uint128 => uint256);
    using Timers for uint64;

    modifier onlyCounterParty() {
        require(counterParty == _msgSender(), Errors.VL_ONLY_COUNTERPARTY);
        _;
    }

    //    modifier onlyOwner() {
    //        require(owner == _msgSender(), Errors.VL_ONLY_OWNER);
    //        _;
    //    }

    function initialize(
        address _quoteAsset,
        address _baseAsset,
        address _counterParty,
        uint256 _basisPoint,
        uint256 _BASE_BASIC_POINT,
        uint128 _maxFindingWordsIndex,
        uint128 _initialPip,
        uint64 _expireTime
    ) public initializer {
        __ReentrancyGuard_init();
        __Ownable_init();
        __Pausable_init();

        initializeFactory(
            _quoteAsset,
            _baseAsset,
            _counterParty,
            _basisPoint,
            _BASE_BASIC_POINT,
            _maxFindingWordsIndex,
            _initialPip,
            _expireTime,
            msg.sender,
            address(0)
        );
    }

    function initializeFactory(
        address _quoteAsset,
        address _baseAsset,
        address _counterParty,
        uint256 _basisPoint,
        uint256 _BASE_BASIC_POINT,
        uint128 _maxFindingWordsIndex,
        uint128 _initialPip,
        uint64 _expireTime,
        address _owner,
        address _liquidityPool
    ) public override {
        require(_isInitialized == false, Errors.VL_MUST_NOT_INITIALIZABLE);

        reserveSnapshots.push(
            ReserveSnapshot(_initialPip, _blockTimestamp(), _blockNumber())
        );

        counterParty = _counterParty;
        quoteAsset = IERC20(_quoteAsset);
        baseAsset = IERC20(_baseAsset);
        singleSlot.pip = _initialPip;
        basisPoint = _basisPoint;
        BASE_BASIC_POINT = _BASE_BASIC_POINT;
        maxFindingWordsIndex = _maxFindingWordsIndex;
        expireTime = _expireTime;

        //        owner = _owner;
        liquidityPool = _liquidityPool;

        _isInitialized = true;

        _approve();
        emit PairManagerInitialized(
            _quoteAsset,
            _baseAsset,
            _counterParty,
            _basisPoint,
            _BASE_BASIC_POINT,
            _maxFindingWordsIndex,
            _initialPip,
            _expireTime,
            _owner
        );
    }

    //------------------------------------------------------------------------------------------------------------------
    // FUNCTIONS CALLED FROM SPOT HOUSE
    //------------------------------------------------------------------------------------------------------------------

    function updatePartialFilledOrder(uint128 pip, uint64 orderId)
        external
        override
        onlyCounterParty
    {
        uint256 newSize = tickPosition[pip].updateOrderWhenClose(orderId);
        emit LimitOrderUpdated(address(this), orderId, pip, newSize);
    }

    function cancelLimitOrder(uint128 pip, uint64 orderId)
        external
        override
        onlyCounterParty
        returns (uint256 remainingSize, uint256 partialFilled)
    {
        bool isBuy;
        (remainingSize, partialFilled, isBuy) = tickPosition[pip]
            .cancelLimitOrder(orderId);
        if (tickPosition[pip].liquidity == 0) {
            liquidityBitmap.toggleSingleBit(pip, false);

            if (pip == getCurrentPip()) {
                singleSlot.isFullBuy = 0;
            }
        }
        emit LimitOrderCancelled(isBuy, orderId, pip, remainingSize);
    }

    function openLimit(
        uint128 pip,
        uint128 size,
        bool isBuy,
        address _trader
    )
        external
        override
        onlyCounterParty
        returns (
            uint64 orderId,
            uint256 sizeOut,
            uint256 quoteAmount
        )
    {
        require(size != 0, Errors.VL_INVALID_SIZE);
        SingleSlot memory _singleSlot = singleSlot;
        if (isBuy && _singleSlot.pip != 0) {
            require(
                pip <= _singleSlot.pip &&
                    int128(pip) >=
                    (int128(_singleSlot.pip) -
                        int128(maxFindingWordsIndex * 250)),
                Errors.VL_LONG_PRICE_THAN_CURRENT_PRICE
            );
        } else {
            require(
                pip >= _singleSlot.pip &&
                    pip <= (_singleSlot.pip + maxFindingWordsIndex * 250),
                Errors.VL_SHORT_PRICE_LESS_CURRENT_PRICE
            );
        }

        bool hasLiquidity = liquidityBitmap.hasLiquidity(pip);
        //save gas
        if (
            pip == _singleSlot.pip &&
            hasLiquidity &&
            _singleSlot.isFullBuy != (isBuy ? 1 : 2)
        ) {
            // open market
            (sizeOut, quoteAmount) = _openMarketWithMaxPip(
                size,
                isBuy,
                pip,
                _trader
            );
            hasLiquidity = liquidityBitmap.hasLiquidity(pip);
        }

        uint128 remainingSize = size - uint128(sizeOut);
        if (size > sizeOut) {
            if (
                pip == _singleSlot.pip &&
                _singleSlot.isFullBuy != (isBuy ? 1 : 2)
            ) {
                singleSlot.isFullBuy = isBuy ? 1 : 2;
            }

            orderId = tickPosition[pip].insertLimitOrder(
                remainingSize,
                hasLiquidity,
                isBuy
            );
            if (!hasLiquidity) {
                //set the bit to mark it has liquidity
                liquidityBitmap.toggleSingleBit(pip, true);
            }
            emit LimitOrderCreated(orderId, pip, remainingSize, isBuy);
        }
    }

    function openMarket(
        uint256 size,
        bool isBuy,
        address trader
    )
        external
        override
        onlyCounterParty
        returns (uint256 sizeOut, uint256 quoteAmount)
    {
        require(size != 0, Errors.VL_INVALID_SIZE);

        return _internalOpenMarketOrder(size, isBuy, 0, trader);
    }

    function openMarketWithQuoteAsset(
        uint256 quoteAmount,
        bool _isBuy,
        address _trader
    )
        external
        override
        onlyCounterParty
        returns (uint256 sizeOutQuote, uint256 baseAmount)
    {
        require(quoteAmount != 0, Errors.VL_INVALID_SIZE);
        uint128 _maxPip;
        SingleSlot memory _initialSingleSlot = singleSlot;
        //save gas
        SwapState memory state = SwapState({
            remainingSize: quoteAmount,
            pip: _initialSingleSlot.pip
        });
        uint128 startPip;
        uint128 remainingLiquidity;
        uint8 isFullBuy = 0;
        bool isSkipFirstPip;
        {
            CurrentLiquiditySide currentLiquiditySide = CurrentLiquiditySide(
                _initialSingleSlot.isFullBuy
            );
            if (currentLiquiditySide != CurrentLiquiditySide.NotSet) {
                if (_isBuy)
                    // if buy and latest liquidity is buy. skip current pip
                    isSkipFirstPip =
                        currentLiquiditySide == CurrentLiquiditySide.Buy;
                    // if sell and latest liquidity is sell. skip current pip
                else
                    isSkipFirstPip =
                        currentLiquiditySide == CurrentLiquiditySide.Sell;
            }
        }
        bool onlyLoopOnce;
        while (
            !onlyLoopOnce && state.remainingSize != 0
        ) {
            StepComputations memory step;
            // updated findHasLiquidityInMultipleWords, save more gas
            if (_maxPip != 0) {
                step.pipNext = _maxPip;
                onlyLoopOnce = true;
            } else {
                (step.pipNext) = liquidityBitmap
                    .findHasLiquidityInMultipleWords(
                        state.pip,
                        maxFindingWordsIndex,
                        !_isBuy
                    );
            }
            if (_maxPip != 0 && step.pipNext != _maxPip) break;
            if (step.pipNext == 0) {
                // no more next pip
                // state pip back 1 pip
                if (_isBuy) {
                    state.pip--;
                } else {
                    state.pip++;
                }
                break;
            } else {
                if (!isSkipFirstPip) {
                    if (startPip == 0) startPip = step.pipNext;

                    // get liquidity at a tick index
                    uint128 liquidity = tickPosition[step.pipNext].liquidity;
                    uint256 baseSizeFromQuote = quoteToBase(
                        state.remainingSize,
                        state.pip
                    );
                    if (liquidity > baseSizeFromQuote) {
                        // pip position will partially filled and stop here
                        tickPosition[step.pipNext].partiallyFill(
                            uint128(baseSizeFromQuote)
                        );
                        baseAmount += baseSizeFromQuote;
                        // remaining liquidity at current pip
                        remainingLiquidity =
                            liquidity -
                            uint128(baseSizeFromQuote);
                        state.remainingSize = 0;
                        state.pip = step.pipNext;
                        isFullBuy = uint8(
                            !_isBuy
                                ? CurrentLiquiditySide.Buy
                                : CurrentLiquiditySide.Sell
                        );
                    } else if (baseSizeFromQuote > liquidity) {
                        // order in that pip will be fulfilled
                        state.remainingSize =
                            state.remainingSize -
                            ((liquidity * pipToPrice(step.pipNext)) /
                                BASE_BASIC_POINT);
                        baseAmount += liquidity;
                        state.pip = state.remainingSize > 0
                            ? (_isBuy ? step.pipNext + 1 : step.pipNext - 1)
                            : step.pipNext;
                    } else {
                        // remaining size = liquidity
                        // only 1 pip should be toggled, so we call it directly here
                        liquidityBitmap.toggleSingleBit(step.pipNext, false);
                        baseAmount += liquidity;
                        state.remainingSize = 0;
                        state.pip = step.pipNext;
                        isFullBuy = 0;
                    }
                } else {
                    isSkipFirstPip = false;
                    state.pip = _isBuy ? step.pipNext + 1 : step.pipNext - 1;
                }
            }
        }
        if (_initialSingleSlot.pip != state.pip) {
            // all ticks in shifted range must be marked as filled
            if (!(remainingLiquidity > 0 && startPip == state.pip)) {
                if (_maxPip != 0) {
                    state.pip = _maxPip;
                }
                liquidityBitmap.unsetBitsRange(
                    startPip,
                    remainingLiquidity > 0
                        ? (_isBuy ? state.pip - 1 : state.pip + 1)
                        : state.pip
                );
            }
        }

        singleSlot.pip = _maxPip != 0 ? _maxPip : state.pip;
        singleSlot.isFullBuy = isFullBuy;
        sizeOutQuote = quoteAmount - state.remainingSize;
        _addReserveSnapshot();

        emitEventSwap(_isBuy, baseAmount, quoteAmount, _trader);
        emit MarketFilled(
            _isBuy,
            baseAmount,
            singleSlot.pip,
            startPip,
            remainingLiquidity,
            tickPosition[singleSlot.pip].calculatingFilledIndex()
        );
    }

    function increaseBaseFeeFunding(uint256 baseFee)
        external
        override
        onlyCounterParty
    {
        if (baseFee > 0) {
            baseFeeFunding += baseFee;
        }
    }

    function increaseQuoteFeeFunding(uint256 quoteFee)
        external
        override
        onlyCounterParty
    {
        if (quoteFee > 0) {
            quoteFeeFunding += quoteFee;
        }
    }

    function resetFee(uint256 baseFee, uint256 quoteFee) external override onlyCounterParty {
        baseFeeFunding -= baseFee;
        quoteFeeFunding -= quoteFee;
    }

    //------------------------------------------------------------------------------------------------------------------
    // VIEW FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    function getFee() external view override returns (uint256, uint256) {
        return (baseFeeFunding, quoteFeeFunding);
    }

    function isExpired() external view override returns (bool) {
        // If not set expireTime for this pair
        // expireTime is 0 and unlimited time to expire
        if (expireTime == 0) {
            return false;
        }
        return expireTime.passed(_blockTimestamp());
    }

    function getBaseBasisPoint() public view override returns (uint256) {
        return BASE_BASIC_POINT;
    }

    function getCurrentPip() public view override returns (uint128) {
        return singleSlot.pip;
    }

    function getCurrentSingleSlot()
        public
        view
        override
        returns (uint128, uint8)
    {
        return (singleSlot.pip, singleSlot.isFullBuy);
    }

    function getPrice() public view override returns (uint256) {
        return (uint256(singleSlot.pip) * BASE_BASIC_POINT) / basisPoint;
    }

    function getQuoteAsset() public view override returns (IERC20) {
        return quoteAsset;
    }

    function getBaseAsset() public view override returns (IERC20) {
        return baseAsset;
    }

    function pipToPrice(uint128 pip) public view override returns (uint256) {
        return (uint256(pip) * BASE_BASIC_POINT) / basisPoint;
    }

    function calculatingQuoteAmount(uint256 quantity, uint128 pip)
        public
        view
        override
        returns (uint256)
    {
        return (quantity * pipToPrice(pip)) / getBaseBasisPoint();
    }

    function getLiquidityInCurrentPip() public view override returns (uint128) {
        return
            liquidityBitmap.hasLiquidity(singleSlot.pip)
                ? tickPosition[singleSlot.pip].liquidity
                : 0;
    }

    function hasLiquidity(uint128 pip) public view override returns (bool) {
        return liquidityBitmap.hasLiquidity(pip);
    }

    function getPendingOrderDetail(uint128 pip, uint64 orderId)
        public
        view
        override
        returns (
            bool isFilled,
            bool isBuy,
            uint256 size,
            uint256 partialFilled
        )
    {
        (isFilled, isBuy, size, partialFilled) = tickPosition[pip]
            .getQueueOrder(orderId);

        if (!liquidityBitmap.hasLiquidity(pip)) {
            isFilled = true;
        }
        if (size != 0 && size == partialFilled) {
            isFilled = true;
        }
    }

    function getLiquidityInPipRange(
        uint128 fromPip,
        uint256 dataLength,
        bool toHigher
    ) external view override returns (LiquidityOfEachPip[] memory, uint128) {
        uint128[] memory allInitializedPip = new uint128[](uint128(dataLength));
        allInitializedPip = liquidityBitmap.findAllLiquidityInMultipleWords(
            fromPip,
            dataLength,
            toHigher
        );
        LiquidityOfEachPip[] memory allLiquidity = new LiquidityOfEachPip[](
            dataLength
        );

        for (uint256 i = 0; i < dataLength; i++) {
            allLiquidity[i] = LiquidityOfEachPip({
                pip: allInitializedPip[i],
                liquidity: tickPosition[allInitializedPip[i]].liquidity
            });
        }
        return (allLiquidity, allInitializedPip[dataLength - 1]);
    }

    //------------------------------------------------------------------------------------------------------------------
    // ONLY OWNER FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    function updateMaxFindingWordsIndex(uint128 _newMaxFindingWordsIndex)
        external
        override
        onlyOwner
    {
        maxFindingWordsIndex = _newMaxFindingWordsIndex;
        emit UpdateMaxFindingWordsIndex(
            address(this),
            _newMaxFindingWordsIndex
        );
    }

    function updateExpireTime(uint64 _expireTime) external override onlyOwner {
        expireTime = _expireTime;
        emit UpdateExpireTime(address(this), _expireTime);
    }

    //------------------------------------------------------------------------------------------------------------------
    // INTERNAL FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    function emitEventSwap(
        bool isBuy,
        uint256 _baseAmount,
        uint256 _quoteAmount,
        address _trader
    ) internal {
        uint256 amount0In;
        uint256 amount1In;
        uint256 amount0Out;
        uint256 amount1Out;

        if (isBuy) {
            amount1In = _quoteAmount;
            amount0Out = _baseAmount;
        } else {
            amount0In = _baseAmount;
            amount1Out = _quoteAmount;
        }
        emit Swap(
            msg.sender,
            amount0In,
            amount1In,
            amount0Out,
            amount1Out,
            _trader
        );
    }

    function quoteToBase(uint256 quoteAmount, uint128 pip)
        public
        view
        override
        returns (uint256)
    {
        return (quoteAmount * basisPoint) / pip;
    }

    function _msgSender()
        internal
        view
        override(ContextUpgradeable)
        returns (address)
    {
        return msg.sender;
    }

    function _approve() internal {
        quoteAsset.approve(counterParty, type(uint256).max);
        baseAsset.approve(counterParty, type(uint256).max);
    }

    function _openMarketWithMaxPip(
        uint256 size,
        bool isBuy,
        uint128 maxPip,
        address _trader
    ) internal returns (uint256 sizeOut, uint256 quoteAmount) {
        return _internalOpenMarketOrder(size, isBuy, maxPip, address(0));
    }

    function _internalOpenMarketOrder(
        uint256 _size,
        bool _isBuy,
        uint128 _maxPip,
        address _trader
    ) internal returns (uint256 sizeOut, uint256 quoteAmount) {

        // get current tick liquidity
        SingleSlot memory _initialSingleSlot = singleSlot;
        //save gas
        SwapState memory state = SwapState({
            remainingSize: _size,
            pip: _initialSingleSlot.pip
        });
        uint128 startPip;
        uint128 remainingLiquidity;
        uint8 isFullBuy = 0;
        bool isSkipFirstPip;
        {
            CurrentLiquiditySide currentLiquiditySide = CurrentLiquiditySide(
                _initialSingleSlot.isFullBuy
            );
            if (currentLiquiditySide != CurrentLiquiditySide.NotSet) {
                if (_isBuy)
                    // if buy and latest liquidity is buy. skip current pip
                    isSkipFirstPip =
                        currentLiquiditySide == CurrentLiquiditySide.Buy;
                    // if sell and latest liquidity is sell. skip current pip
                else
                    isSkipFirstPip =
                        currentLiquiditySide == CurrentLiquiditySide.Sell;
            }
        }
        bool onlyLoopOnce;
        while (!onlyLoopOnce && state.remainingSize != 0) {
            StepComputations memory step;
            // updated findHasLiquidityInMultipleWords, save more gas
            if (_maxPip != 0) {
                step.pipNext = _maxPip;
                onlyLoopOnce = true;
            } else {
                (step.pipNext) = liquidityBitmap
                    .findHasLiquidityInMultipleWords(
                        state.pip,
                        maxFindingWordsIndex,
                        !_isBuy
                    );
            }
            if (_maxPip != 0 && step.pipNext != _maxPip) break;
            if (step.pipNext == 0) {
                // no more next pip
                // state pip back 1 pip
                if (_isBuy) {
                    state.pip--;
                } else {
                    state.pip++;
                }
                break;
            } else {
                if (!isSkipFirstPip) {
                    if (startPip == 0) startPip = step.pipNext;

                    // get liquidity at a tick index
                    uint128 liquidity = tickPosition[step.pipNext].liquidity;
                    if (liquidity > state.remainingSize) {
                        // pip position will partially filled and stop here
                        tickPosition[step.pipNext].partiallyFill(
                            uint128(state.remainingSize)
                        );
                        quoteAmount += ((state.remainingSize *
                            pipToPrice(step.pipNext)) / BASE_BASIC_POINT);
                        // remaining liquidity at current pip
                        remainingLiquidity =
                            liquidity -
                            uint128(state.remainingSize);
                        state.remainingSize = 0;
                        state.pip = step.pipNext;
                        isFullBuy = uint8(
                            !_isBuy
                                ? CurrentLiquiditySide.Buy
                                : CurrentLiquiditySide.Sell
                        );
                    } else if (state.remainingSize > liquidity) {
                        // order in that pip will be fulfilled
                        state.remainingSize = state.remainingSize - liquidity;
                        quoteAmount += ((liquidity * pipToPrice(step.pipNext)) /
                            BASE_BASIC_POINT);
                        state.pip = state.remainingSize > 0
                            ? (_isBuy ? step.pipNext + 1 : step.pipNext - 1)
                            : step.pipNext;
                    } else {
                        // remaining size = liquidity
                        // only 1 pip should be toggled, so we call it directly here
                        liquidityBitmap.toggleSingleBit(step.pipNext, false);
                        quoteAmount += ((state.remainingSize *
                            pipToPrice(step.pipNext)) / BASE_BASIC_POINT);
                        state.remainingSize = 0;
                        state.pip = step.pipNext;
                        isFullBuy = 0;
                    }
                } else {
                    isSkipFirstPip = false;
                    state.pip = _isBuy ? step.pipNext + 1 : step.pipNext - 1;
                }
            }
        }
        {
            if (_initialSingleSlot.pip != state.pip) {
                // all ticks in shifted range must be marked as filled
                if (!(remainingLiquidity > 0 && startPip == state.pip)) {
                    if (_maxPip != 0) {
                        state.pip = _maxPip;
                    }
                    liquidityBitmap.unsetBitsRange(
                        startPip,
                        remainingLiquidity > 0
                            ? (_isBuy ? state.pip - 1 : state.pip + 1)
                            : state.pip
                    );
                }
                // TODO write a checkpoint that we shift a range of ticks
            }
        }

        singleSlot.pip = _maxPip != 0 ? _maxPip : state.pip;
        singleSlot.isFullBuy = isFullBuy;
        sizeOut = _size - state.remainingSize;
        _addReserveSnapshot();

        emitEventSwap(_isBuy, sizeOut, quoteAmount, _trader);
        emit MarketFilled(
            _isBuy,
            sizeOut,
            singleSlot.pip,
            startPip,
            remainingLiquidity,
            tickPosition[singleSlot.pip].calculatingFilledIndex()
        );
    }

    function _addReserveSnapshot() internal {
        uint256 currentBlock = _blockNumber();
        ReserveSnapshot memory latestSnapshot = reserveSnapshots[
            reserveSnapshots.length - 1
        ];
        if (currentBlock == latestSnapshot.blockNumber) {
            reserveSnapshots[reserveSnapshots.length - 1].pip = singleSlot.pip;
        } else {
            reserveSnapshots.push(
                ReserveSnapshot(singleSlot.pip, _blockTimestamp(), currentBlock)
            );
        }
        emit ReserveSnapshotted(singleSlot.pip, _blockTimestamp());
    }
}
