// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract MockAddressProvider {
    constructor(){

    }

    function roleManager() external view returns (address) {
        return address(this);
    }

    function isPoolAdmin(address poolAdmin) external view returns (bool) {
        return true;
    }

    function isKeeper(address keeper) external view returns (bool) {
        return true;
    }
}
