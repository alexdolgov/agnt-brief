// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title ISBIPool
 * @author Atlendis Labs
 * @notice Interface of the Single Bond Issuance core Pool module contract
 *         It exposes the available methods for all the modules
 */
interface ISBIPool {
    /**
     * @notice Emitted when the book building phase has started
     * @param contractAddress Address of the contract
     */
    event BookBuildingPhaseEnabled(address contractAddress, uint256 cancellationFeeEscrow);
}
