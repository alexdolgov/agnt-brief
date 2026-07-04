// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { IAngstromVaultFactory } from "../interfaces/IAngstromVaultFactory.sol";
import { IManagementFees } from "../interfaces/IManagementFees.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";
import { VaultMathLib } from "../libraries/VaultMathLib.sol";
import { FACTOR_E6, FACTOR_E18 } from "../libraries/Constants.sol";

using FixedPointMathLib for int256;

/// @notice Vault module which implements management fees.
/// @notice Earned fees are minted as new shares, distributed to the  `managementFeeRecipient`, with a
/// proportion -- `managementFeeProtocolFractionE6` -- of these fees going to the protocol.
/// @dev Management fees are minted on every invocation of `_accrueManagementFees()`, and follow a formula ensuring that
/// the minted shares represent a fraction of total assets equal to `(managementFeeAccrualBaseE18 ^ timeElapsed - 1)
/// @dev This contract assumes `_accrueManagementFees()` is called before any other operation which might modify the
/// total number of shares. Failure to do so may result in behavior that is not as designed.
abstract contract ManagementFees is IManagementFees {
    using SafeCastLib for *;

    /// @dev Enforced maximum value of `managementFeeAccrualBaseE18`.
    /// @dev Numerical value equates to ~20% fees per year.
    uint256 internal constant MAX_MANAGEMENT_FEE_ACCRUAL_BASE_E18 = 1.000000005781e18;

    struct ManagementFeesStorage {
        address managementFeeRecipient;
        uint256 managementFeeAccrualBaseE18;
        uint24 managementFeeProtocolFractionE6;
        uint256 managementFeesAccruedUntil;
    }

    ManagementFeesStorage private managementFeesStorage;

    function _initManagementFees(
        address _factory,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialMangementFeeRecipient
    ) internal {
        managementFeesStorage.managementFeesAccruedUntil = block.timestamp;
        _setManagementFee(initialManagementFeeAccrualBaseE18);
        _setManagementFeeRecipient(initialMangementFeeRecipient);
        _setManagementFeeProtocolFractionE6(IAngstromVaultFactory(_factory).defaultManagementFeeProtocolFractionE6());
    }

    /// @dev External setPerformanceFeeProtocolFractionE6 and setManagementFeeProtocolFractionE6
    // are defined in VaultExtension to reduce Vault bytecode size.

    /// @dev This function is included here to allow this module to invoke `totalSharesIncludingProvisional()`, while
    /// maintaining the desired overall inheritance structure for the Vault.
    function totalSharesIncludingProvisional() public view virtual returns (uint256);

    // forge-lint: disable-next-line(mixed-case-function)
    function ANGSTROM_VAULT_FACTORY() public view virtual returns (IAngstromVaultFactory);

    function exchangeRateE36Last() public view virtual returns (uint256);

    function _setExchangeRateE36Last(
        uint256 newValue
    ) internal virtual;

    /// @dev Accrues management fees since the `managementFeesAccruedUntil` timestamp.
    /// Expected to be called before any operation which could otherwise modify the total supply of shares, since
    /// otherwise management fees will be improperly charged on new shares or fail to be charged on old shares.
    function _accrueManagementFees() internal {
        if (managementFeesStorage.managementFeesAccruedUntil < block.timestamp) {
            // `managementFeeAccrualBaseE18 = 1e18` corresponds to zero rate, but we exclude any value below this as
            // well, to make sure we cover the case where `managementFeeAccrualBaseE18` is unset and thus zero
            if (managementFeesStorage.managementFeeAccrualBaseE18 > FACTOR_E18) {
                uint256 _totalShares = totalSharesIncludingProvisional();
                uint256 newShares = VaultMathLib.sharesToMint({
                    totalShares: _totalShares,
                    managementFeeAccrualBaseE18: managementFeesStorage.managementFeeAccrualBaseE18,
                    elapsedTime: block.timestamp - managementFeesStorage.managementFeesAccruedUntil
                });
                if (newShares != 0) {
                    // update `exchangeRateE36Last` to avoid management fees being treated as losses
                    _setExchangeRateE36Last(exchangeRateE36Last() * _totalShares / (_totalShares + newShares));
                    managementFeesStorage.managementFeesAccruedUntil = block.timestamp;
                    if (managementFeesStorage.managementFeeProtocolFractionE6 != 0) {
                        // slither-disable-next-line divide-before-multiply
                        uint256 protocolFeeShares =
                            newShares * managementFeesStorage.managementFeeProtocolFractionE6 / FACTOR_E6;
                        newShares -= protocolFeeShares;
                        emit Events.ManagementFeesDistributed(address(ANGSTROM_VAULT_FACTORY()), protocolFeeShares);
                        _mint(address(ANGSTROM_VAULT_FACTORY()), protocolFeeShares);
                    }
                    emit Events.ManagementFeesDistributed(managementFeesStorage.managementFeeRecipient, newShares);
                    _mint(managementFeesStorage.managementFeeRecipient, newShares);
                }
            } else {
                managementFeesStorage.managementFeesAccruedUntil = block.timestamp;
            }
        }
    }

    function _setManagementFee(
        uint256 newManagementFeeAccrualBaseE18
    ) internal {
        require(
            newManagementFeeAccrualBaseE18 >= FACTOR_E18
                && newManagementFeeAccrualBaseE18 <= MAX_MANAGEMENT_FEE_ACCRUAL_BASE_E18,
            Errors.InvalidManagementFee()
        );
        managementFeesStorage.managementFeeAccrualBaseE18 = newManagementFeeAccrualBaseE18;
        emit Events.ManagementFeeSet(newManagementFeeAccrualBaseE18);
    }

    function _setManagementFeeRecipient(
        address newManagementFeeRecipient
    ) internal {
        require(newManagementFeeRecipient != address(0), Errors.InvalidFeeRecipient());
        managementFeesStorage.managementFeeRecipient = newManagementFeeRecipient;
        emit Events.ManagementFeeRecipientSet(newManagementFeeRecipient);
    }

    function _setManagementFeeProtocolFractionE6(
        uint24 newManagementFeeProtocolFractionE6
    ) internal {
        emit Events.ManagementFeeProtocolFractionE6Set(newManagementFeeProtocolFractionE6);
        managementFeesStorage.managementFeeProtocolFractionE6 = newManagementFeeProtocolFractionE6;
    }

    /// @inheritdoc IManagementFees
    function managementFeeRecipient() public view returns (address) {
        return managementFeesStorage.managementFeeRecipient;
    }

    /// @inheritdoc IManagementFees
    function managementFeeAccrualBaseE18() public view returns (uint256) {
        return managementFeesStorage.managementFeeAccrualBaseE18;
    }

    /// @inheritdoc IManagementFees
    function managementFeeProtocolFractionE6() public view returns (uint24) {
        return managementFeesStorage.managementFeeProtocolFractionE6;
    }

    /// @inheritdoc IManagementFees
    function managementFeesAccruedUntil() public view returns (uint256) {
        return managementFeesStorage.managementFeesAccruedUntil;
    }
    /// @dev Included here so that we can call `_mint()` appropriately while maintaining the desired inheritance graph.
    function _mint(
        address,
        uint256
    ) internal virtual;
}
