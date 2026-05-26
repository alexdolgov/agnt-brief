// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @title  UUPSUpgradeableWithDelay
/// @notice Must signal upgrade before upgrading implementation.
///         After signal upgrade, the time delay is enforced before protocol can upgrade implementation.
abstract contract UUPSUpgradeableWithDelay is UUPSUpgradeable {
    /// @dev Indicates that the upgrade has not been signaled
    error NotSignaled();

    /// @dev Indicates that the upgrade is still under delay
    error UnderDelay();

    /// @dev Emitted when a new implementation upgrade is signaled
    event SignalUpgrade(address, uint256);

    /// @dev Storage struct for UUPSUpgradeableWithDelay
    struct UUPSUpgradeableWithDelayStorage {
        uint256 upgradeDelay;
        mapping(address => uint256) implementationToUpgradeTime;
    }

    /// @dev The slot location: keccak256(bytes("YbEth.UUPSUpgradeableWithDelay")) - 1
    bytes32 private constant UUPS_UPGRADEABLE_WITH_DELAY_SLOG =
        0x341caa08618f46253ef0101538d5397d35d9e95cef19a79e10106ca660d8aa06;

    /// @dev Get the storage struct of UUPSUpgradeableWithDelay
    function _getUUPSUpgradeableWithDelayStorage() private pure returns (UUPSUpgradeableWithDelayStorage storage $) {
        assembly {
            $.slot := UUPS_UPGRADEABLE_WITH_DELAY_SLOG
        }
    }

    /// @notice Returns the upgrade time delay
    function upgradeDelay() public view returns (uint256) {
        return _getUUPSUpgradeableWithDelayStorage().upgradeDelay;
    }

    /// @notice Get the upgrade time for a given implementation
    /// @dev Returns 0 if implementation has not been signaled
    function implementationToUpgradeTime(address implementation) public view returns (uint256) {
        return _getUUPSUpgradeableWithDelayStorage().implementationToUpgradeTime[implementation];
    }

    /// @notice Initialize the UUPSUpgradeableWithDelay contract
    function __UUPSUpgradeableWithDelay_init(uint256 delay) internal onlyInitializing {
        UUPSUpgradeableWithDelayStorage storage $ = _getUUPSUpgradeableWithDelayStorage();
        $.upgradeDelay = delay;
        __UUPSUpgradeable_init();
    }

    /// @notice Signal the upgrade of the new implementation.
    function signalUpgrade(address implementation) public virtual {
        UUPSUpgradeableWithDelayStorage storage $ = _getUUPSUpgradeableWithDelayStorage();

        _authorizeUpgradeWithDelay(implementation);

        uint256 upgradeTime = block.timestamp + upgradeDelay();
        $.implementationToUpgradeTime[implementation] = upgradeTime;

        emit SignalUpgrade(implementation, upgradeTime);
    }

    function _authorizeUpgrade(address implementation) internal override {
        UUPSUpgradeableWithDelayStorage storage $ = _getUUPSUpgradeableWithDelayStorage();

        _authorizeUpgradeWithDelay(implementation);

        uint256 upgradeTime = $.implementationToUpgradeTime[implementation];
        if (upgradeTime == 0) revert NotSignaled();
        if (upgradeTime > block.timestamp) revert UnderDelay();

        /// Remove address from mapping such that a new signal is required
        delete $.implementationToUpgradeTime[implementation];
    }

    function _authorizeUpgradeWithDelay(address) internal virtual;
}
