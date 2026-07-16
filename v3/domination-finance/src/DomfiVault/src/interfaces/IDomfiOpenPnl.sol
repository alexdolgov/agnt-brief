// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiOpenPnl {
    event AccTotalPnlUpdated(
        uint16 indexed pairIndex, int256 accTotalPnl, int256 accClosedPnl, int256 accNetOiUnits
    );
    event LastTradePriceUpdated(uint16 indexed pairIndex, int256 lastTradePrice);
    event RequestsStartUpdated(uint32 newValue);
    event RequestsEveryUpdated(uint32 newValue);
    event RequestsCountUpdated(uint8 newValue);
    event NewEpochForced(uint256 indexed newEpoch);
    event NextEpochValueRequested(
        uint256 indexed currEpoch, uint256 indexed requestId, int256 value
    );
    event NewEpoch(
        uint256 indexed newEpoch,
        uint256 indexed requestId,
        int256[] epochValues,
        int256 epochAverageValue,
        int256 newEpochOpenPnl
    );

    error TooEarly();
    error WrongParams();
    error NotCallbacks(address caller);
    error NotRegistryOwner(address caller);

    function forceNewEpoch() external;
    function newOpenPnlRequestOrEpoch() external;
    function updateRequestsStart(uint32 newValue) external;
    function updateRequestsEvery(uint32 newValue) external;
    function updateRequestsCount(uint8 newValue) external;
    function updateRequestsInfoBatch(
        uint32 newRequestsStart,
        uint32 newRequestsEvery,
        uint8 newRequestsCount
    ) external;
    function updateAccTotalPnl(
        int256 oraclePrice,
        uint256 openPrice,
        uint256 closePrice,
        uint256 oiNotional,
        uint16 pairIndex,
        bool buy,
        bool open
    ) external;

    function getOpenPnl() external view returns (int256);
    function lastTradePrice(uint16 pairIndex) external view returns (int256);
    function nextEpochValuesRequestCount() external view returns (uint8);
}
