// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

struct Data {
    string name;
    address asset;
}


contract ShowcaseBug {
    Data public data;
    function writeData(Data memory _data) public {
        data = _data;
    }
}
