// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

interface IMulticall3 {
    struct Call {
        address target;
        bytes callData;
    }

    function aggregate(Call[] calldata calls) external returns (uint256 blockNumber, bytes[] memory returnData);
}
