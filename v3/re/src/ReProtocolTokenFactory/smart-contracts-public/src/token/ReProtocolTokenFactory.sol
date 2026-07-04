// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Create2} from "@openzeppelin/contracts/utils/Create2.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {ReProtocolToken} from "./ReProtocolToken.sol";

/// @custom:security-contact security@re.xyz
/// @notice Owner-gated CREATE2 factory for deploying ReProtocolToken UUPS proxies.
///         Each deployed instance is an independent ERC1967 proxy sharing the same
///         pinned implementation. Per-instance upgradeability is preserved via
///         each proxy's own UPGRADER_ROLE.
contract ReProtocolTokenFactory is Ownable2Step {
    address public immutable implementation;

    event ReProtocolTokenDeployed(
        address indexed proxy,
        address indexed recipient,
        address indexed defaultAdmin,
        address upgrader,
        bytes32 salt
    );

    error ZeroAddress();

    constructor(address impl, address initialOwner) Ownable(initialOwner) {
        if (impl == address(0)) revert ZeroAddress();
        implementation = impl;
    }

    /// @notice Deploy a new ReProtocolToken proxy via CREATE2 and call initialize().
    /// @param salt Caller-supplied CREATE2 salt; pick to mirror addresses across chains.
    /// @param recipient Receives the 1B RE mint at initialize().
    /// @param defaultAdmin Granted DEFAULT_ADMIN_ROLE on the new proxy.
    /// @param upgrader Granted UPGRADER_ROLE on the new proxy.
    /// @return proxy The deployed proxy address.
    function deploy(bytes32 salt, address recipient, address defaultAdmin, address upgrader)
        external
        onlyOwner
        returns (address proxy)
    {
        if (recipient == address(0) || defaultAdmin == address(0) || upgrader == address(0)) {
            revert ZeroAddress();
        }
        proxy = Create2.deploy(0, salt, _proxyCreationCode(recipient, defaultAdmin, upgrader));
        emit ReProtocolTokenDeployed(proxy, recipient, defaultAdmin, upgrader, salt);
    }

    /// @notice Predict the CREATE2 address a deploy() call would produce.
    function predictAddress(
        bytes32 salt,
        address recipient,
        address defaultAdmin,
        address upgrader
    ) external view returns (address) {
        return Create2.computeAddress(
            salt, keccak256(_proxyCreationCode(recipient, defaultAdmin, upgrader)), address(this)
        );
    }

    function _proxyCreationCode(address recipient, address defaultAdmin, address upgrader)
        internal
        view
        returns (bytes memory)
    {
        bytes memory initData =
            abi.encodeCall(ReProtocolToken.initialize, (recipient, defaultAdmin, upgrader));
        return abi.encodePacked(type(ERC1967Proxy).creationCode, abi.encode(implementation, initData));
    }
}
