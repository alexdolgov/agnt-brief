// SPDX-License-Identifier: BUSL-1.1
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)

pragma solidity 0.8.22;

/// @title CAT-20 Revocable Compliance Errors
interface IERC20RevocableComplianceErrors {
    /// @dev Error thrown when no setup is performed for ERC20RevocableCompliance.
    error ERC20RevocableComplianceNoSetupError();

    /// @dev Error thrown when the decimals value is invalid for ERC20RevocableCompliance.
    error ERC20RevocableComplianceInvalidDecimalsError();

    /// @dev Error thrown when the name is empty for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEmptyNameError();

    /// @dev Error thrown when the initialization owner address is empty for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEmptyInitializationOwnerError();

    /// @dev Error thrown when the recipient address is empty for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEmptyRecipientError();

    /// @dev Error thrown when minting to an empty address for ERC20RevocableCompliance.
    error ERC20RevocableComplianceMintToEmptyAddressError();

    /// @dev Error thrown when no method is found for ERC20RevocableCompliance.
    error ERC20RevocableComplianceNoMethodFoundError();

    /// @dev Error thrown when an ether deposit is made for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEtherDepositError();

    /// @dev Error thrown when the symbol length is invalid for ERC20RevocableCompliance.
    error ERC20RevocableComplianceSymbolLengthError();

    /// @dev Error thrown when the address is invalid for ERC20RevocableCompliance.
    error ERC20RevocableComplianceInvalidAddressError();

    /// @dev Error thrown when the spender is the same as the owner for ERC20RevocableCompliance.
    error ERC20RevocableComplianceSameSpenderError();

    /// @dev Error thrown when the spender has insufficient token balance.
    error ERC20RevocableComplianceInsufficientBalanceError();

    /// @dev Error thrown when the address is zero for ERC20RevocableCompliance contract.
    error ERC20RevocableComplianceZeroAddressError();

    /// @dev Error thrown when transfer is not allowed for ERC20RevocableCompliance.
    error ERC20RevocableComplianceTransferNotAllowedError();

    /// @dev Error thrown when the value is invalid for ERC20RevocableCompliance.
    error ERC20RevocableComplianceInvalidValueError();

    /// @dev Error thrown when no admin role is found for ERC20RevocableCompliance.
    error ERC20RevocableComplianceNoAdminRoleError();

    /// @dev Error thrown when the input array lengths are inconsistent for ERC20RevocableCompliance contract.
    error ERC20RevocableComplianceInconsistentInputArrayLengthsError();

    /// @dev Error thrown when the array lengths are inconsistent for ERC20RevocableCompliance.
    error ERC20RevocableComplianceInconsistentArrayLengths();

    /// @dev Error thrown when the owner address is empty for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEmptyOwnerAddressError();

    /// @dev Error thrown when the updates repository address is empty for ERC20RevocableCompliance.
    error ERC20RevocableComplianceEmptyUpdatesRepositoryError();

    /// @dev Error thrown when the account is not frozen for ERC20RevocableCompliance.
    error ERC20RevocableComplianceAccountNotFrozen();

    /// @dev Error thrown when the address is not whitelisted for ERC20RevocableCompliance.
    error ERC20RevocableComplianceAddressNotWhitelisted();

    /// @dev Error thrown when an unsupported interface is encountered for ERC20RevocableCompliance.
    error ERC20RevocableComplianceUnsupportedInterface();

    /// @dev Error thrown when the address is empty.
    error ERC20RevocableComplianceEmptyAddressError(string error);

    /// @dev Error thrown when a frozen address is encountered for ERC20RevocableCompliance contract.
    error ERC20RevocableComplianceFrozenAddress();

    /// @dev Error thrown when the same context is encountered for ERC20RevocableCompliance.
    error ERC20RevocableComplianceSameContextError();

    /// @dev Error thrown when invalid account nonce is encountered for ERC20RevocableCompliance contract.
    error InvalidAccountNonce(address account, uint256 currentNonce);

    /// @dev error thrown when the transfer is not enabled for ERC20RevocableCompliance.
    error ERC20RevocableComplianceTransferNotEnabled();

    /// @dev Error thrown when the transfer is already disabled for ERC20RevocableCompliance.
    error ERC20RevocableComplianceTransferAlreadyDisabled();

    /// @dev Error thrown when the transfer is already enabled for ERC20RevocableCompliance.
    error ERC20RevocableComplianceTransferAlreadyEnabled();
}
