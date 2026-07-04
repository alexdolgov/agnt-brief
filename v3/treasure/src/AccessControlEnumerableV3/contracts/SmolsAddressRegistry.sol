// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

SmolsAddressRegistry.sol

Written by: mousedev.eth

*/

import "./utilities/AccessControlEnumerableV3.sol";


enum SmolAddressEnum {
    OLDSMOLSADDRESS,
    SMOLSADDRESS,

    SMOLSSTATEADDRESS,
    SCHOOLADDRESS,

    SMOLSTRAITSTORAGEADDRESS,

    SMOLSRENDERERADDRESS,
    TRANSFERBLOCKERADDRESS
}

contract SmolsAddressRegistry is AccessControlEnumerableV3 {

    mapping(SmolAddressEnum => address) SmolAddresses;

    function setAddress(SmolAddressEnum addressToSet, address _address) external requiresEitherRole(OWNER_ROLE, SMOLS_ADDRESS_REGISTRY_ADMIN_ROLE) {
        SmolAddresses[addressToSet] = _address;
    }

    function getAddress(SmolAddressEnum addressToGet) external view returns(address){
        return SmolAddresses[addressToGet];
    }
}