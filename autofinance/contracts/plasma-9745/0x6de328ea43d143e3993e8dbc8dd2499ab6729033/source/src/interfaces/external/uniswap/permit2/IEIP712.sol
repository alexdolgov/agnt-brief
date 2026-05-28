// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// solhint-disable func-name-mixedcase
interface IEIP712 {
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
