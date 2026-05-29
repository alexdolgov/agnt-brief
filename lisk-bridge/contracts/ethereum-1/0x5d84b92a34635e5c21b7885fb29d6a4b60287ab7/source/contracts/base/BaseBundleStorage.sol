// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Ownable } from "solady/src/auth/Ownable.sol";
import { Initializable } from "solady/src/utils/Initializable.sol";

import { Fees } from "../Structures.sol";

/// @notice Error thrown when an incorrect deposit fee amount is provided.
/// @param depositFees The incorrect deposit fee percentage provided.
error IncorrectDepositFeesAmount(uint256 depositFees);

/// @notice Error thrown when an incorrect withdrawal fee amount is provided.
/// @param withdrawalFees The incorrect withdrawal fee percentage provided.
error IncorrectWithdrawalFeesAmount(uint256 withdrawalFees);

/// @notice Error thrown when an incorrect annual percentage fee amount is provided.
/// @param annualFeePercent The incorrect annual percentage fee provided.
error IncorrectAnnualFeePercentAmount(uint256 annualFeePercent);

/// @notice Error thrown when an incorrect withdrawal fee amount is provided.
error PercentageCannotExceed100();

/// @notice Error thrown when the provided amount is 0.
error ZeroAmountPassed();

/**
 * @title BaseBundleStorage contract
 * @notice This contract manages the storage and their associated fees.
 * @dev Handles fee management.
 * @author Swarm
 */
abstract contract BaseBundleStorage is Initializable, Ownable {
    /// @notice Emitted when fees are changed.
    /// @param newFees The updated fees structure.
    event FeesChanged(Fees newFees);

    /// @notice Emitted when the maximum array size is updated.
    /// @param newMaxArraySize The new maximum array size allowed.
    event MaxArraySizeChanged(uint256 newMaxArraySize);

    /// @notice Emitted when the percentage to dissolve the bundle is changed.
    /// @param newPercentage The new percentage value for dissolution.
    event PercentageToDissolveChanged(uint256 newPercentage);

    /// @notice Represents 100% in basis points
    uint256 public constant ONE_HUNDRED_PERCENT = 10000;

    /// @notice Represents 100% annual fee
    uint256 public constant ONE_HUNDRED_PERCENT_ANNUALLY = 100;

    /// @notice The maximum allowed array size.
    uint256 public maxArraySize;

    /// @notice The percentage to dissolve a bundle.
    uint256 internal _dissolvePercentage; // Represents 100% dissolution in basis points

    /// @notice The current fee structure.
    Fees private _fees;

    /**
     * @notice Initializes function for the BundleStorage contract.
     * @dev Sets the initial owner of the contract.
     * @param _owner The address of the contract owner.
     */
    function _initialize_BaseBundleStorage(address _owner) internal {
        maxArraySize = 20;
        _dissolvePercentage = 10000;

        _initializeOwner(_owner);
    }

    /**
     * @notice Retrieves the current fee receiver address.
     * @return The address of the fee receiver.
     */
    function feeReceiver() external view virtual returns (address) {
        return _fees.feeReceiver;
    }

    /**
     * @notice Retrieves the current deposit fee percentage.
     * @return The deposit fee percentage.
     */
    function depositFeePercent() external view virtual returns (uint256) {
        return _fees.depositFeePercent;
    }

    /**
     * @notice Retrieves the current withdrawal fee percentage.
     * @return The withdrawal fee percentage.
     */
    function withdrawalFeePercent() external view virtual returns (uint256) {
        return _fees.withdrawalFeePercent;
    }

    /**
     * @notice Retrieves the current annual percentage fee.
     * @return The annual percentage fee.
     */
    function annualFeePercent() external view virtual returns (uint256) {
        return _fees.annualFeePercent;
    }

    /// @notice Retrieves the current percentage to dissolve a bundle.
    /// @return The percentage to dissolve a bundle.
    function dissolvePercentage() external view virtual returns (uint256) {
        return _dissolvePercentage;
    }

    /**
     * @notice Updates the fees structure.
     * @dev Only the owner can update the fees structure.
     * @param _feeReceiver The address of the new fee receiver.
     * @param _depositFeePercent The new deposit fee percentage (in basis points).
     * @param _withdrawalFeePercent The new withdrawal fee percentage (in basis points).
     * @param _annualFeePercent The new annual fee percentage.
     */
    function _feesSetUp(
        address _feeReceiver,
        uint256 _depositFeePercent,
        uint256 _withdrawalFeePercent,
        uint256 _annualFeePercent
    ) internal virtual {
        require(_depositFeePercent <= ONE_HUNDRED_PERCENT, IncorrectDepositFeesAmount(_depositFeePercent));
        require(_withdrawalFeePercent <= ONE_HUNDRED_PERCENT, IncorrectWithdrawalFeesAmount(_withdrawalFeePercent));
        require(_annualFeePercent <= ONE_HUNDRED_PERCENT_ANNUALLY, IncorrectAnnualFeePercentAmount(_annualFeePercent));

        Fees memory _newFees = Fees({
            feeReceiver: _feeReceiver,
            depositFeePercent: _depositFeePercent,
            withdrawalFeePercent: _withdrawalFeePercent,
            annualFeePercent: _annualFeePercent
        });

        _fees = _newFees;

        emit FeesChanged(_newFees);
    }

    /**
     * @notice Updates the maximum array size.
     * @dev Only the owner can change the maximum array size.
     * @param newMaxArraySize The new maximum array size.
     */
    function _changeMaxArraySize(uint256 newMaxArraySize) internal virtual {
        require(newMaxArraySize > 0, ZeroAmountPassed());

        maxArraySize = newMaxArraySize;
        emit MaxArraySizeChanged(newMaxArraySize);
    }

    /**
     * @notice Updates the percentage to dissolve the bundle.
     * @dev Only the owner can change the dissolve percentage.
     * @param newPercentage The new percentage for dissolution.
     */
    function _changeDissolvePercentage(uint256 newPercentage) internal virtual {
        require(newPercentage <= ONE_HUNDRED_PERCENT, PercentageCannotExceed100());

        _dissolvePercentage = newPercentage;
        emit PercentageToDissolveChanged(newPercentage);
    }
}
