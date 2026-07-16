// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

interface IAggregatorV3 {
    function latestAnswer() external view returns (int256);
}

interface IAccountant {
    function base() external view returns (address);
    function decimals() external view returns (uint256);
    function getRateSafe() external view returns (uint256);
}

contract GGVOracle is IAggregatorV3 {
    function latestAnswer() public view returns (int256) {
        address ggv = 0xef417FCE1883c6653E7dC6AF7c6F85CCDE84Aa09;
        address accountant = 0xc873F2b7b3BA0a7faA2B56e210E3B965f2b618f5;
        address asset = IAccountant(accountant).base();
        int256 price = IAggregatorV3(0x5424384B256154046E9667dDFaaa5e550145215e).latestAnswer();
        uint256 value =
            Math.mulDiv(uint256(price), IAccountant(accountant).getRateSafe(), 10 ** IAccountant(accountant).decimals());
        return int256(value);
    }
}
