// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IXChainTransferTransaction {
    function requestCrossChainTransferIn(
        address account,
        uint256 date,
        uint256 amount
    ) external;

    function requestCrossChainTransferOut(
        address account,
        uint256 date,
        uint256 amount
    ) external;
}
