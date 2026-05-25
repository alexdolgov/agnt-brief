// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./IGNSTradingStorage.sol";

/**
 * @custom:version 6.4.2
 */
interface IGNSTrading {
    event Done(bool done);
    event Paused(bool paused);

    event NumberUpdated(string name, uint256 value);
    event BypassTriggerLinkUpdated(address user, bool bypass);

    event MarketOrderInitiated(uint256 indexed orderId, address indexed trader, uint256 indexed pairIndex, bool open);

    event OpenLimitPlaced(address indexed trader, uint256 indexed pairIndex, uint256 index);
    event OpenLimitUpdated(
        address indexed trader,
        uint256 indexed pairIndex,
        uint256 index,
        uint256 newPrice,
        uint256 newTp,
        uint256 newSl,
        uint256 maxSlippageP
    );
    event OpenLimitCanceled(address indexed trader, uint256 indexed pairIndex, uint256 index);

    event TpUpdated(address indexed trader, uint256 indexed pairIndex, uint256 index, uint256 newTp);
    event SlUpdated(address indexed trader, uint256 indexed pairIndex, uint256 index, uint256 newSl);

    event NftOrderInitiated(uint256 orderId, address indexed trader, uint256 indexed pairIndex, bool byPassesLinkCost);

    event ChainlinkCallbackTimeout(uint256 indexed orderId, IGNSTradingStorage.PendingMarketOrder order);
    event CouldNotCloseTrade(address indexed trader, uint256 indexed pairIndex, uint256 index);

    // mux: copied from v5
    function oracleRewards() external view returns (address); // IGNSOracleRewards

    // mux: copied from v5
    function maxPosDai() external view returns (uint256); // 1e18 (eg. 75000 * 1e18)

    // mux: copied from v5
    function marketOrdersTimeouts() external view returns (uint256); // block (eg. 30)

    // mux: copied from v5
    function isPaused() external view returns (bool); // Prevent opening new trades

    // mux: copied from v5
    function isDone() external view returns (bool); // Prevent any interaction with the contract
}
