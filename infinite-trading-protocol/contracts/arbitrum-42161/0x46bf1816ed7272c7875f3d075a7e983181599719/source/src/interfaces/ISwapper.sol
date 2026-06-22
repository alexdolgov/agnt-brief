// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import "../libraries/SwapperStructs.sol" as SwapperStructs;

interface ISwapper {
    function swap(SwapperStructs.InOutData calldata swapStruct_) external payable;
}
