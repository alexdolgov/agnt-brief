// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { IAngstromVaultFactory } from "../interfaces/IAngstromVaultFactory.sol";
import { IPerformanceFees } from "../interfaces/IPerformanceFees.sol";
import { VaultMathLib } from "../libraries/VaultMathLib.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";
import { FACTOR_E6, FACTOR_E36 } from "../libraries/Constants.sol";

/// @notice Vault module which implements performance and management fees.
/// @notice Earned fees are minted as new shares, distributed to the `performanceFeeRecipient`, with a
/// proportion -- `performanceFeeProtocolFractionE6` -- of these fees going to the protocol.
/// @dev Performance fees are "provisionally-minted" within epochs of `epochLengthSeconds` -- within an epoch, these
/// shares may be confiscated to cover up to `performanceFeeProtocolFractionE6` of losses, and if they are not enough to
/// cover this fraction of losses, then `performanceFeeDebt` will be incremented and must be paid off prior to minting
/// of provisional shares. On epoch transition, both `performanceFeeDebt` and `provisionalShares` are cleared, with
/// `provisionalShares` being minted / realized. This system should prevent performance fees from being improperly
/// minted when intra-epoch gains fail to be maintained or merely represent a partial recovery while still below the
/// baseline of the epoch.
/// @dev This contract assumes `_accruePerformanceFees()` is called before any other operation which might modify the
/// total number of shares. Failure to do so may result in behavior that is not as designed.
abstract contract PerformanceFees is IPerformanceFees {
    using SafeCastLib for *;

    struct PerformanceFeesStorage {
        // forge-lint: disable-next-line(mixed-case-variable)
        IAngstromVaultFactory ANGSTROM_VAULT_FACTORY;
        address performanceFeeRecipient;
        uint256 performanceFeeE6;
        uint24 performanceFeeProtocolFractionE6;
        uint256 epochLengthSeconds;
        uint256 epochEndTimestamp;
        uint256 exchangeRateE36Last;
        uint256 provisionalShares;
        uint256 performanceFeeDebt;
    }

    PerformanceFeesStorage private performanceFeesStorage;

    function _initPerformanceFees(
        address _factory,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        address initialPerformanceFeeRecipient
    ) internal {
        performanceFeesStorage.ANGSTROM_VAULT_FACTORY = IAngstromVaultFactory(_factory);
        // set the first exchange rate checkpoint at baseline and start a new fee epoch
        _setExchangeRateE36Last(FACTOR_E36);
        _setEpochLength(initialEpochLength);
        _bumpEpoch();
        _setPerformanceFee(initialPerformanceFeeE6);
        _setPerformanceFeeRecipient(initialPerformanceFeeRecipient);
        _setPerformanceFeeProtocolFractionE6(IAngstromVaultFactory(_factory).defaultPerformanceFeeProtocolFractionE6());
    }

    modifier onlyFactory() {
        _checkFactory();
        _;
    }

    function _checkFactory() internal {
        require(msg.sender == address(ANGSTROM_VAULT_FACTORY()), Errors.OnlyFactory());
    }

    /// @dev External setPerformanceFeeProtocolFractionE6 and setManagementFeeProtocolFractionE6
    // are defined in VaultExtension to reduce Vault bytecode size.

    /// @dev This function is included here to allow this module to invoke `totalSupply()`, while maintaining the
    /// desired overall inheritance structure for the Vault.
    function totalSupply() public view virtual returns (uint256);

    /// @dev This function is included here to allow this module to invoke `totalSharesIncludingProvisional()`, while
    /// maintaining the desired overall inheritance structure for the Vault.
    function totalSharesIncludingProvisional() public view virtual returns (uint256);

    /// @dev This function is included here to allow this module to invoke `convertToAssets()`, while maintaining the
    /// desired overall inheritance structure for the Vault.
    function convertToAssets(
        uint256 shares
    ) public view virtual returns (uint256);

    // forge-lint: disable-next-line(mixed-case-function)
    function ANGSTROM_VAULT_FACTORY() public view virtual returns (IAngstromVaultFactory);

    function exchangeRateE36Last() public view virtual returns (uint256);

    function _setExchangeRateE36Last(
        uint256 newValue
    ) internal virtual;

    /// @notice Moves into the next epoch, minting `provisionalShares` (if positive) to the `performanceFeeRecipient`
    /// and resetting it to zero.
    /// @dev Attempts to have the new epoch end `epochLengthSeconds` after the previous `epochEndTimestamp`.
    /// However, if this would result in the new epoch already having ended, instead sets the `epochEndTimestamp` to
    /// `epochLengthSeconds` after the present time.
    function _bumpEpoch() internal {
        assert(performanceFeesStorage.epochEndTimestamp <= block.timestamp);
        if (performanceFeesStorage.epochEndTimestamp + performanceFeesStorage.epochLengthSeconds <= block.timestamp) {
            performanceFeesStorage.epochEndTimestamp = block.timestamp + performanceFeesStorage.epochLengthSeconds;
        } else {
            performanceFeesStorage.epochEndTimestamp += performanceFeesStorage.epochLengthSeconds;
        }
        emit Events.NewEpochStarted(performanceFeesStorage.epochEndTimestamp);

        uint256 provisionalShareCount = performanceFeesStorage.provisionalShares;
        uint256 _performanceFeeDebt = performanceFeesStorage.performanceFeeDebt;
        if (_performanceFeeDebt != 0) {
            performanceFeesStorage.performanceFeeDebt = 0;
            emit Events.PerformanceFeeDebtModified(-_performanceFeeDebt.toInt256());
        }
        if (provisionalShareCount != 0) {
            // reset storage first
            performanceFeesStorage.provisionalShares = 0;
            emit Events.ProvisionalSharesModified(-provisionalShareCount.toInt256());
            if (performanceFeesStorage.performanceFeeProtocolFractionE6 != 0) {
                uint256 protocolFeeShares =
                    provisionalShareCount * performanceFeesStorage.performanceFeeProtocolFractionE6 / FACTOR_E6;
                provisionalShareCount -= protocolFeeShares;
                emit Events.PerformanceFeesDistributed(address(ANGSTROM_VAULT_FACTORY()), protocolFeeShares);
                _mint(address(ANGSTROM_VAULT_FACTORY()), protocolFeeShares);
            }
            emit Events.PerformanceFeesDistributed(
                performanceFeesStorage.performanceFeeRecipient, provisionalShareCount
            );
            _mint(performanceFeesStorage.performanceFeeRecipient, provisionalShareCount);
        }
    }

    /// @dev Accrues any performance fees since the last invocation of this function.
    /// @dev On crossing an epoch, `provisionalShares` will be minted to the `performanceFeeRecipient` and reset to zero
    /// before subsequent operations.
    /// @dev This function MUST be called before any operation which could otherwise modify the total supply of shares,
    /// since the calculation in `_diffsFromExchangeRateChange` assumes a fixed number of existing shares.
    function _accruePerformanceFees() internal {
        if (performanceFeesStorage.epochEndTimestamp <= block.timestamp) {
            _bumpEpoch();
        }
        // account for virtual share
        uint256 totalShares = totalSupply() + 1;
        uint256 provisionalShareCount = performanceFeesStorage.provisionalShares;
        // `convertToAssets` ignores fees, which is what we want for calculating fees
        uint256 currentExchangeRateE36 = convertToAssets(FACTOR_E36);
        (int256 changeInProvisionalShares, int256 changeInPerformanceFeeDebt, uint256 finalExchangeRateE36) = VaultMathLib.diffsFromExchangeRateChange(
            exchangeRateE36Last(),
            currentExchangeRateE36,
            totalShares,
            provisionalShareCount,
            performanceFeesStorage.performanceFeeDebt,
            performanceFeesStorage.performanceFeeE6
        );
        _setExchangeRateE36Last(finalExchangeRateE36);
        // record the change in provisional shares, if any
        if (changeInProvisionalShares != 0) {
            emit Events.ProvisionalSharesModified(changeInProvisionalShares);
            if (changeInProvisionalShares > 0) {
                // forge-lint: disable-next-line(unsafe-typecast)
                performanceFeesStorage.provisionalShares += uint256(changeInProvisionalShares);
            } else {
                // forge-lint: disable-next-line(unsafe-typecast)
                performanceFeesStorage.provisionalShares -= uint256(-changeInProvisionalShares);
            }
        }
        // record the change in performance fee debt, if any
        if (changeInPerformanceFeeDebt != 0) {
            emit Events.PerformanceFeeDebtModified(changeInPerformanceFeeDebt);
            if (changeInPerformanceFeeDebt > 0) {
                // forge-lint: disable-next-line(unsafe-typecast)
                performanceFeesStorage.performanceFeeDebt += uint256(changeInPerformanceFeeDebt);
            } else {
                // forge-lint: disable-next-line(unsafe-typecast)
                performanceFeesStorage.performanceFeeDebt -= uint256(-changeInPerformanceFeeDebt);
            }
        }
    }

    function _setEpochLength(
        uint256 newEpochLengthSeconds
    ) internal {
        require(newEpochLengthSeconds != 0, Errors.InvalidEpochLength());
        performanceFeesStorage.epochLengthSeconds = newEpochLengthSeconds;
        emit Events.EpochLengthSet(newEpochLengthSeconds);
    }

    function _setPerformanceFee(
        uint256 newPerformanceFeeE6
    ) internal {
        require(newPerformanceFeeE6 <= FACTOR_E6, Errors.InvalidPerformanceFee());
        performanceFeesStorage.performanceFeeE6 = newPerformanceFeeE6;
        emit Events.PerformanceFeeSet(newPerformanceFeeE6);
    }

    function _setPerformanceFeeRecipient(
        address newPerformanceFeeRecipient
    ) internal {
        require(newPerformanceFeeRecipient != address(0), Errors.InvalidFeeRecipient());
        performanceFeesStorage.performanceFeeRecipient = newPerformanceFeeRecipient;
        emit Events.PerformanceFeeRecipientSet(newPerformanceFeeRecipient);
    }

    function _setPerformanceFeeProtocolFractionE6(
        uint24 newPerformanceFeeProtocolFractionE6
    ) internal {
        emit Events.PerformanceFeeProtocolFractionE6Set(newPerformanceFeeProtocolFractionE6);
        performanceFeesStorage.performanceFeeProtocolFractionE6 = newPerformanceFeeProtocolFractionE6;
    }

    /// @inheritdoc IPerformanceFees
    function performanceFeeRecipient() public view returns (address) {
        return performanceFeesStorage.performanceFeeRecipient;
    }

    /// @inheritdoc IPerformanceFees
    function performanceFeeE6() public view returns (uint256) {
        return performanceFeesStorage.performanceFeeE6;
    }

    /// @inheritdoc IPerformanceFees
    function performanceFeeProtocolFractionE6() public view returns (uint24) {
        return performanceFeesStorage.performanceFeeProtocolFractionE6;
    }

    /// @inheritdoc IPerformanceFees
    function epochLengthSeconds() public view returns (uint256) {
        return performanceFeesStorage.epochLengthSeconds;
    }

    /// @inheritdoc IPerformanceFees
    function epochEndTimestamp() public view returns (uint256) {
        return performanceFeesStorage.epochEndTimestamp;
    }

    /// @inheritdoc IPerformanceFees
    function provisionalShares() public view returns (uint256) {
        return performanceFeesStorage.provisionalShares;
    }

    /// @inheritdoc IPerformanceFees
    function performanceFeeDebt() public view returns (uint256) {
        return performanceFeesStorage.performanceFeeDebt;
    }

    function _vaultFactory() internal view returns (IAngstromVaultFactory) {
        return performanceFeesStorage.ANGSTROM_VAULT_FACTORY;
    }

    function _provisionalShares() internal view returns (uint256) {
        return performanceFeesStorage.provisionalShares;
    }

    function _exchangeRateE36LastValue() internal view returns (uint256) {
        return performanceFeesStorage.exchangeRateE36Last;
    }

    function _setExchangeRateE36LastValue(
        uint256 newValue
    ) internal {
        performanceFeesStorage.exchangeRateE36Last = newValue;
    }

    function _setProvisionalShares(
        uint256 newValue
    ) internal {
        performanceFeesStorage.provisionalShares = newValue;
    }

    function _setPerformanceFeeDebt(
        uint256 newValue
    ) internal {
        performanceFeesStorage.performanceFeeDebt = newValue;
    }

    /// @dev Included here so that we can call `_mint()` appropriately while maintaining the desired inheritance graph.
    function _mint(
        address,
        uint256
    ) internal virtual;
}
