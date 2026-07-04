// SPDX-License-Identifier: MIT

import "../libs/utils/LUtil.sol";

pragma solidity >0.8.0 <0.9.0;

interface IAutoplay {
    function getMaxTicketsToBuy() external view returns (uint32);

    function getUpcomingRoundLimit() external view returns (uint32);

    function getPlatformAddress() external view returns (address);

    function getCurrentRoundNumber(address lotteryAddress)
        external
        view
        returns (uint32);

    function getRoundOrdersCount(address lotteryAddress, uint32 roundNumber)
        external
        view
        returns (uint32);

    function getRoundTicketsCount(address lotteryAddress, uint32 roundNumber)
        external
        view
        returns (uint256);

    function getRoundOrders(
        address lotteryAddress,
        uint32 roundNumber,
        uint32 page,
        uint16 resultsPerPage
    ) external view returns (LUtil.AutoplayOrder[] memory);

    function getRoundOrder(
        address lotteryAddress,
        uint32 roundNumber,
        uint32 orderId
    ) external view returns (LUtil.AutoplayOrder memory);

    function getUserOrdersCount(address lotteryAddress, address user)
        external
        view
        returns (uint256);

    function getUserOrders(
        address lotteryAddress,
        address user,
        uint32 page,
        uint16 resultsPerPage
    ) external view returns (LUtil.AutoplayOrder[] memory);

    function isProcessed(address lotteryAddress, uint32 roundNumber)
        external
        view
        returns (bool);

    function pause() external;

    function unpause() external;

    function setMaxTicketsToBuy(uint32 maxTicketsToBuy) external;

    function setUpcomingRoundLimit(uint32 upcomingRoundLimit) external;

    function setPlatformAddress(address platformAddress) external;

    /**
     * @dev batch buy many tickets
     *
     * @param lotteryAddress address of lottery where we should buy tickets
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount total amount of tokens
     * @param roundNumber upcoming round number of lottery
     */
    function createOrder(
        address lotteryAddress,
        uint8[][] calldata numbersArray,
        uint256 amount,
        uint32 roundNumber
    ) external payable;

    function executeOrdersByPage(address lotteryAddress, uint32 page) external;

    /**
     * @dev withrdaw native tokens from autoplay
     */
    function withdrawNative() external;

    function transferOnClose(address lotteryAddress) external;
}
