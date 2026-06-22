// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IDefensiveSenderReceiver} from "./IDefensiveSenderReceiver.sol";

interface ISpikoDefensiveSenderReceiver is IDefensiveSenderReceiver {
    error InvalidParameters();
    error RestrictedAccess(
        uint64 chainSelector, address token, address sender, address receiver, uint256 amount, bool isSource
    );

    function AUTHORITY() external view returns (address);
}
