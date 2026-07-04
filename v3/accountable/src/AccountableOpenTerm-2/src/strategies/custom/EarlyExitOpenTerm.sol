// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../../constants/Errors.sol";

import {IAccountableVault} from "../../interfaces/IAccountableAsyncVault.sol";

import {AccountableOpenTerm} from "../AccountableOpenTerm.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title EarlyExitOpenTerm
/// @custom:security-contact security@accountable.capital
/// @notice Implementation of an open term strategy with early exit module attached
contract EarlyExitOpenTerm is AccountableOpenTerm {
    using Math for uint256;

    /// @dev Sets the early exit module address
    function setEarlyExitModule(address earlyExitModule_) external onlyOperationsAdmin {
        if (earlyExitModule_ == address(0)) revert ZeroAddress();
        earlyExitModule = earlyExitModule_;
    }

    /// @dev Called by the early exit queue to synchronize state
    /// @dev It allows for contained burning of shares in the context of the queue
    function onEarlyExit(uint256 shares, uint256 grossAssets) external nonReentrant whenNotPaused {
        _requireLoanOngoing();

        address earlyModule_ = earlyExitModule;
        if (msg.sender != earlyModule_) revert Unauthorized();
        if (shares == 0 || grossAssets == 0) revert InsufficientAmount();

        _accrueInterest();

        address vault_ = vault;

        uint256 debtShares = grossAssets.mulDiv(PRECISION, _scaleFactor, Math.Rounding.Floor);

        netPrincipal = netPrincipal >= grossAssets ? netPrincipal - grossAssets : 0;
        if (_loan.outstandingPrincipal < debtShares) {
            revert EarlyExitDebtMismatch();
        }
        _loan.outstandingPrincipal -= debtShares;

        IAccountableVault(vault_).burnShares(shares, msg.sender);

        _updateDelinquentStatus();
    }
}
