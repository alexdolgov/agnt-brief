pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

import "../interfaces/ISpotHouse.sol";
import "../interfaces/IWBNB.sol";
import "./libraries/types/SpotHouseStorage.sol";
import {Errors} from "./libraries/helper/Errors.sol";
import {TransferHelper} from "./libraries/helper/TransferHelper.sol";

//import "hardhat/console.sol";
import "./libraries/helper/Convert.sol";
import "./libraries/helper/SpotHouseHelper.sol";
import "./implement/Block.sol";

contract SpotHouse is
    Block,
    ISpotHouse,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable,
    SpotHouseStorage
{
    using Convert for uint256;

    receive() external payable {
        assert(msg.sender == WBNB);
        // only accept BNB via fallback from the WBNB contract
    }

    function initialize() public initializer {
        __ReentrancyGuard_init();
        __Ownable_init();
        __Pausable_init();

        feeBasis = 10000;
        fee = 10;
        WBNB = address(0);
    }

    /**
     * @dev see {ISpotHouse-openLimitOrder}
     */
    function openLimitOrder(
        IPairManager _pairManager,
        Side _side,
        uint256 _quantity,
        uint128 _pip
    ) external payable override whenNotPaused nonReentrant {
//        require(!_pairManager.isExpired(), Errors.VL_EXPIRED);
        address _trader = _msgSender();

        _openLimitOrder(_pairManager, _quantity, _pip, _trader, _side);
    }

    function openLimitOrderWithQuote(
        IPairManager _pairManager,
        Side _side,
        uint256 _quoteAmount,
        uint128 _pip
    ) external payable whenNotPaused nonReentrant {
//        require(!_pairManager.isExpired(), Errors.VL_EXPIRED);
        address _trader = _msgSender();

        _openLimitOrder(
            _pairManager,
            (_quoteAmount * _pairManager.getBasisPoint()) / _pip,
            _pip,
            _trader,
            _side
        );
    }

    function openMarketOrder(
        IPairManager _pairManager,
        Side _side,
        uint256 _quantity
    ) external payable override whenNotPaused nonReentrant {
//        require(!_pairManager.isExpired(), Errors.VL_EXPIRED);

        address _trader = _msgSender();
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );

        _openMarketOrder(_pairManager, _side, _quantity, _trader);
    }

    function openMarketOrderWithQuote(
        IPairManager _pairManager,
        Side _side,
        uint256 _quoteAmount
    ) external payable whenNotPaused nonReentrant {
//        require(!_pairManager.isExpired(), Errors.VL_EXPIRED);
        address _trader = _msgSender();
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );
        uint256 sizeOutQuote;
        uint256 baseAmount;
        if (_side == Side.BUY) {
            // deposit quote asset
            (uint256 amountTransferred, uint256 _fee) = _deposit(
                _pairManager,
                _trader,
                Asset.Quote,
                _quoteAmount,
                false,
                true
            );

            (sizeOutQuote, baseAmount) = _pairManager.openMarketWithQuoteAsset(
                amountTransferred,
                true,
                _trader
            );
            require(
                sizeOutQuote == amountTransferred,
                Errors.VL_NOT_ENOUGH_LIQUIDITY
            );

            // withdraw base asset
            // after BUY done, transfer base back to trader
            _withdraw(_pairManager, _trader, Asset.Base, baseAmount);
        } else {
            (sizeOutQuote, baseAmount) = _pairManager.openMarketWithQuoteAsset(
                _quoteAmount,
                false,
                _trader
            );
            require(
                sizeOutQuote == _quoteAmount,
                Errors.VL_NOT_ENOUGH_LIQUIDITY
            );

            baseAmount += _feeCalculator(baseAmount, fee);
            // SELL market
            (uint256 amountTransferred, uint256 fee) = _deposit(
                _pairManager,
                _trader,
                Asset.Base,
                baseAmount,
                true,
                true
            );

            require(
                amountTransferred + fee == baseAmount,
                Errors.VL_MUST_NOT_TOKEN_USE_RFI
            );

            _withdraw(_pairManager, _trader, Asset.Quote, _quoteAmount);
        }
        emit MarketOrderOpened(
            _trader,
            baseAmount,
            _quoteAmount,
            _side,
            _pairManager,
            _pairManager.getCurrentPip(),
            _blockTimestamp()
        );
    }

    function cancelAllLimitOrder(IPairManager _pairManager)
        external
        override
        whenNotPaused
        nonReentrant
    {
        address _trader = _msgSender();
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );

        (
            uint256 refundQuote,
            uint256 refundBase,
            uint256 feeQuote,
            uint256 feeBase
        ) = getAmountClaimable(_pairManager, _trader);

        PendingLimitOrder[]
            memory _listPendingLimitOrder = getPendingLimitOrders(
                _pairManager,
                _trader
            );

        require(
            _listPendingLimitOrder.length > 0,
            Errors.VL_NO_LIMIT_TO_CANCEL
        );

        uint128[] memory _listPips = new uint128[](
            _listPendingLimitOrder.length
        );
        uint64[] memory _orderIds = new uint64[](_listPendingLimitOrder.length);

        for (uint64 i = 0; i < _listPendingLimitOrder.length; i++) {
            PendingLimitOrder
                memory _pendingLimitOrder = _listPendingLimitOrder[i];

            if (_pendingLimitOrder.quantity == 0) {
                continue;
            }

            _listPips[i] = _pendingLimitOrder.pip;
            _orderIds[i] = _pendingLimitOrder.orderId;

            (uint256 refundQuantity, uint256 partialFilled) = _pairManager
                .cancelLimitOrder(
                    _pendingLimitOrder.pip,
                    _pendingLimitOrder.orderId
                );

            if (_pendingLimitOrder.isBuy) {
                uint256 quoteAmount = _pairManager.calculatingQuoteAmount(
                    refundQuantity,
                    _pendingLimitOrder.pip
                );

                refundQuote +=
                    quoteAmount +
                    _feeRefundCalculator(quoteAmount, _pendingLimitOrder.fee);
            } else {
                refundBase +=
                    refundQuantity +
                    _feeRefundCalculator(
                        refundQuantity,
                        _pendingLimitOrder.fee
                    );
            }
        }

        delete limitOrders[address(_pairManager)][_trader];

        _withdraw(_pairManager, _trader, Asset.Quote, refundQuote);
        _withdraw(_pairManager, _trader, Asset.Base, refundBase);

        _increaseFee(_pairManager, feeQuote, true);
        _increaseFee(_pairManager, feeBase, false);

        emit AllLimitOrderCancelled(
            _trader,
            _pairManager,
            _listPips,
            _orderIds,
            _blockTimestamp()
        );
    }

    function cancelLimitOrder(
        IPairManager _pairManager,
        uint64 _orderIdx,
        uint128 _pip
    ) external override whenNotPaused nonReentrant {
        address _trader = _msgSender();

        SpotLimitOrder.Data[] storage _orders = limitOrders[
            address(_pairManager)
        ][_trader];
        require(_orderIdx < _orders.length, Errors.VL_INVALID_ORDER_ID);

        // save gas
        SpotLimitOrder.Data memory _order = _orders[_orderIdx];

        require(
            _order.baseAmount != 0 && _order.quoteAmount != 0,
            Errors.VL_NO_LIMIT_TO_CANCEL
        );

        (bool isFilled, , , ) = _pairManager.getPendingOrderDetail(
            _order.pip,
            _order.orderId
        );

        require(isFilled == false, Errors.VL_MUST_NOT_FILLED);

        // blank limit order data
        // we set the deleted order to a blank data
        // because we don't want to mess with order index (orderIdx)
        SpotLimitOrder.Data memory blankLimitOrderData;

        (uint256 refundQuantity, uint256 partialFilled) = _pairManager
            .cancelLimitOrder(_order.pip, _order.orderId);

        if (_order.isBuy) {
            uint256 quoteAmount = _pairManager.calculatingQuoteAmount(
                refundQuantity,
                _order.pip
            );

            _withdraw(
                _pairManager,
                _trader,
                Asset.Quote,
                quoteAmount + _feeRefundCalculator(quoteAmount, _order.fee)
            );
            _withdraw(_pairManager, _trader, Asset.Base, partialFilled);
            _increaseFee(
                _pairManager,
                _feeRefundCalculator(
                    _pairManager.calculatingQuoteAmount(
                        partialFilled,
                        _order.pip
                    ),
                    _order.fee
                ),
                _order.isBuy
            );
        } else {
            _withdraw(
                _pairManager,
                _trader,
                Asset.Base,
                refundQuantity +
                    _feeRefundCalculator(refundQuantity, _order.fee)
            );
            if (partialFilled > 0) {
                _withdraw(
                    _pairManager,
                    _trader,
                    Asset.Quote,
                    _pairManager.calculatingQuoteAmount(
                        partialFilled,
                        _order.pip
                    )
                );

                _increaseFee(
                    _pairManager,
                    _feeRefundCalculator(partialFilled, _order.fee),
                    _order.isBuy
                );
            }
        }
        delete _orders[_orderIdx];
        // = blankLimitOrderData;

        emit LimitOrderCancelled(
            _trader,
            _pairManager,
            _order.pip,
            _order.orderId,
            _blockTimestamp()
        );
    }

    function claimAsset(IPairManager _pairManager)
        external
        override
        whenNotPaused
        nonReentrant
    {
        address _trader = _msgSender();

        (
            uint256 quoteAmount,
            uint256 baseAmount,
            uint256 feeQuote,
            uint256 feeBase
        ) = getAmountClaimable(_pairManager, _trader);
        require(
            quoteAmount > 0 || baseAmount > 0,
            Errors.VL_NO_AMOUNT_TO_CLAIM
        );
        _clearLimitOrder(address(_pairManager), _trader);

        _withdraw(_pairManager, _trader, Asset.Quote, quoteAmount);
        _withdraw(_pairManager, _trader, Asset.Base, baseAmount);

        _increaseFee(_pairManager, feeQuote, true);
        _increaseFee(_pairManager, feeBase, false);

        emit AssetClaimed(_trader, _pairManager, quoteAmount, baseAmount);
    }

    function getAmountClaimable(IPairManager _pairManager, address _trader)
        public
        view
        override
        returns (
            uint256 quoteAmount,
            uint256 baseAmount,
            uint256 feeQuoteAmount,
            uint256 feeBaseAmount
        )
    {
        address _pairManagerAddress = address(_pairManager);

        SpotLimitOrder.Data[] memory listLimitOrder = limitOrders[
            _pairManagerAddress
        ][_trader];
        uint256 i = 0;
        uint256 _basisPoint = _pairManager.getBasisPoint();
        uint128 _feeBasis = feeBasis;
        IPairManager.ExchangedData memory exData = IPairManager.ExchangedData({
            baseAmount: 0,
            quoteAmount: 0,
            feeQuoteAmount: 0,
            feeBaseAmount: 0
        });
        for (i; i < listLimitOrder.length; i++) {
            if (listLimitOrder[i].pip == 0 && listLimitOrder[i].orderId == 0)
                continue;
            exData = _pairManager.accumulateClaimableAmount(
                listLimitOrder[i].pip,
                listLimitOrder[i].orderId,
                exData,
                _basisPoint,
                listLimitOrder[i].fee,
                _feeBasis
            );
        }
        return (
            exData.quoteAmount,
            exData.baseAmount,
            exData.feeQuoteAmount,
            exData.feeBaseAmount
        );
    }

    function getPendingLimitOrders(IPairManager _pairManager, address _trader)
        public
        view
        override
        returns (PendingLimitOrder[] memory)
    {
        address _pairManagerAddress = address(_pairManager);
        SpotLimitOrder.Data[] storage listLimitOrder = limitOrders[
            _pairManagerAddress
        ][_trader];
        PendingLimitOrder[]
            memory listPendingOrderData = new PendingLimitOrder[](
                listLimitOrder.length
            );
        uint256 index = 0;
        for (uint256 i = 0; i < listLimitOrder.length; i++) {
            (
                bool isFilled,
                bool isBuy,
                uint256 quantity,
                uint256 partialFilled
            ) = _pairManager.getPendingOrderDetail(
                    listLimitOrder[i].pip,
                    listLimitOrder[i].orderId
                );
            if (!isFilled) {
                listPendingOrderData[index] = PendingLimitOrder({
                    isBuy: isBuy,
                    quantity: quantity,
                    partialFilled: partialFilled,
                    pip: listLimitOrder[i].pip,
                    blockNumber: listLimitOrder[i].blockNumber,
                    orderIdOfTrader: i,
                    orderId: listLimitOrder[i].orderId,
                    fee: listLimitOrder[i].fee
                });
                index++;
            }
        }
        for (uint256 i = 0; i < listPendingOrderData.length; i++) {
            if (listPendingOrderData[i].quantity != 0) {
                return listPendingOrderData;
            }
        }
        PendingLimitOrder[] memory blankListPendingOrderData;
        return blankListPendingOrderData;
    }

    function _getQuoteAndBase(IPairManager _managerAddress)
        internal
        view
        returns (SpotFactoryStorage.Pair memory)
    {
        return spotFactory.getQuoteAndBase(address(_managerAddress));
    }

    //------------------------------------------------------------------------------------------------------------------
    // ONLY OWNER FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------
    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setFactory(address _factoryAddress) external override onlyOwner {
        require(_factoryAddress != address(0), Errors.VL_EMPTY_ADDRESS);
        spotFactory = ISpotFactory(_factoryAddress);
    }

    function updateFee(uint16 _fee) external override onlyOwner {
        //max fee can be is 10%
        require(_fee <= 1000, "!F");
        fee = _fee;
    }

    function setWBNB(address _wbnb) external onlyOwner {
        WBNB = _wbnb;
    }

    function claimFee(
        IPairManager _pairManager,
        uint256 feeBase,
        uint256 feeQuote
    ) external onlyOwner {
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );
        address pairManagerAddress = address(_pairManager);

        (uint256 baseFeeFunding, uint256 quoteFeeFunding) = _pairManager
            .getFee();

        TransferHelper.transferFrom(
            IERC20(_pairAddress.BaseAsset),
            pairManagerAddress,
            owner(),
            baseFeeFunding
        );
        TransferHelper.transferFrom(
            IERC20(_pairAddress.QuoteAsset),
            pairManagerAddress,
            owner(),
            quoteFeeFunding
        );
        _pairManager.resetFee(baseFeeFunding, quoteFeeFunding);
    }

    //------------------------------------------------------------------------------------------------------------------
    // INTERNAL FUNCTIONS
    //------------------------------------------------------------------------------------------------------------------

    function _msgSender()
        internal
        view
        override(ContextUpgradeable)
        returns (address)
    {
        return msg.sender;
    }

    function _openLimitOrder(
        IPairManager _pairManager,
        uint256 _quantity,
        uint128 _pip,
        address _trader,
        Side _side
    ) internal {
        address _pairManagerAddress = address(_pairManager);
        uint256 quoteAmount;
        bool isBuy = _side == Side.BUY ? true : false;
        if (isBuy) {
            // Buy limit
            quoteAmount = _pairManager.calculatingQuoteAmount(
                _quantity.Uint256ToUint128(),
                _pip
            );
            // deposit quote asset
            // with token has RFI we need deposit first
            // and get real balance transferred
            (uint256 quoteAmountTransferred, ) = _deposit(
                _pairManager,
                _trader,
                Asset.Quote,
                quoteAmount,
                false,
                false
            );

            // calc again quantity when quote is RFI token
            if (quoteAmountTransferred != quoteAmount) {
                _quantity = _pairManager.quoteToBase(
                    quoteAmountTransferred,
                    _pip
                );
                quoteAmount = quoteAmountTransferred;
            }
        } else {
            // Sell limit

            // deposit base asset
            // with token has RFI we need deposit first
            // and get real balance transferred
            (_quantity, ) = _deposit(
                _pairManager,
                _trader,
                Asset.Base,
                _quantity.Uint256ToUint128(),
                false,
                false
            );

            quoteAmount = _pairManager.calculatingQuoteAmount(
                _quantity.Uint256ToUint128(),
                _pip
            );
        }

        (
            uint64 orderId,
            uint256 sizeOut,
            uint256 quoteAmountFilled
        ) = _pairManager.openLimit(
                _pip,
                _quantity.Uint256ToUint128(),
                isBuy,
                _trader
            );

        if (quoteAmount != quoteAmountFilled && _quantity != sizeOut) {
            limitOrders[_pairManagerAddress][_trader].push(
                SpotLimitOrder.Data({
                    pip: _pip,
                    orderId: orderId,
                    isBuy: isBuy,
                    quoteAmount: (quoteAmount - quoteAmountFilled)
                        .Uint256ToUint128(),
                    baseAmount: (_quantity - sizeOut).Uint256ToUint128(),
                    blockNumber: block.number.Uint256ToUint40(),
                    fee: fee
                })
            );
        }

        if (isBuy && quoteAmountFilled > 0)
            _increaseFee(
                _pairManager,
                _feeRefundCalculator(quoteAmountFilled, fee),
                true
            );
        if (!isBuy && sizeOut > 0)
            _increaseFee(
                _pairManager,
                _feeRefundCalculator(sizeOut, fee),
                false
            );

        if (isBuy) {
            // withdraw  base asset
            _withdraw(_pairManager, _trader, Asset.Base, sizeOut);
        } else {
            // withdraw quote asset
            _withdraw(_pairManager, _trader, Asset.Quote, quoteAmountFilled);
        }

        emit LimitOrderOpened(
            orderId,
            _trader,
            _quantity - sizeOut,
            sizeOut,
            _pip,
            _side,
            _pairManagerAddress,
            _blockTimestamp()
        );
    }

    function _openMarketOrder(
        IPairManager _pairManager,
        Side _side,
        uint256 _quantity,
        address _trader
    ) internal {
        uint256 sizeOut;
        uint256 quoteAmount;
        if (_side == Side.BUY) {
            (sizeOut, quoteAmount) = _pairManager.openMarket(
                _quantity,
                true,
                _trader
            );
            require(sizeOut == _quantity, Errors.VL_NOT_ENOUGH_LIQUIDITY);

            quoteAmount += _feeCalculator(quoteAmount, fee);
            // deposit quote asset
            (uint256 amountTransferred, uint256 fee) = _deposit(
                _pairManager,
                _trader,
                Asset.Quote,
                quoteAmount,
                true,
                true
            );
            require(
                amountTransferred + fee == quoteAmount,
                Errors.VL_MUST_NOT_TOKEN_USE_RFI
            );

            // withdraw base asset
            // after BUY done, transfer base back to trader
            _withdraw(_pairManager, _trader, Asset.Base, _quantity);
        } else {
            // SELL market
            (uint256 baseAmountTransferred, ) = _deposit(
                _pairManager,
                _trader,
                Asset.Base,
                _quantity,
                false,
                true
            );

            (sizeOut, quoteAmount) = _pairManager.openMarket(
                baseAmountTransferred,
                false,
                _trader
            );
            require(
                sizeOut == baseAmountTransferred,
                Errors.VL_NOT_ENOUGH_LIQUIDITY
            );

            _withdraw(_pairManager, _trader, Asset.Quote, quoteAmount);

            _quantity = baseAmountTransferred;
        }
        emit MarketOrderOpened(
            _trader,
            _quantity,
            quoteAmount,
            _side,
            _pairManager,
            _pairManager.getCurrentPip(),
            _blockTimestamp()
        );
    }

    function _clearLimitOrder(address _pairManagerAddress, address _trader)
        internal
    {
        if (limitOrders[_pairManagerAddress][_trader].length > 0) {
            SpotLimitOrder.Data[]
                memory subListLimitOrder = _clearAllFilledOrder(
                    IPairManager(_pairManagerAddress),
                    limitOrders[_pairManagerAddress][_trader]
                );
            delete limitOrders[_pairManagerAddress][_trader];
            for (uint256 i = 0; i < subListLimitOrder.length; i++) {
                if (subListLimitOrder[i].pip == 0) {
                    break;
                }
                limitOrders[_pairManagerAddress][_trader].push(
                    subListLimitOrder[i]
                );
            }
        }
    }

    function _clearAllFilledOrder(
        IPairManager _pairManager,
        SpotLimitOrder.Data[] memory listLimitOrder
    ) internal returns (SpotLimitOrder.Data[] memory) {
        SpotLimitOrder.Data[]
            memory subListLimitOrder = new SpotLimitOrder.Data[](
                listLimitOrder.length
            );
        uint256 index = 0;
        for (uint256 i = 0; i < listLimitOrder.length; i++) {
            (
                bool isFilled,
                ,
                uint256 size,
                uint256 partialFilled
            ) = _pairManager.getPendingOrderDetail(
                    listLimitOrder[i].pip,
                    listLimitOrder[i].orderId
                );
            if (!isFilled) {
                subListLimitOrder[index] = listLimitOrder[i];
                if (partialFilled > 0) {
                    subListLimitOrder[index].baseAmount = (size - partialFilled)
                        .Uint256ToUint128();
                    subListLimitOrder[index].quoteAmount = (
                        _pairManager.calculatingQuoteAmount(
                            size - partialFilled,
                            listLimitOrder[i].pip
                        )
                    ).Uint256ToUint128();
                }
                _pairManager.updatePartialFilledOrder(
                    listLimitOrder[i].pip,
                    listLimitOrder[i].orderId
                );
                index++;
            }
        }

        return subListLimitOrder;
    }

    function _depositBNB(address _pairManagerAddress, uint256 _amount)
        internal
    {
        IWBNB(WBNB).deposit{value: _amount}();
        assert(IWBNB(WBNB).transfer(_pairManagerAddress, _amount));
    }

    function _deposit(
        IPairManager _pairManager,
        address _trader,
        Asset _asset,
        uint256 _amount,
        bool isSumAmountAndFee,
        bool isIncreaseFee
    ) internal returns (uint256, uint256) {
        if (_amount == 0) return (0, 0);
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );
        address pairManagerAddress = address(_pairManager);
        uint256 _fee;
        uint128 _feeBasis = feeBasis;
        if (_asset == Asset.Quote) {
            if (_pairAddress.QuoteAsset == WBNB) {
                _depositBNB(pairManagerAddress, _amount);
            } else {
                IERC20 quoteAsset = IERC20(_pairAddress.QuoteAsset);
                uint256 _balanceBefore = quoteAsset.balanceOf(
                    pairManagerAddress
                );
                TransferHelper.transferFrom(
                    quoteAsset,
                    _trader,
                    pairManagerAddress,
                    _amount
                );
                uint256 _balanceAfter = quoteAsset.balanceOf(
                    pairManagerAddress
                );
                _amount = _balanceAfter - _balanceBefore;
            }
            if (isSumAmountAndFee) {
                _fee = _amount - (_amount * feeBasis) / (feeBasis + fee);
            } else {
                _fee = _feeCalculator(_amount, fee);
            }
            if (isIncreaseFee) _increaseFee(_pairManager, _fee, true);
        } else {
            if (_pairAddress.BaseAsset == WBNB) {
                _depositBNB(pairManagerAddress, _amount);
            } else {
                IERC20 baseAsset = IERC20(_pairAddress.BaseAsset);
                uint256 _balanceBefore = baseAsset.balanceOf(
                    pairManagerAddress
                );
                TransferHelper.transferFrom(
                    baseAsset,
                    _trader,
                    pairManagerAddress,
                    _amount
                );
                uint256 _balanceAfter = baseAsset.balanceOf(pairManagerAddress);
                _amount = _balanceAfter - _balanceBefore;
            }
            if (isSumAmountAndFee) {
                _fee = _amount - (_amount * feeBasis) / (feeBasis + fee);
            } else {
                _fee = _feeCalculator(_amount, fee);
            }
            if (isIncreaseFee) _increaseFee(_pairManager, _fee, false);
        }
        return (_amount - _fee, _fee);
    }

    function _withdrawBNB(
        address _trader,
        address pairManagerAddress,
        uint256 _amount
    ) internal {
        assert(
            IWBNB(WBNB).transferFrom(pairManagerAddress, address(this), _amount)
        );
        IWBNB(WBNB).withdraw(_amount);
    }

    function _withdraw(
        IPairManager _pairManager,
        address _trader,
        Asset asset,
        uint256 _amount
    ) internal {
        if (_amount == 0) return;
        SpotFactoryStorage.Pair memory _pairAddress = _getQuoteAndBase(
            _pairManager
        );
        address pairManagerAddress = address(_pairManager);
        if (asset == Asset.Quote) {
            if (_pairAddress.QuoteAsset == WBNB) {
                _withdrawBNB(_trader, pairManagerAddress, _amount);
            } else {
                TransferHelper.transferFrom(
                    IERC20(_pairAddress.QuoteAsset),
                    address(_pairManager),
                    _trader,
                    _amount
                );
            }
        } else {
            if (_pairAddress.QuoteAsset == WBNB) {
                _withdrawBNB(_trader, pairManagerAddress, _amount);
            } else {
                TransferHelper.transferFrom(
                    IERC20(_pairAddress.BaseAsset),
                    address(_pairManager),
                    _trader,
                    _amount
                );
            }
        }
    }

    // _feeCalculator calculate fee
    function _feeCalculator(uint256 _amount, uint16 _fee)
        internal
        view
        returns (uint256 feeCalculatedAmount)
    {
        if (_fee == 0) {
            return 0;
        }
        feeCalculatedAmount = (_fee * _amount) / feeBasis;
    }

    function _feeRefundCalculator(uint256 _amount, uint16 _fee)
        internal
        view
        returns (uint256 feeRefund)
    {
        if (_amount == 0) return 0;
        feeRefund = (_amount * _fee) / (feeBasis - _fee);
    }

    function _increaseFee(
        IPairManager _pairManager,
        uint256 _fee,
        bool _isBuy
    ) internal {
        if (_isBuy && _fee > 0) {
            _pairManager.increaseQuoteFeeFunding(_fee);
        }
        if (!_isBuy && _fee > 0) {
            _pairManager.increaseBaseFeeFunding(_fee);
        }
    }
}
