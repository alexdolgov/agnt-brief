pragma solidity ^0.8.20;

library LibRegistryStorage {
    event RegistryChange(address indexed previousRegistry, address indexed newRegistry);

    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.storage.registry")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant REGISTRY_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.storage.registry")) - 1)) & ~bytes32(uint256(0xff));

    struct RegistryStorage {
        // @dev: address of the registry
        address registry;
    }

    function registryStorage() internal pure returns (RegistryStorage storage rs) {
        bytes32 position = REGISTRY_STORAGE_POSITION;
        assembly {
            rs.slot := position
        }
    }

    function setRegistry(address _registry) internal {
        emit RegistryChange(registryStorage().registry, _registry);
        registryStorage().registry = _registry;
    }

    function getRegistry() internal view returns (address) {
        return registryStorage().registry;
    }
}
