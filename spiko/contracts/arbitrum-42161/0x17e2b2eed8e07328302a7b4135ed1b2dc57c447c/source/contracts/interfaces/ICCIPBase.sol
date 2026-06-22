// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ICCIPBase {
    error CCIPBaseInvalidParameters();

    function CCIP_ROUTER() external view returns (address);
}
