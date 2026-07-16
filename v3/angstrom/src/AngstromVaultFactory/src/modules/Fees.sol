// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { IAngstromVaultFactory } from "../interfaces/IAngstromVaultFactory.sol";
import { IFees } from "../interfaces/IFees.sol";
import { PerformanceFees } from "./PerformanceFees.sol";
import { ManagementFees } from "./ManagementFees.sol";
import { Events } from "../Events.sol";

/// @notice Vault module which implements performance and management fees.
/// @notice Earned fees are minted as new shares, distributed to the `performanceFeeRecipient` and
/// `managementFeeRecipient`, respectively, with a proportion -- `performanceFeeProtocolFractionE6` or
/// `managementFeeProtocolFractionE6` of these fees going to the protocol.
/// @dev Performance fees are "provisionally-minted" within epochs of `epochLengthSeconds` -- within an epoch, these
/// shares may be confiscated to cover up to `performanceFeeProtocolFractionE6` of losses, and if they are not enough to
/// cover this fraction of losses, then `performanceFeeDebt` will be incremented and must be paid off prior to minting
/// of provisional shares. On epoch transition, both `performanceFeeDebt` and `provisionalShares` are cleared, with
/// `provisionalShares` being minted / realized. This system should prevent performance fees from being improperly
/// minted when intra-epoch gains fail to be maintained or merely represent a partial recovery while still below the
/// baseline of the epoch.
/// @dev Management fees are minted on every invocation of `accrueFees()`, and follow a formula ensuring that
/// the minted shares represent a fraction of total assets equal to `(managementFeeAccrualBaseE18 ^ timeElapsed - 1)
/// @dev This contract assumes `accrueFees()` is called before any other operation which might modify the
/// total number of shares. Failure to do so may result in behavior that is not as designed.
abstract contract Fees is IFees, ManagementFees, PerformanceFees {
    function _initFees(
        address _factory,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) internal {
        _initPerformanceFees(_factory, initialEpochLength, initialPerformanceFeeE6, initialPerformanceFeeRecipient);
        _initManagementFees(_factory, initialManagementFeeAccrualBaseE18, initialMangementFeeRecipient);
    }

    /// @inheritdoc IFees
    function totalSharesIncludingProvisional()
        public
        view
        override(IFees, ManagementFees, PerformanceFees)
        returns (uint256)
    {
        return totalSupply() + _provisionalShares();
    }

    /// @inheritdoc IFees
    // forge-lint: disable-next-line(mixed-case-function)
    function ANGSTROM_VAULT_FACTORY()
        public
        view
        override(IFees, ManagementFees, PerformanceFees)
        returns (IAngstromVaultFactory)
    {
        return _vaultFactory();
    }

    /// @inheritdoc IFees
    function exchangeRateE36Last() public view override(IFees, ManagementFees, PerformanceFees) returns (uint256) {
        return _exchangeRateE36LastValue();
    }

    /// @dev Included here so for inheritance purposes.
    function totalSupply() public view virtual override(PerformanceFees) returns (uint256);

    /// @inheritdoc IFees
    function accrueFees() public {
        _accruePerformanceFees();
        _accrueManagementFees();
    }

    function _setExchangeRateE36Last(
        uint256 newValue
    ) internal override(ManagementFees, PerformanceFees) {
        emit Events.ExchangeRateE36Measured(newValue);
        _setExchangeRateE36LastValue(newValue);
    }

    /// @dev Included here so that we can call `_mint()` appropriately while maintaining the desired inheritance graph.
    function _mint(
        address,
        uint256
    ) internal virtual override(ManagementFees, PerformanceFees);
}
