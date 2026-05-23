// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "../libs/utils/LUtil.sol";

interface IEventEmitter {
    function grantEventCallerRole(address eventCaller) external;

    function emitCalculateRandomNumber(address roundAddress, uint256 number)
        external;

    function emitSetTicket(
        address roundAddress,
        address owner,
        uint256 ticketKey,
        uint8[] calldata ticket
    ) external;

    function emitCalculateWinningTickets(
        address roundAddress,
        uint256 page,
        uint256 ticketKey,
        address ticketOwner,
        uint8[] calldata ticket
    ) external;

    // function emitPayWinners(
    //     address roundAddress,
    //     uint256 page,
    //     uint256 ticketKey,
    //     LUtil.WinnerCategory category,
    //     address ticketOwner,
    //     uint256 winningAmount,
    //     uint256 ticketsCount
    // ) external;

    function emitClaim(
        address roundAddress,
        LUtil.WinnerCategory category,
        address ticketOwner,
        uint256 winningAmount,
        uint256[] calldata ticketKeys
    ) external;

    function emitClaimByAdmin(
        address roundAddress,
        LUtil.WinnerCategory category,
        uint256 winningAmount
    ) external;

    function emitChangeRoundStatus(
        address roundAddress,
        LUtil.RoundStatus status
    ) external;

    function emitWithdraw(
        address roundAddress,
        address to,
        uint256 amount
    ) external;

    function emitDistribution(
        address roundAddress,
        address receiver,
        LUtil.Distribution distribution,
        uint256 amount
    ) external;
}
