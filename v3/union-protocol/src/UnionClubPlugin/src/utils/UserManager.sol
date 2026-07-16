// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

interface UserManager {
    function checkIsMember(address account) external view returns (bool);
    function getVoucheeCount(address staker) external view returns (uint256);
    function vouchees(address staker, uint index) external view returns (address);
}