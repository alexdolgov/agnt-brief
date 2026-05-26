// SPDX-License-Identifier: MIT

pragma solidity =0.7.6;

interface INameVersion {
    function nameId() external view returns (bytes32);

    function versionId() external view returns (bytes32);
}
