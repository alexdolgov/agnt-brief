// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IVECakeStruct {
    struct LockedBalance {
        address userAddress;
        uint256 amount;
        uint256 end;
        uint256 supply;
    }
}
