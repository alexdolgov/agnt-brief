//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IRound {
    function getCategoryTicketsCount(LUtil.WinnerCategory category) external view returns (uint256);

    function getStatus() external view returns (LUtil.RoundStatus);

    function getRoundPoolAmount() external view returns (uint256);

    function getRevenueAmount() external view returns (uint256);

    function getPrizePoolBalances()
        external
        view
        returns (LUtil.PrizeWallet[] memory);

    function setTicket(uint8[] calldata ticket, address owner) external;

    function startProcessing() external payable;

    // function getRandomNumber() external payable;

    function fundBalance(LUtil.PrizeWallet[] calldata balances) external;

    function payPage(LUtil.WinnerCategory category, uint256 page) external;

    function suspend() external;

    function resume() external;

    function refund() external;
}
