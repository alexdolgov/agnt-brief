// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ProxyAdmin as OZProxyAdmin} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title ProxyAdmin
 * @notice VaultEdge wrapper around OpenZeppelin's ProxyAdmin with custom owner
 * @dev Required for Hardhat to generate artifact for Ignition deployments
 *      OZ v4.x ProxyAdmin has no constructor args - owner is deployer
 *      We add initialOwner param and transfer ownership in constructor
 */
contract ProxyAdmin is OZProxyAdmin {
    constructor(address initialOwner) {
        // OZ v4.x ProxyAdmin sets deployer as owner
        // Transfer to desired owner if different
        if (initialOwner != msg.sender) {
            _transferOwnership(initialOwner);
        }
    }
}
