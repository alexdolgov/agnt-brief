// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {ICustomCondition} from "../interfaces/ICustomCondition.sol";
import {IRole} from "../interfaces/IRole.sol";
import {IMetavaultsRegistry} from "../interfaces/IMetavaultsRegistry.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";

contract BridgeGatekeeper is ICustomCondition, Initializable, AccessManagedUpgradeable {
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
        require(data.length >= location + 192, "Calldata too short");

        //Extract parameters from payload
        address assetIn = decodeAddress(bytes32(data[location:location + 32]));
        uint256 amount = uint256(bytes32(data[location + 32:location + 64]));
        uint32 dstChain = uint32(uint256(bytes32(data[location + 64:location + 96])));
        address remoteAddress = decodeAddress(bytes32(data[location + 96:location + 128]));
        address assetOut = decodeAddress(bytes32(data[location + 128:location + 160]));
        address bridge = to;
        address metavault = IRole(msg.sender).avatar();

        // Check the destination chain is registered.
        if (!IMetavaultsRegistry(metavaultRegistry).isChainRegistered(metavault, dstChain)) {
            return (false, keccak256(abi.encodePacked(metavault, dstChain)));
        }

        //Check the remote Address is registered for the destination chain
        if (
            IMetavaultsRegistry(metavaultRegistry)
                .chainConfig(metavault, dstChain)
                .remoteMetavaultAddress != remoteAddress
        ) {
            return (false, keccak256(abi.encodePacked(metavault, dstChain, remoteAddress)));
        }

        // Check the bridge path is allowed
        bool isBridgePathAllowed = IMetavaultsRegistry(metavaultRegistry).isBridgePathAllowed(
            metavault,
            assetIn,
            assetOut,
            dstChain,
            bridge
        );
        if (!isBridgePathAllowed) {
            return (
                false,
                keccak256(abi.encodePacked(metavault, assetIn, assetOut, dstChain, bridge))
            );
        }
        return (true, 0);
    }

    function decodeAddress(bytes32 encoded) internal pure returns (address) {
        return address(uint160(uint256(encoded)));
    }
}
