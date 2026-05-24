// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
//type PoolId is bytes32;
import {PoolId} from "@uniswap/v4-core/src/types/PoolId.sol"; // TODO can replace with type PoolId is bytes32

interface IArenaFeeHelperMinimal {
    struct Fee {
        address recipient;
        uint16 feePpm;
    }
    function getFeesForPool(PoolId poolId) external view returns (Fee[] memory feeRecipients);
    function getTotalFeePpm(PoolId poolId) external view returns (uint256);
    function initializeFeesForPool(PoolId poolId, Fee[] calldata fees) external;
}