// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

interface IAccess {
    function initialize(string memory name_, string memory symbol_) external;

    function checkAccess(
        address sender,
        address _contract,
        bytes4 selector
    ) external;
}
