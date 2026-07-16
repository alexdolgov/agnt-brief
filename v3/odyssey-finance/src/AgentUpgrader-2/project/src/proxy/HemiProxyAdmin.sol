// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ITransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

/// @title HemiProxyAdmin
/// @notice Owner-gated admin contract for upgrading and transferring admin of Hemi transparent proxies.
contract HemiProxyAdmin is Ownable2Step {
    using Address for address;

    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    constructor(address initialOwner) Ownable(initialOwner) {}

    /// @notice Upgrades a proxy to a new implementation and optionally calls an initializer.
    /// @param proxy The transparent proxy to upgrade.
    /// @param implementation The new implementation address.
    /// @param data Calldata for the post-upgrade initializer call; pass empty bytes to skip.
    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }

    /// @notice Transfers the admin role of a proxy to a new address.
    /// @param proxy The proxy whose admin to change.
    /// @param newAdmin The address of the new admin.
    function changeProxyAdmin(address proxy, address newAdmin) external onlyOwner {
        proxy.functionCall(abi.encodeWithSignature("changeAdmin(address)", newAdmin));
    }
}
