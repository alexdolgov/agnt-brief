// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

interface UToken {
    function checkIsOverdue(address account) external view returns (bool);
}