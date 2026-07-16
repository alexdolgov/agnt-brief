// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ITransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {HemiProxyAdmin} from "src/proxy/HemiProxyAdmin.sol";
import {IMulticall3} from "src/interfaces/IMulticall3.sol";

/// @title UpgraderBase
/// @notice ProxyAdmin extension that snapshots proxy storage slots before and after an upgrade to ensure no values changed.
/// @dev Subclasses define which view calls to snapshot via `_calls()`.
abstract contract UpgraderBase is HemiProxyAdmin {
    /// @notice Thrown when a storage slot value differs between the pre- and post-upgrade snapshots.
    error StorageValueChanged();

    // Multicall3 is deployed at the same address on all major chains.
    address public constant MULTICALL3 = 0xcA11bde05977b3631167028862bE2a173976CA11;

    constructor(address initialOwner) HemiProxyAdmin(initialOwner) {}

    /// @notice Upgrades a proxy and verifies that all snapshotted storage slots are unchanged.
    /// @param proxy The proxy to upgrade.
    /// @param implementation The new implementation address.
    /// @param data Calldata for the post-upgrade initializer.
    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual override onlyOwner {
        bytes[] memory calls = _calls();
        bytes[] memory before = _aggregate(address(proxy), calls);
        super.upgradeAndCall(proxy, implementation, data);
        bytes[] memory after_ = _aggregate(address(proxy), calls);
        _verify(before, after_);
    }

    /// @dev Returns the list of encoded calldata to snapshot before and after the upgrade.
    function _calls() internal pure virtual returns (bytes[] memory);

    function _aggregate(address proxy_, bytes[] memory calls_) private returns (bytes[] memory _results) {
        uint256 _len = calls_.length;
        IMulticall3.Call[] memory _multicalls = new IMulticall3.Call[](_len);
        for (uint256 i; i < _len; ++i) {
            _multicalls[i] = IMulticall3.Call({target: proxy_, callData: calls_[i]});
        }
        (, _results) = IMulticall3(MULTICALL3).aggregate(_multicalls);
    }

    function _verify(bytes[] memory before_, bytes[] memory after_) private pure {
        for (uint256 i; i < before_.length; ++i) {
            if (keccak256(before_[i]) != keccak256(after_[i])) revert StorageValueChanged();
        }
    }
}
