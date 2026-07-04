// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "./IVToken.sol";

interface IVenusBNB is IVToken{
    function mint() external payable;
}