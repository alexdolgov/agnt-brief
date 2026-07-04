pragma solidity ^0.8.0;

import "../spot-exchange/libraries/types/SpotHouseStorage.sol";
import "./IPairManager.sol";

interface ISpotHouse {
    event SpotHouseInitialized(address owner);

    event MarketOrderOpened(
        address trader,
        uint256 quantity,
        uint256 openNational,
        SpotHouseStorage.Side side,
        IPairManager spotManager,
        uint128 currentPip,
        uint64 blockTimestamp
    );
    event LimitOrderOpened(
        uint64 orderId,
        address trader,
        uint256 quantity,
        uint256 sizeOut,
        uint128 pip,
        SpotHouseStorage.Side _side,
        address spotManager,
        uint64 blockTimestamp
    );

    event LimitOrderCancelled(
        address trader,
        IPairManager spotManager,
        uint128 pip,
        uint64 orderId,
        uint256 blockTimestamp
    );

    event AllLimitOrderCancelled(
        address trader,
        IPairManager spotManager,
        uint128[] pips,
        uint64[] orderIds,
        uint256 blockTimestamp
    );

    event AssetClaimed(
        address trader,
        IPairManager spotManager,
        uint256 quoteAmount,
        uint256 baseAmount
    );

    function openLimitOrder(
        IPairManager _spotManager,
        SpotHouseStorage.Side _side,
        uint256 _quantity,
        uint128 _pip
    ) external payable;

    function openMarketOrder(
        IPairManager _spotManager,
        SpotHouseStorage.Side _side,
        uint256 _quantity
    ) external payable;

    function cancelLimitOrder(
        IPairManager _spotManager,
        uint64 _orderIdx,
        uint128 _pip
    ) external;

    function claimAsset(IPairManager _spotManager) external;

    function getAmountClaimable(IPairManager _spotManager, address _trader)
        external
        view
        returns (
            uint256 quoteAsset,
            uint256 baseAsset,
            uint256 feeQuoteAmount,
            uint256 feeBaseAmount
        );

    function cancelAllLimitOrder(IPairManager _spotManager) external;

    function getPendingLimitOrders(IPairManager _spotManager, address _trader)
        external
        view
        returns (SpotHouseStorage.PendingLimitOrder[] memory);

    function setFactory(address _factoryAddress) external;

    function updateFee(uint16 _fee) external;
}
