// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EggBase.sol";

contract GimmeMonies is EggBase {
    constructor() {}

    function egg(
        address,
        bytes calldata
    ) external view override returns (bool) {
        return address(this).balance > 0;
    }
}
