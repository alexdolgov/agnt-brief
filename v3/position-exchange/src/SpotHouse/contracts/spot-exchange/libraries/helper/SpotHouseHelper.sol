pragma solidity ^0.8.0;

import "../../../interfaces/IPairManager.sol";
import "./TradeConvert.sol";
import "./Convert.sol";
import "./PackedOrderId.sol";

library SpotHouseHelper {
    using TradeConvert for uint256;
    using Convert for uint256;
    using PackedOrderId for bytes32;

    // exchanged data return for liquidity
    // how many base -> quote and versa
    struct ExchangedData {
        int256 base;
        int256 quote;
        uint128 feeQuote;
        uint128 feeBase;
    }

    function accumulateClaimableAmount(
        address _pairAddress,
        uint128 _pip,
        uint64 _orderId,
        uint256 quoteAmount,
        uint256 baseAmount,
        uint256 basisPoint
    )
        internal
        view
        returns (
            uint256,
            uint256,
            int128,
            int128
        )
    {
        IPairManager _pairManager = IPairManager(_pairAddress);
        (
            bool isFilled,
            bool isBuy,
            uint256 baseSize,
            uint256 partialFilled
        ) = _pairManager.getPendingOrderDetail(_pip, _orderId);
        uint256 filledSize = isFilled ? baseSize : partialFilled;
        if (isBuy) {
            //BUY => can claim base asset
            baseAmount += filledSize;
        } else {
            // SELL => can claim quote asset
            quoteAmount += filledSize.baseToQuote(_pip, basisPoint);
        }
        return (quoteAmount, baseAmount, 0, 0);
    }

    struct AccPoolExchangedDataParams {
        bytes32 orderId;
        int128 baseAdjust;
        int128 quoteAdjust;
        uint128 feeQuote;
        uint128 feeBase;
    }

    // Accumulate the exchanged quote and the base amount, to the pool liquidity
    // don't need to returns because `params` works as a pointer reference
    function accumulatePoolExchangedData(
        address _pairAddress,
        uint256 basisPoint,
        AccPoolExchangedDataParams memory params
    ) internal view {
        (uint128 _pip, uint64 _orderId, bool isBuy) = params.orderId.unpack();
        IPairManager _pairManager = IPairManager(_pairAddress);
        (
            bool isFilled,
            ,
            uint256 baseSize,
            uint256 partialFilled
        ) = _pairManager.getPendingOrderDetail(_pip, _orderId);
        uint256 filledSize = isFilled ? baseSize : partialFilled;
        if (isBuy) {
            //BUY => can claim base asset
            params.baseAdjust += filledSize.toI128();
            params.quoteAdjust -= filledSize
                .baseToQuote(_pip, basisPoint)
                .toI128();
        } else {
            // SELL => can claim quote asset
            params.quoteAdjust += filledSize
                .baseToQuote(_pip, basisPoint)
                .toI128();
            params.baseAdjust -= filledSize.toI128();
        }
    }
}
