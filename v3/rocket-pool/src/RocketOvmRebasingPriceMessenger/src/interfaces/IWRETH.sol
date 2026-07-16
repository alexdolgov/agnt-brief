// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

///@dev Partial interface for WRETH exposing the rebase function
interface IWRETH {
    function rebase() external;
}
