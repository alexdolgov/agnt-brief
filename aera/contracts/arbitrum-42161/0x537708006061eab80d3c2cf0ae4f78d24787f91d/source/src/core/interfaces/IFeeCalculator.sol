// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { Fee, FeeRecipientRecord, FeeSnapshot } from "src/core/Types.sol";

interface IFeeCalculator {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when a new snapshot is submitted for a vault
    /// @param averageValue The average value during the period
    /// @param highestProfit The highest profit achieved during the period
    /// @param timestamp The timestamp of the snapshot
    event SnapshotSubmitted(address indexed vault, uint224 averageValue, uint224 highestProfit, uint32 timestamp);

    /// @notice Emitted when a new fee recipient is set for a vault
    /// @param feeRecipient The address of the new fee recipient
    event FeeRecipientSet(address indexed vault, address indexed feeRecipient);

    /// @notice Emitted when a new vault is registered
    /// @param vault The address of the registered vault
    /// @param aumFee The AUM fee rate in basis points
    /// @param performanceFee The performance fee rate in basis points
    /// @param feeRecipient The initial fee recipient for the vault
    event VaultRegistered(address indexed vault, address indexed feeRecipient, uint16 aumFee, uint16 performanceFee);

    /// @notice Emitted when a vault's fees are updated
    /// @param vault The address of the vault
    /// @param aumFee The new AUM fee rate in basis points
    /// @param performanceFee The new performance fee rate in basis points
    event VaultFeesSet(address indexed vault, uint16 aumFee, uint16 performanceFee);

    /// @notice Emitted when protocol fees are updated
    /// @param aumFee The new protocol AUM fee rate in basis points
    /// @param performanceFee The new protocol performance fee rate in basis points
    event ProtocolFeesSet(uint16 aumFee, uint16 performanceFee);

    /// @notice Emitted when the protocol fee recipient is updated
    /// @param feeRecipient The new protocol fee recipient address
    event ProtocolFeeRecipientSet(address indexed feeRecipient);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    /// @notice Thrown when a snapshot's timestamp is older than the last fee accrual
    error SnapshotTooOld();

    /// @notice Thrown when a snapshot's timestamp is in the future
    error SnapshotInFuture();

    /// @notice Thrown when attempting to set an AUM fee higher than the maximum allowed
    error AumFeeTooHigh();

    /// @notice Thrown when attempting to set a performance fee higher than the maximum allowed
    error PerformanceFeeTooHigh();

    /// @notice Thrown when attempting to register an already registered vault
    error VaultAlreadyRegistered();

    /// @notice Thrown when attempting to set a protocol fee recipient to the zero address
    error ProtocolFeeRecipientZeroAddress();

    /// @notice Thrown when attempting to set 2 fee recipients with the same end timestamp
    error SameEndTimestampFeeRecipients();

    /// @notice Thrown when attempting to set new fee recipient same as the last fee recipient
    error SameFeeRecipient();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Sets the protocol-level fees
    /// @param aum The AUM fee rate in basis points
    /// @param performance The performance fee rate in basis points
    function setProtocolFees(uint16 aum, uint16 performance) external;

    /// @notice Sets the protocol-level fee recipient
    /// @param feeRecipient The address of the new protocol fee recipient
    function setProtocolFeeRecipient(address feeRecipient) external;

    /// @notice Sets the vault-specific fees
    /// @param aum The AUM fee rate in basis points
    /// @param performance The performance fee rate in basis points
    function setVaultFees(uint16 aum, uint16 performance) external;

    /// @notice Registers a new vault with the fee calculator
    /// @param aumFee The initial AUM fee rate in basis points
    /// @param performanceFee The initial performance fee rate in basis points
    /// @param feeRecipient The initial fee recipient address
    function registerVault(uint16 aumFee, uint16 performanceFee, address feeRecipient) external;

    /// @notice Updates the fee recipient for a vault
    /// @param feeRecipient The new fee recipient address
    function setVaultFeeRecipient(address feeRecipient) external;

    /// @notice Submits a new snapshot for fee calculation
    /// @param vault The address of the vault
    /// @param averageValue The average value during the period
    /// @param highestProfit The highest profit achieved during the period
    /// @param timestamp The timestamp of the snapshot
    function submitSnapshot(address vault, uint224 averageValue, uint224 highestProfit, uint32 timestamp) external;

    /// @notice Triggers fee accrual for a vault
    /// @param vault The address of the vault
    function accrueFees(address vault) external;

    /// @notice Claims accrued fees for a specific fee recipient
    /// @param feeRecipient The address of the fee recipient
    /// @return feeRecipientEarnedFees The amount of fees to be claimed by the fee recipient
    /// @return protocolEarnedFees The amount of protocol fees to be claimed by the protocol
    /// @return protocolFeeRecipient The address of the protocol fee recipient
    function claimFees(address feeRecipient) external returns (uint256, uint256, address);

    /// @notice Claims accrued protocol fees for a calling vault
    /// @return accruedFees The amount of protocol fees claimed
    /// @return protocolFeeRecipient The address of the protocol fee recipient
    function claimProtocolFees() external returns (uint256, address);

    /// @notice Views the claimable fees for a specific fee recipient
    /// @param vault The address of the vault
    /// @param feeRecipient The address of the fee recipient
    /// @return The amount of claimable fees
    function previewClaimFees(address vault, address feeRecipient) external view returns (uint256);

    /// @notice Views the claimable protocol fees for a vault
    /// @param vault The address of the vault
    /// @return The amount of claimable protocol fees
    function previewProtocolFees(address vault) external view returns (uint256);

    /// @notice Gets the list of fee recipients for a vault
    /// @param vault The address of the vault
    /// @return Array of fee recipient records
    function getFeeRecipients(address vault) external view returns (FeeRecipientRecord[] memory);

    /// @notice Gets the accrued fees for a specific fee recipient
    /// @param vault The address of the vault
    /// @param feeRecipient The address of the fee recipient
    /// @return The amount of accrued fees
    /// @dev Returns only current accrued fees, without updating them with latest snapshot
    function getAccruedFees(address vault, address feeRecipient) external view returns (uint256);

    /// @notice Gets the state of a vault
    /// @param vault The address of the vault
    /// @return The state of the vault
    function vaultFeeState(address vault)
        external
        view
        returns (FeeSnapshot memory, Fee memory, uint224, uint32, uint256);
}
