// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IRound {
    function getTicketsCount() external view returns (uint256);

    function getUserTicketsCount() external view returns (uint256);

    function getUserTickets(uint256 page, uint16 resultsPerPage)
        external
        view
        returns (LUtil.TicketObject[] memory);

    function getProcessingLimit() external pure returns (uint256);

    // function getPayLimit() external pure returns (uint256);

    function getStatus() external view returns (LUtil.RoundStatus);

    function getWithdrawedAmount() external view returns (uint256);

    function getCategoryAmount(LUtil.WinnerCategory category)
        external
        view
        returns (uint256);

    function getCategoryAmountPerTicket(LUtil.WinnerCategory category)
        external
        view
        returns (uint256);

    function getRoundPoolAmount() external view returns (uint256);

    function getCategoryTicketsCount(LUtil.WinnerCategory category)
        external
        view
        returns (uint256);

    function getCategoryTicketsClaimed(LUtil.WinnerCategory category)
        external
        view
        returns (uint256);

    function isCategoryClaimedByUser(LUtil.WinnerCategory category)
        external
        view
        returns (bool);

    function isUserClaimed() external view returns (bool);

    function getUserClaimableAmount()
        external
        view
        returns (uint256 claimAmount);

    function userHasWinningTickets() external view returns (bool);

    function getWinners(
        LUtil.WinnerCategory category,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (LUtil.TicketObject[] memory);

    function getTickets(uint256 page, uint16 resultsPerPage)
        external
        view
        returns (LUtil.TicketObject[] memory);

    function getRevenueAmount() external view returns (uint256);

    function getWinningNumbers() external view returns (uint256[] memory);

    function getPrizePoolBalances()
        external
        view
        returns (LUtil.PrizeWallet[] memory);

    function getActualPrizePoolBalances()
        external
        view
        returns (LUtil.PrizeWallet[] memory);

    function isUserWithdrawed(address user) external view returns (bool);

    function getRandomResult() external view returns (uint256);

    function withdraw() external;

    function setTicket(uint8[] calldata ticket, address owner) external;

    function startProcessing() external payable;

    function calculateWinnersGroupsPage(uint256 page) external;

    function fundBalance(
        LUtil.PrizeWallet[] calldata balances,
        uint256 roundIndex
    ) external;

    // function payPage(LUtil.WinnerCategory category, uint256 page) external;

    function updateCategoryBalance(
        LUtil.WinnerCategory category,
        uint256 claimAmount
    ) external;

    function claim() external;

    function claimByAdmin() external;

    function closeRound() external;

    function suspend() external;

    function resume() external;

    function refund() external;
}
