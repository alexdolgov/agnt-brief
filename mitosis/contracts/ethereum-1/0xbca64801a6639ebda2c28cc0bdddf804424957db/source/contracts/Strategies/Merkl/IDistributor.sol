// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

/**
 * @author  Renzo Protocol
 * @title   IDistributor
 * @dev     Interface for the Merkl distributor
 * @notice  This interface is used to claim rewards from Merkl
 */
interface IDistributor {
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;
}