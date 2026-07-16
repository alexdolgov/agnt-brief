// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface IGo {
    function go(address account) external view returns (bool);

    function goOnlyIdTypes(
        address account,
        uint256[] memory onlyIdTypes
    ) external view returns (bool);
}
