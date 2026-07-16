// Liquidity Market Bribes Voting Escrow
// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.9;

interface IVotingEscrow {
    function token() external view returns (address);
    function team() external returns (address);
    function voter() external returns (address);
    function create_lock_for(uint, uint, address) external returns (uint);
}