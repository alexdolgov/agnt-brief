// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

interface IAPI3Oracle {
        function read()
        external
        view
        returns (int224 value, uint32 timestamp);
        function getExchangeRate() external view returns (uint256);
}