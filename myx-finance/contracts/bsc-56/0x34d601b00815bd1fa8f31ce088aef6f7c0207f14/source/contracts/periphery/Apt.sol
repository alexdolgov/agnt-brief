// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../libraries/TradingTypes.sol";
import "../interfaces/IFrontFacet.sol";
import "../interfaces/IFeeCollector.sol";

contract Apt is Ownable {
    mapping(address => bool) public robots;
    using SafeERC20 for IERC20;

    IFrontFacet public router;
    IFeeCollector public feeCollector;
    address public immutable stableCoin;
    enum PositionType {
        Long,
        Short,
        All
    }

    constructor(
        address _router,
        address _owner,
        address robot,
        address _stableCoin,
        address _feeCollector
    ){
        router = IFrontFacet(_router);
        transferOwnership(_owner);
        robots[robot] = true;
        stableCoin = _stableCoin;
        feeCollector = IFeeCollector(_feeCollector);
        IERC20(stableCoin).safeApprove(_router, type(uint256).max);

    }

    modifier onlyRobot() {
        require(robots[msg.sender], "only robet");
        _;
    }

    function setRobot(address _address, bool isRobot) external onlyOwner {
        robots[_address] = isRobot;
    }

    function setRouter(address _address) external onlyRobot {
        router = IFrontFacet(_address);
    }

    function openPosition(
        uint256 pairIndex, PositionType positionType, uint256 openPrice, uint256 maxSlippage, int256 collateralSize, uint256 orderSize
    ) external payable onlyRobot {

        uint256 usedNetworkFee = 0;
        if (positionType == PositionType.All || positionType == PositionType.Long) {
            usedNetworkFee += msg.value / 2;
            router.createIncreaseOrder{value: msg.value / 2}(TradingTypes.IncreasePositionRequest({
                account: address(this),
                pairIndex: pairIndex,
                tradeType: TradingTypes.TradeType.MARKET,
                collateral: collateralSize,
                openPrice: openPrice,
                isLong: true,
                makerOnly: false,
                sizeAmount: orderSize,
                maxSlippage: maxSlippage,
                paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                networkFeeAmount: msg.value / 2
            }));
        }
        if (positionType == PositionType.All || positionType == PositionType.Short) {
            usedNetworkFee += msg.value / 2;
            router.createIncreaseOrder{value: msg.value / 2}(TradingTypes.IncreasePositionRequest({
                account: address(this),
                pairIndex: pairIndex,
                tradeType: TradingTypes.TradeType.MARKET,
                collateral: collateralSize,
                openPrice: openPrice,
                isLong: false,
                makerOnly: false,
                sizeAmount: orderSize,
                maxSlippage: maxSlippage,
                paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                networkFeeAmount: msg.value / 2
            }));
        }

        if (msg.value > usedNetworkFee) {
            payable(msg.sender).transfer(msg.value - usedNetworkFee);
        }
    }

    struct TpSl {
        uint256 tpPrice;
        uint128 tp;
        uint256 slPrice;
        uint128 sl;
    }

    function openPositionWithTpSl(
        uint256 pairIndex,
        PositionType positionType,
        uint256 openPrice,
        uint256 maxSlippage,
        int256 collateralSize,
        uint128 orderSize,
        TpSl memory longTpSl,
        TpSl memory shortTpSl,
        uint256 unitNetworkFeeAmount
    ) external payable onlyRobot {

        uint256 usedNetworkFee = 0;
        if (positionType == PositionType.All || positionType == PositionType.Long) {
            uint256 longUsedNetworkFee;
            longUsedNetworkFee += unitNetworkFeeAmount;
            if (longTpSl.tp > 0) {
                longUsedNetworkFee += unitNetworkFeeAmount;
            }
            if (longTpSl.sl > 0) {
                longUsedNetworkFee += unitNetworkFeeAmount;
            }
            router.createIncreaseOrderWithTpSl{value: longUsedNetworkFee}(TradingTypes.IncreasePositionWithTpSlRequest({
                account: address(this),
                pairIndex: pairIndex,
                tradeType: TradingTypes.TradeType.MARKET,
                collateral: collateralSize,
                openPrice: openPrice,
                isLong: true,
                makerOnly: false,
                sizeAmount: orderSize,
                tpPrice: longTpSl.tpPrice,
                tp: longTpSl.tp,
                slPrice: longTpSl.slPrice,
                sl: longTpSl.sl,
                maxSlippage: maxSlippage,
                paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                networkFeeAmount: unitNetworkFeeAmount,
                tpNetworkFeeAmount: longTpSl.tp > 0 ? unitNetworkFeeAmount : 0,
                slNetworkFeeAmount: longTpSl.sl > 0 ? unitNetworkFeeAmount : 0
            }));
            usedNetworkFee += longUsedNetworkFee;
        }
        if (positionType == PositionType.All || positionType == PositionType.Short) {
            uint256 shortUsedNetworkFee;
            shortUsedNetworkFee += unitNetworkFeeAmount;
            if (shortTpSl.tp > 0) {
                shortUsedNetworkFee += unitNetworkFeeAmount;
            }
            if (shortTpSl.sl > 0) {
                shortUsedNetworkFee += unitNetworkFeeAmount;
            }
            router.createIncreaseOrderWithTpSl{value: shortUsedNetworkFee}(TradingTypes.IncreasePositionWithTpSlRequest({
                account: address(this),
                pairIndex: pairIndex,
                tradeType: TradingTypes.TradeType.MARKET,
                collateral: collateralSize,
                openPrice: openPrice,
                isLong: false,
                makerOnly: false,
                sizeAmount: orderSize,
                tpPrice: shortTpSl.tpPrice,
                tp: shortTpSl.tp,
                slPrice: shortTpSl.slPrice,
                sl: shortTpSl.sl,
                maxSlippage: maxSlippage,
                paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                networkFeeAmount: unitNetworkFeeAmount,
                tpNetworkFeeAmount: shortTpSl.tp > 0 ? unitNetworkFeeAmount : 0,
                slNetworkFeeAmount: shortTpSl.sl > 0 ? unitNetworkFeeAmount : 0
            }));
            usedNetworkFee += shortUsedNetworkFee;
        }

        if (msg.value > usedNetworkFee) {
            payable(msg.sender).transfer(msg.value - usedNetworkFee);
        }
    }

    function closePosition(
        IRoute.CancelOrderRequest[] memory requests,
        uint256 pairIndex, PositionType positionType,
        uint256 openPrice, uint256 maxSlippage, int256 collateralSize, uint256 orderSize
    ) external payable onlyRobot {
        if (requests.length > 0) {
            router.cancelOrders(requests);
        }
        uint256 usedNetworkFee = 0;
        if (positionType == PositionType.All || positionType == PositionType.Long) {
            usedNetworkFee += msg.value / 2;
            router.createDecreaseOrder{value: msg.value / 2}(
                TradingTypes.DecreasePositionRequest(
                    {account: address(this),
                        pairIndex: pairIndex,
                        tradeType: TradingTypes.TradeType.MARKET,
                        collateral: collateralSize,
                        triggerPrice: openPrice,
                        sizeAmount: orderSize,
                        isLong: true,
                        makerOnly: false,
                        maxSlippage: maxSlippage,
                        paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                        networkFeeAmount: msg.value / 2
                    }
                ));
        }
        if (positionType == PositionType.All || positionType == PositionType.Short) {
            usedNetworkFee += msg.value / 2;
            router.createDecreaseOrder{value: msg.value / 2}(
                TradingTypes.DecreasePositionRequest(
                    {account: address(this),
                        pairIndex: pairIndex,
                        tradeType: TradingTypes.TradeType.MARKET,
                        collateral: collateralSize,
                        triggerPrice: openPrice,
                        sizeAmount: orderSize,
                        isLong: false,
                        makerOnly: false,
                        maxSlippage: maxSlippage,
                        paymentType: TradingTypes.NetworkFeePaymentType.ETH,
                        networkFeeAmount: msg.value / 2
                    }
                ));
        }
        if (msg.value > usedNetworkFee) {
            payable(msg.sender).transfer(msg.value - usedNetworkFee);
        }
    }

    function cancelOrder(IRoute.CancelOrderRequest[] memory cancelOrdersReq) external onlyRobot {
        router.cancelOrders(cancelOrdersReq);
    }

    function cancelOrderAndTpSl(IRoute.CancelOrderRequest[] memory cancelOrdersReq, TradingTypes.CreateTpSlRequest memory request) external payable onlyRobot {
        router.cancelOrders(cancelOrdersReq);
        router.createTpSl{value: msg.value}(request);
    }

    function callRouter(bytes[] calldata calls) external onlyOwner {
        for (uint256 i; i < calls.length;) {
            (bool success, bytes memory result) = address(router).delegatecall(
                calls[i]
            );
            require(success, "!su");
            unchecked {
                ++i;
            }
        }
    }

    function setPriceAndAdjustCollateral(
        uint256 pairIndex,
        bool isLong,
        int256 collateral,
        address[] calldata tokens,
        bytes[] calldata updateData,
        uint64[] calldata publishTimes
    ) external payable onlyOwner {
        router.setPriceAndAdjustCollateral{value: msg.value}(pairIndex, isLong, collateral, tokens, updateData, publishTimes);
    }

    function claimUserTradingFee() external returns (uint256) {
        return feeCollector.claimUserTradingFee();
    }

    function salvageToken(address token, uint amount) external onlyOwner {
        IERC20(token).safeTransfer(msg.sender, amount);
    }

    function recoverETH(uint256 amount) external onlyOwner {
        address payable recipient = payable(owner());
        (bool success,) = recipient.call{value: amount}("");
        require(success, "Failed Ether");
    }
}
