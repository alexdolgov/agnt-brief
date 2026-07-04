// SPDX-License-Identifier: MIT

pragma solidity =0.8.4;
pragma experimental ABIEncoderV2;

interface IMultiOracle {
    function consult(address _token) external view returns (uint256);
}
