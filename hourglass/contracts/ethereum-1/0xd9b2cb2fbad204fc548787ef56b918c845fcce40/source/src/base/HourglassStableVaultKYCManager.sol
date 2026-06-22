// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

abstract contract HourglassStableVaultKYCManager {
    // ===== Events =====
    event KYCStatusSet(address indexed account, bool status);

    // ===== Errors =====
    error UserZeroAddress();
    error NotKycApproved();
    error AlreadyKycApproved();
    error KycStatusUnchanged(address user, bool currentStatus);

    // ===== Storage =====
    mapping(address account => bool isKycApproved) private _kycStatus;

    // ===== Modifiers =====
    modifier onlyKycApproved(address account) {
        if (!_kycStatus[account]) revert NotKycApproved();
        _;
    }

    modifier onlyNonKyc(address account) {
        if (_kycStatus[account]) revert AlreadyKycApproved();
        _;
    }

    // ===== Internal Setters =====
    function _setKycStatus(address account, bool status) internal {
        if (account == address(0)) revert UserZeroAddress();
        if (_kycStatus[account] == status) revert KycStatusUnchanged(account, status);
        _kycStatus[account] = status;
        emit KYCStatusSet(account, status);
    }

    // ===== Views =====
    function _isKycApproved(address account) internal view returns (bool) {
        return _kycStatus[account];
    }

    function isKycApproved(address account) external view returns (bool) {
        return _kycStatus[account];
    }
}
