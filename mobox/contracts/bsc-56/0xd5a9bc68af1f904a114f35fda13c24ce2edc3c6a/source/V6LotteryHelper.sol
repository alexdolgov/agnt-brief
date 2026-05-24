// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

contract V6LotteryHelper {
    function getLuckyTicket(bytes32 hash1, bytes32 hash2, bytes32 hash3, uint256 totalTickets) external pure returns(uint256) {
        return (uint256(hash1) + uint256(hash2) + uint256(hash3)) % totalTickets;
    }
}