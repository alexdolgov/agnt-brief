// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IDorStaking {
    function depositUndelegated(address recipient, uint256 amount) external;
}
