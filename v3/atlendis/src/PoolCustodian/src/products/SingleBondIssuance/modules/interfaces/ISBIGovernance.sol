// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

/**
 * @title ISBIGovernance
 * @author Atlendis Labs
 * @notice Interface of the Single Bond Issuance Governance module contract
 *         It is in charge of the governance part of the contract
 *         In details:
 *           - manage borrowers,
 *           - enable issuance phase,
 *           - able to cancel bond issuance or default.
 *          Extended by the SingleBondIssuance product contract
 */
interface ISBIGovernance {
    /**
     * @notice Emitted when the issuance phase has started
     * @param contractAddress Address of the contract
     */
    event IssuancePhaseEnabled(address contractAddress);

    /**
     * @notice Cancel the bond issuance and consume the escrow in fees
     * @param contractAddress Address of the contract
     * @param remainingEscrow Remaining amount in escrow after fees distribution
     */
    event BondIssuanceCanceled(address contractAddress, uint256 remainingEscrow);

    /**
     * @notice Emitted when the ç
     * @param contractAddress Address of the contractpool has been marked as default
     */
    event Default(address contractAddress);

    /**
     * @notice Enable the issuance phase
     *
     * Emits a {IssuancePhaseEnabled} event
     */
    function enableIssuancePhase() external;

    /**
     * @notice Cancel the bond issuance
     *
     * Emits a {BondIssuanceCanceled} event
     */
    function cancelBondIssuance() external;

    /**
     * @notice Set the pool as defaulted
     *
     * Emits a {Default} event
     */
    function markPoolAsDefaulted() external;
}
