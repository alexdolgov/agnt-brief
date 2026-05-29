// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {ICustomCondition} from "../interfaces/ICustomCondition.sol";
import {IRole} from "../interfaces/IRole.sol";
import {IMetavaultsRegistry} from "../interfaces/IMetavaultsRegistry.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";

contract PrincipalTokenGatekeeper is ICustomCondition, Initializable, AccessManagedUpgradeable {
    address public metavaultRegistry;

    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAuthority, address _metavaultRegistry) external initializer {
        __AccessManaged_init(initialAuthority);
        metavaultRegistry = _metavaultRegistry;
    }

    function setMetavaultRegistry(address _metavaultRegistry) external restricted {
        metavaultRegistry = _metavaultRegistry;
    }

    function check(
        address to,
        uint256 value,
        bytes calldata data,
        IRole.Operation operation,
        uint256 location,
        uint256 size,
        bytes12 extra
    ) external view returns (bool success, bytes32 reason) {
        address ptAddress = decodeAddress(bytes32(data[location:location + size]));
        address metavault = IRole(msg.sender).avatar();
        bool isRegistered = IMetavaultsRegistry(metavaultRegistry).isPTRegistered(
            metavault,
            ptAddress
        );
        if (!isRegistered) {
            return (false, bytes32(abi.encodePacked(ptAddress, bytes12(0))));
        }
        return (true, 0);
    }

    function decodeAddress(bytes32 encoded) internal pure returns (address) {
        return address(uint160(uint256(encoded)));
    }
}
