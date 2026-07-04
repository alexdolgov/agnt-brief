// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ITransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract HemiProxyAdmin is Ownable2Step {
    using Address for address;

    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    constructor(address initialOwner) Ownable(initialOwner) {}

    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }

    function changeProxyAdmin(address proxy, address newAdmin) external onlyOwner {
        proxy.functionCall(abi.encodeWithSignature("changeAdmin(address)", newAdmin));
    }
}
