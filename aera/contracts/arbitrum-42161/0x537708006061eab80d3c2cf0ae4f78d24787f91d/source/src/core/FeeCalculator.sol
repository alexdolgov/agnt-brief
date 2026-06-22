// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { Authority } from "@solmate/auth/Auth.sol";
import { Auth2Step } from "src/core/Auth2Step.sol";
import { BASIS_POINTS, DISPUTE_PERIOD, SECONDS_PER_YEAR } from "src/core/Constants.sol";
import { Fee, FeeRecipientRecord, FeeSnapshot, VaultFeeState } from "src/core/Types.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

/// @title FeeCalculator
/// @notice Module for BaseVault's fee calculation and management
/// @notice Serves as a central registry for all vaults and their associated fees
/// @dev All fees are calculated in the numeraire token's decimals
contract FeeCalculator is IFeeCalculator, Auth2Step {
    ////////////////////////////////////////////////////////////
    //                        Storage                         //
    ////////////////////////////////////////////////////////////

    /// @notice The protocol's fee configuration
    Fee public protocolFees;
    /// @notice The address that receives the protocol's fees
    address public protocolFeeRecipient;
    /// @notice A mapping of vault addresses to their associated state
    mapping(address vault => VaultFeeState vaultState) public vaultFeeState;

    constructor(address owner_, Authority authority_) Auth2Step(owner_, authority_) { }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IFeeCalculator
    function setProtocolFees(uint16 aum, uint16 performance) external requiresAuth {
        // Requirements: check that the fees are less than the maximum allowed
        require(aum < BASIS_POINTS, AumFeeTooHigh());
        require(performance < BASIS_POINTS, PerformanceFeeTooHigh());

        // Effects: set the protocol fees
        protocolFees = Fee({ aum: aum, performance: performance });

        // Log new protocol fees
        emit ProtocolFeesSet(aum, performance);
    }

    /// @inheritdoc IFeeCalculator
    function setProtocolFeeRecipient(address feeRecipient) external requiresAuth {
        // Requirements: check that the fee recipient is not the zero address
        require(feeRecipient != address(0), ProtocolFeeRecipientZeroAddress());
        // Effects: set the protocol fee recipient
        protocolFeeRecipient = feeRecipient;

        // Log the protocol fee recipient set
        emit ProtocolFeeRecipientSet(feeRecipient);
    }

    /// @inheritdoc IFeeCalculator
    function registerVault(uint16 aumFee, uint16 performanceFee, address feeRecipient) external {
        // Requirements: check that the fees are less than the maximum allowed
        require(aumFee < BASIS_POINTS, AumFeeTooHigh());
        require(performanceFee < BASIS_POINTS, PerformanceFeeTooHigh());

        VaultFeeState storage vaultState = vaultFeeState[msg.sender];
        // Requirements: check that the vault is not already registered
        require(vaultState.lastFeeAccrual == 0, VaultAlreadyRegistered());

        // Effects: set the vault fees
        vaultState.fees = Fee({ aum: aumFee, performance: performanceFee });
        // Effects: set the last fee accrual
        vaultState.lastFeeAccrual = uint32(block.timestamp);
        // Effects: register the fee recipient
        vaultState.feeRecipients.push(
            FeeRecipientRecord({ endTimestamp: type(uint32).max, feeRecipient: feeRecipient })
        );

        // Log the vault registration
        emit VaultRegistered(msg.sender, feeRecipient, aumFee, performanceFee);
    }

    /// @inheritdoc IFeeCalculator
    function setVaultFees(uint16 aum, uint16 performance) external {
        // Requirements: check that the fees are less than the maximum allowed
        require(aum < BASIS_POINTS, AumFeeTooHigh());
        require(performance < BASIS_POINTS, PerformanceFeeTooHigh());

        // Effects: set the vault fees
        VaultFeeState storage vaultState = vaultFeeState[msg.sender];
        vaultState.fees = Fee({ aum: aum, performance: performance });

        // Log new vault fees
        emit VaultFeesSet(msg.sender, aum, performance);
    }

    /// @inheritdoc IFeeCalculator
    function setVaultFeeRecipient(address feeRecipient) external {
        unchecked {
            VaultFeeState storage vaultState = vaultFeeState[msg.sender];

            uint256 feeRecipientCount = vaultState.feeRecipients.length;

            if (feeRecipientCount > 1) {
                // Requirements: check that we don't have 2 fee recipients with the same end timestamp
                require(
                    // unchecked because we know that feeRecipientCount > 1
                    vaultState.feeRecipients[feeRecipientCount - 2].endTimestamp != block.timestamp,
                    SameEndTimestampFeeRecipients()
                );
            }

            // Requirements: check that vault is registered and has at least one fee recipient
            // if it isn't, this is going to revert with panic: array out-of-bounds access (0x32)
            FeeRecipientRecord storage lastFeeRecipient = vaultState.feeRecipients[feeRecipientCount - 1];

            require(lastFeeRecipient.feeRecipient != feeRecipient, SameFeeRecipient());

            // Effects: set the end timestamp for the previous active fee recipient
            lastFeeRecipient.endTimestamp = uint32(block.timestamp);
            // Effects: store the new fee recipient
            vaultState.feeRecipients.push(
                FeeRecipientRecord({ endTimestamp: type(uint32).max, feeRecipient: feeRecipient })
            );

            // Log the fee recipient set
            emit FeeRecipientSet(msg.sender, feeRecipient);
        }
    }

    /// @inheritdoc IFeeCalculator
    function submitSnapshot(address vault, uint224 averageValue, uint224 highestProfit, uint32 timestamp)
        external
        requiresAuth
    {
        // Requirements: check that the snapshot is not in the future
        require(timestamp <= block.timestamp, SnapshotInFuture());

        VaultFeeState storage vaultState = vaultFeeState[vault];

        // Effects: accrue fees
        _accrueFees(vaultState);

        // Requirements: check that the snapshot is not too old
        require(timestamp > vaultState.lastFeeAccrual, SnapshotTooOld());

        // Effects: update pending snapshot
        vaultState.pendingSnapshot = FeeSnapshot({
            timestamp: timestamp,
            finalizedAt: uint32(block.timestamp + DISPUTE_PERIOD),
            averageValue: averageValue,
            highestProfit: highestProfit
        });

        // Log the snapshot submitted
        emit SnapshotSubmitted(vault, averageValue, highestProfit, timestamp);
    }

    /// @inheritdoc IFeeCalculator
    function accrueFees(address vault) external {
        VaultFeeState storage vaultState = vaultFeeState[vault];

        // Effects: accrue fees
        _accrueFees(vaultState);
    }

    /// @inheritdoc IFeeCalculator
    function claimFees(address feeRecipient) external returns (uint256, uint256, address) {
        VaultFeeState storage vaultState = vaultFeeState[msg.sender];
        _accrueFees(vaultState);

        uint256 feeRecipientEarnedFees = vaultState.accruedFees[feeRecipient];
        uint256 protocolEarnedFees = vaultState.accruedProtocolFee;

        // Effects: set the accrued fees to 0
        vaultState.accruedFees[feeRecipient] = 0;
        vaultState.accruedProtocolFee = 0;

        return (feeRecipientEarnedFees, protocolEarnedFees, protocolFeeRecipient);
    }

    /// @inheritdoc IFeeCalculator
    function claimProtocolFees() external returns (uint256, address) {
        VaultFeeState storage vaultState = vaultFeeState[msg.sender];

        // Effects: accrue fees
        _accrueFees(vaultState);

        uint256 accruedFees = vaultState.accruedProtocolFee;
        // Effects: set the accrued protocol fees to 0
        vaultState.accruedProtocolFee = 0;

        return (accruedFees, protocolFeeRecipient);
    }

    /// @inheritdoc IFeeCalculator
    function previewClaimFees(address vault, address feeRecipient) external view returns (uint256) {
        VaultFeeState storage vaultState = vaultFeeState[vault];
        return _accrueFeeRecipientFeesView(vaultState, feeRecipient);
    }

    /// @inheritdoc IFeeCalculator
    function previewProtocolFees(address vault) external view returns (uint256) {
        VaultFeeState storage vaultState = vaultFeeState[vault];
        return _accrueProtocolFeesView(vaultState);
    }

    /// @inheritdoc IFeeCalculator
    function getFeeRecipients(address vault) external view returns (FeeRecipientRecord[] memory) {
        return vaultFeeState[vault].feeRecipients;
    }

    /// @inheritdoc IFeeCalculator
    function getAccruedFees(address vault, address feeRecipient) external view returns (uint256) {
        return vaultFeeState[vault].accruedFees[feeRecipient];
    }

    ////////////////////////////////////////////////////////////
    //              Private / Internal Functions              //
    ////////////////////////////////////////////////////////////

    /// @notice Accrues fees for a vault based on its pending snapshot
    /// @dev Updates the vault's state including lastFeeAccrual, lastHighestProfit, and accruedFees
    /// @dev Deletes pending snapshot if dispute period has passed
    /// @param vaultState The storage pointer to the vault's state
    function _accrueFees(VaultFeeState storage vaultState) internal {
        FeeSnapshot memory snapshot = vaultState.pendingSnapshot;
        uint32 lastFeeAccrual = vaultState.lastFeeAccrual;

        if (lastFeeAccrual >= snapshot.timestamp || snapshot.finalizedAt == 0 || snapshot.finalizedAt > block.timestamp)
        {
            // nothing to accrue
            return;
        }

        // Effects: set the last fee accrual
        vaultState.lastFeeAccrual = snapshot.timestamp;

        // pending snapshot has become active, accrue fees
        (uint256 vaultPerformanceFeeEarned, uint256 protocolPerformanceFeeEarned) =
            _accruePerformanceFees(vaultState, snapshot);

        uint256 totalDuration;
        unchecked {
            totalDuration = snapshot.timestamp - lastFeeAccrual;
        }
        uint256 averageValue = snapshot.averageValue;

        // Effects: set the accrued protocol fees
        vaultState.accruedProtocolFee +=
            protocolPerformanceFeeEarned + _calculateAumFee(averageValue, protocolFees.aum, totalDuration);

        uint256 vaultAumFeeEarned;
        uint256 recipientsCount = vaultState.feeRecipients.length;
        if (recipientsCount == 1) {
            // only one recipient, it accrues all fees for the period
            vaultAumFeeEarned = _calculateAumFee(averageValue, vaultState.fees.aum, totalDuration);

            // Effects: increment the accrued fees
            vaultState.accruedFees[vaultState.feeRecipients[0].feeRecipient] +=
                vaultAumFeeEarned + vaultPerformanceFeeEarned;
        } else {
            // multiple recipients, calculate fees for each recipient
            uint256 deleteCount = 0;
            uint256 vaultAumFee = vaultState.fees.aum;
            uint256 activeDuration;
            for (uint256 i = 0; i < recipientsCount; ++i) {
                FeeRecipientRecord storage feeRecipientRecord = vaultState.feeRecipients[i];

                uint32 feeRecipientEnd = feeRecipientRecord.endTimestamp;
                if (feeRecipientEnd >= snapshot.timestamp) {
                    // it's the last recipient for the period, we will break the loop after calculating the fees
                    activeDuration = snapshot.timestamp - lastFeeAccrual;
                    vaultAumFeeEarned = _calculateAumFee(averageValue, vaultAumFee, activeDuration);

                    // Effects: increment the accrued fees
                    vaultState.accruedFees[feeRecipientRecord.feeRecipient] +=
                        vaultAumFeeEarned + vaultPerformanceFeeEarned * activeDuration / totalDuration;

                    if (feeRecipientEnd == snapshot.timestamp) {
                        // feeRecipient ended we need to delete it
                        unchecked {
                            ++deleteCount;
                        }
                    }

                    break;
                }
                // it's not the last recipient for the period, calculate the fees for the recipient
                // this fee recipient will be deleted after the loop

                activeDuration = feeRecipientEnd - lastFeeAccrual;

                vaultAumFeeEarned = _calculateAumFee(averageValue, vaultAumFee, activeDuration);

                // Effects: increment the accrued fees
                // Performance fee is prorated for the active duration
                vaultState.accruedFees[feeRecipientRecord.feeRecipient] +=
                    vaultAumFeeEarned + vaultPerformanceFeeEarned * activeDuration / totalDuration;

                unchecked {
                    ++deleteCount;
                }

                lastFeeAccrual = feeRecipientEnd;
            }

            _deleteFeeRecipients(vaultState, deleteCount);
        }

        // Effects: delete the pending snapshot
        delete vaultState.pendingSnapshot;
    }

    /// @notice Deletes fee recipients from the vault's state after fees have been accrued
    /// @dev Optimized for the common case of deleting a single recipient
    /// @param vaultState The storage pointer to the vault's state
    /// @param deleteCount The number of fee recipients to delete
    function _deleteFeeRecipients(VaultFeeState storage vaultState, uint256 deleteCount) internal {
        // we optimize for the most common use case where there is only one fee recipient to delete
        if (deleteCount == 1) {
            // Effects: overwrite the first fee recipient with the second one
            vaultState.feeRecipients[0] = vaultState.feeRecipients[1];
            // Effects: delete the last fee recipient
            vaultState.feeRecipients.pop();
            return;
        }

        for (uint256 i = 0; i < deleteCount; ++i) {
            // Effects: overwrite the i-th fee recipient with the (i + deleteCount)-th one
            vaultState.feeRecipients[i] = vaultState.feeRecipients[i + deleteCount];
        }
        for (uint256 i = 0; i < deleteCount; ++i) {
            // Effects: delete the last fee recipient
            vaultState.feeRecipients.pop();
        }
    }

    /// @notice Accrues performance fees for a vault based on its pending snapshot
    /// @dev Returns zero fees if no new profit has been made
    /// @dev Updates the vault's state including lastHighestProfit
    /// @param vaultState The storage pointer to the vault's state
    /// @param snapshot The storage pointer to the pending snapshot
    /// @return vaultPerformanceFeeEarned The performance fee for the vault
    /// @return protocolPerformanceFeeEarned The performance fee for the protocol
    function _accruePerformanceFees(VaultFeeState storage vaultState, FeeSnapshot memory snapshot)
        internal
        returns (uint256, uint256)
    {
        uint256 highestProfit = snapshot.highestProfit;
        uint256 lastHighestProfit = vaultState.lastHighestProfit;
        if (highestProfit <= lastHighestProfit) {
            return (0, 0);
        }

        // Effects: update the last highest profit
        vaultState.lastHighestProfit = uint224(highestProfit);

        unchecked {
            uint256 profit = highestProfit - lastHighestProfit;
            // cant overflow because profit is less than 2^224 and fee rates are less than 10^4
            uint256 vaultPerformanceFeeEarned = profit * vaultState.fees.performance / BASIS_POINTS;
            uint256 protocolPerformanceFeeEarned = profit * protocolFees.performance / BASIS_POINTS;

            return (vaultPerformanceFeeEarned, protocolPerformanceFeeEarned);
        }
    }

    /// @notice Calculates the claimable protocol fees without modifying state
    /// @dev Used by view functions to preview claimable protocol fees
    /// @param vaultState The storage pointer to the vault's state
    /// @return The total amount of protocol fees claimable
    function _accrueProtocolFeesView(VaultFeeState storage vaultState) internal view returns (uint256) {
        FeeSnapshot storage snapshot = vaultState.pendingSnapshot;
        uint32 finalizedAt = snapshot.finalizedAt;
        uint32 lastFeeAccrual = vaultState.lastFeeAccrual;
        uint32 periodEnd = snapshot.timestamp;

        if (lastFeeAccrual == periodEnd || finalizedAt == 0 || finalizedAt > block.timestamp) {
            // nothing to accrue
            return vaultState.accruedProtocolFee;
        }

        (, uint256 protocolPerformanceFeeEarned) = _accruePerformanceFeeView(vaultState, snapshot);

        uint256 aumFee = _calculateAumFee(snapshot.averageValue, protocolFees.aum, periodEnd - lastFeeAccrual);

        return vaultState.accruedProtocolFee + protocolPerformanceFeeEarned + aumFee;
    }

    /// @notice Calculates the claimable fees for a specific fee recipient without modifying state
    /// @dev Used by view functions to preview claimable fees
    /// @param vaultState The storage pointer to the vault's state
    /// @param feeRecipient The address of the fee recipient
    /// @return accruedFees The total amount of fees claimable by the recipient
    function _accrueFeeRecipientFeesView(VaultFeeState storage vaultState, address feeRecipient)
        internal
        view
        returns (uint256 accruedFees)
    {
        FeeSnapshot memory snapshot = vaultState.pendingSnapshot;
        uint32 lastFeeAccrual = vaultState.lastFeeAccrual;

        accruedFees = vaultState.accruedFees[feeRecipient];

        if (lastFeeAccrual == snapshot.timestamp || snapshot.finalizedAt == 0 || snapshot.finalizedAt > block.timestamp)
        {
            // nothing to accrue
            return accruedFees;
        }

        (uint256 vaultPerformanceFeeEarned,) = _accruePerformanceFeeView(vaultState, snapshot);

        uint256 averageValue = snapshot.averageValue;
        uint256 totalDuration = snapshot.timestamp - lastFeeAccrual;

        uint256 vaultAumFeeEarned;
        uint256 recipientsCount = vaultState.feeRecipients.length;
        if (recipientsCount == 1) {
            if (vaultState.feeRecipients[0].feeRecipient != feeRecipient) {
                return accruedFees;
            }
            // only one recipient, it accrues all fees for the period
            vaultAumFeeEarned = _calculateAumFee(averageValue, vaultState.fees.aum, totalDuration);

            return accruedFees + vaultAumFeeEarned + vaultPerformanceFeeEarned;
        } else {
            uint256 vaultAumFee = vaultState.fees.aum;
            uint256 activeDuration;
            for (uint256 i = 0; i < recipientsCount; ++i) {
                FeeRecipientRecord storage feeRecipientRecord = vaultState.feeRecipients[i];

                uint32 feeRecipientEnd = feeRecipientRecord.endTimestamp;
                if (feeRecipientEnd >= snapshot.timestamp) {
                    if (feeRecipientRecord.feeRecipient != feeRecipient) {
                        return accruedFees;
                    }

                    activeDuration = snapshot.timestamp - lastFeeAccrual;
                    vaultAumFeeEarned = _calculateAumFee(averageValue, vaultAumFee, activeDuration);

                    return accruedFees + vaultAumFeeEarned + vaultPerformanceFeeEarned * activeDuration / totalDuration;
                }

                if (feeRecipientRecord.feeRecipient == feeRecipient) {
                    activeDuration = feeRecipientEnd - lastFeeAccrual;

                    vaultAumFeeEarned = _calculateAumFee(averageValue, vaultAumFee, activeDuration);

                    accruedFees += vaultAumFeeEarned + vaultPerformanceFeeEarned * activeDuration / totalDuration;
                }

                lastFeeAccrual = feeRecipientEnd;
            }
        }
    }

    /// @notice Calculates performance fees for both vault and protocol
    /// @dev Returns zero fees if no new profit has been made
    /// @param vaultState The storage pointer to the vault's state
    /// @param snapshot The storage pointer to the pending snapshot
    /// @return vaultPerformanceFee The performance fee for the vault
    /// @return protocolPerformanceFee The performance fee for the protocol
    function _accruePerformanceFeeView(VaultFeeState storage vaultState, FeeSnapshot memory snapshot)
        internal
        view
        returns (uint256 vaultPerformanceFee, uint256 protocolPerformanceFee)
    {
        uint256 highestProfit = snapshot.highestProfit;
        uint256 lastHighestProfit = vaultState.lastHighestProfit;
        if (highestProfit <= lastHighestProfit) {
            return (0, 0);
        }

        unchecked {
            uint256 profit = highestProfit - lastHighestProfit;
            // cant overflow because profit is less than 2^224 and fee rates are less than 10^4
            vaultPerformanceFee = profit * vaultState.fees.performance / BASIS_POINTS;
            protocolPerformanceFee = profit * protocolFees.performance / BASIS_POINTS;

            return (vaultPerformanceFee, protocolPerformanceFee);
        }
    }

    /// @notice Calculates the AUM fee for a given period
    /// @dev Fee is annualized and prorated for the time period
    /// @param averageValue The average value during the period
    /// @param aumFee The AUM fee rate in basis points
    /// @param timeDelta The duration of the fee period in seconds
    /// @return The calculated AUM fee
    function _calculateAumFee(uint256 averageValue, uint256 aumFee, uint256 timeDelta)
        internal
        pure
        returns (uint256)
    {
        return averageValue * aumFee * timeDelta / BASIS_POINTS / SECONDS_PER_YEAR;
    }
}
