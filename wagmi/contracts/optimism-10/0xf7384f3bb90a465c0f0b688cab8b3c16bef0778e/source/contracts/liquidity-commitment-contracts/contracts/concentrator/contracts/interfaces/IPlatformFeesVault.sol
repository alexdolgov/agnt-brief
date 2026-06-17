// SPDX-License-Identifier: SAL-1.0
pragma solidity 0.8.18;

interface IPlatformFeesVault {
    function transferTokens(
        address[] memory _tokens,
        uint256[] memory _amounts,
        address _to
    ) external returns (bool);
}
