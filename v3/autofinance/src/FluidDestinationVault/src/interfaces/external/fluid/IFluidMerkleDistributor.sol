// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

// solhint-disable func-name-mixedcase

/// @notice Interface derived from Fluid’s MerkleDistributor contract implementation, as they do not provide a
/// standalone interface.
/// https://github.com/Instadapp/fluid-contracts-public/blob/main/contracts/protocols/lending/merkleDistributor/main.sol
interface IFluidMerkleDistributor {
    function TOKEN() external view returns (address);
    function claim(
        address recipient_,
        uint256 cumulativeAmount_,
        uint8 positionType_,
        bytes32 positionId_,
        uint256 cycle_,
        bytes32[] calldata merkleProof_,
        bytes memory metadata_
    ) external;
}
