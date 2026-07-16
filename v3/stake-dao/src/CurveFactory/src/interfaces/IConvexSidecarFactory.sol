// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

interface IConvexSidecarFactory {
    function getSidecar(address gauge) external view returns (address);
}


