// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

SmolsAddressRegistryConsumer.sol

Written by: mousedev.eth

*/

import "./utilities/AccessControlEnumerableV3.sol";
import "./interfaces/ISmolsAddressRegistry.sol";


contract SmolsAddressRegistryConsumer is AccessControlEnumerableV3 {

    ISmolsAddressRegistry smolsAddressRegistry;

    
    /// @dev Sets the smols address registry address.
    /// @param _smolsAddressRegistry The address of the registry.
    function setSmolsAddressRegistry(address _smolsAddressRegistry) external requiresEitherRole(OWNER_ROLE, SMOLS_ADDRESS_REGISTRY_ADMIN_ROLE) {
        smolsAddressRegistry = ISmolsAddressRegistry(_smolsAddressRegistry);
    }

}