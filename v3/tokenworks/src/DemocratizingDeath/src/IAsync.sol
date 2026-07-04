// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IAsync {
    function useControlToken(
        uint256 controlTokenId,
        uint256[] calldata leverIds,
        int256[] calldata newValues
    ) external payable;
}
