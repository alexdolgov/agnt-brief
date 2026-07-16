// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./IOrder.sol";

interface IBetting is IOrder {
    function putOrder(
        OrderData calldata orders,
        address betOwner,
        uint256 minBet,
        bytes calldata data
    ) external returns (uint256[] memory tokenIds);

    function getOrderBetsAmounts(
        OrderData calldata order
    ) external view returns (uint128 totalAmount, uint128[] memory amounts);

    function resolvePayout(
        uint256 tokenId
    ) external returns (address account, uint128 payout);

    function viewPayout(uint256 tokenId) external view returns (uint128 payout);

    function lp() external view returns (address);
}
