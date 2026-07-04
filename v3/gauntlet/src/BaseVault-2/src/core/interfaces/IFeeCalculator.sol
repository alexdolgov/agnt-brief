// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { Fee, FeeSnapshot } from "src/core/Types.sol";

/// @title IFeeCalculator
/// @notice Interface for a contract that calculates fee inputs for a single-depositor vault
interface IFeeCalculator {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    /// @notice Emitted when a new snapshot of fee inputs is submitted for a vault
    /// @param averageValue The average value of the vault during the period since last snapshot
    /// @param highestProfit The highest profit achieved during the period since last snapshot
    /// @param timestamp The timestamp of the snapshot
    /// @dev highestProfit is equivalent to a high water mark but could be applicable to a subset of the vault
    event SnapshotSubmitted(address indexed vault, uint224 averageValue, uint224 highestProfit, uint32 timestamp);

    /// @notice Emitted when a new vault is registered
    /// @param vault The address of the registered vault
    event VaultRegistered(address indexed vault);

    /// @notice Emitted when a vault's fees are updated
    /// @param vault The address of the vault
    /// @param aumFee The new assets under management fee rate in basis points
    /// @param performanceFee The new performance fee rate in basis points
    event VaultFeesSet(address indexed vault, uint16 aumFee, uint16 performanceFee);

    /// @notice Emitted when protocol fees are updated
    /// @param aumFee The new protocol assets under management fee rate in basis points
    /// @param performanceFee The new protocol performance fee rate in basis points
    event ProtocolFeesSet(uint16 aumFee, uint16 performanceFee);

    /// @notice Emitted when the protocol fee recipient is updated
    /// @param feeRecipient The new protocol fee recipient address
    event ProtocolFeeRecipientSet(address indexed feeRecipient);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    /// @notice Thrown when a snapshot's timestamp is older than the last fee accrual
    error Aera__SnapshotTooOld();

    /// @notice Thrown when a snapshot's timestamp is in the future
    error Aera__SnapshotInFuture();

    /// @notice Thrown when attempting to set an assets under management fee higher than the maximum allowed
    error Aera__AumFeeTooHigh();

    /// @notice Thrown when attempting to set a performance fee higher than the maximum allowed
    error Aera__PerformanceFeeTooHigh();

    /// @notice Thrown when attempting to register an already registered vault
    error Aera__VaultAlreadyRegistered();

    /// @notice Thrown when attempting to set a protocol fee recipient to the zero address
    error Aera__ProtocolFeeRecipientZeroAddress();

    /// @notice Thrown when attempting to accrue fees with a highest profit that is less than the last highest profit
    error Aera__HighestProfitDecreased();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Set the protocol fee rates
    /// @param aum The assets under management fee rate in basis points
    /// @param performance The performance fee rate in basis points
    function setProtocolFees(uint16 aum, uint16 performance) external;

    /// @notice Set the protocol fee recipient
    /// @param feeRecipient The address of the new protocol fee recipient
    function setProtocolFeeRecipient(address feeRecipient) external;

    /// @notice Set the vault-specific fee rates
    /// @param aum The assets under management fee rate in basis points
    /// @param performance The performance fee rate in basis points
    function setVaultFees(uint16 aum, uint16 performance) external;

    /// @notice Register a new vault with the fee calculator
    function registerVault() external;

    /// @notice Submit a new snapshot for fee calculation
    /// @param vault The address of the vault
    /// @param averageValue The average value during the period since last snapshot to this snapshot timestamp
    /// @param highestProfit The highest profit achieved up to the snapshot timestamp
    /// @param timestamp The timestamp of the snapshot
    function submitSnapshot(address vault, uint224 averageValue, uint224 highestProfit, uint32 timestamp) external;

    /// @notice Process fee accrual for a vault
    /// @param vault The address of the vault
    function accrueFees(address vault) external;

    /// @notice Process a fee claim for a specific vault
    /// @return earnedFees The amount of fees to be claimed by the fee recipient
    /// @return protocolEarnedFees The amount of protocol fees to be claimed by the protocol
    /// @return protocolFeeRecipient The address of the protocol fee recipient
    /// @dev Expected to be called by the vault only when claiming fees
    function claimFees() external returns (uint256, uint256, address);

    /// @notice Process a protocol fee claim for a vault
    /// @return accruedFees The amount of protocol fees claimed
    /// @return protocolFeeRecipient The address of the protocol fee recipient
    /// @dev Expected to be called by the vault only when claiming protocol fees
    function claimProtocolFees() external returns (uint256, address);

    /// @notice Returns the current claimable fees for the given vault, as if a claim was made now
    /// @param vault The address of the vault to preview fees for
    /// @return vaultFees The amount of claimable fees for the vault
    /// @return protocolFees The amount of claimable protocol fees
    function previewFees(address vault) external view returns (uint256 vaultFees, uint256 protocolFees);

    /// @notice The fee state of a vault
    /// @param vault The address of the vault
    /// @return pendingSnapshot Latest pending snapshot for fee calculation
    /// @return fees Current fee rates for the vault
    /// @return lastHighestProfit Highest profit achieved so far
    /// @return lastFeeAccrual Timestamp of last fee accrual
    /// @return accruedFees Total vault fees accrued but not claimed
    /// @return accruedProtocolFees Total protocol fees accrued but not claimed
    function vaultFeeState(address vault)
        external
        view
        returns (FeeSnapshot memory, Fee memory, uint224, uint32, uint112, uint112);
}
