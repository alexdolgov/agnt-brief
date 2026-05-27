// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.7;

interface IGPv2Settlement {
    function setPreSignature(bytes calldata orderUid, bool signed) external;

    function filledAmount(bytes calldata orderUid)
        external
        view
        returns (uint256);
}