//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./IQRemovalState.sol";

abstract contract IQRemovalContracts is Initializable, IQRemovalState {

    function __IQRemovalContracts_init() internal initializer {
        IQRemovalState.__IQRemovalState_init();
    }

    function setContracts(
        address _smolsAddress,
        address _schoolAddress
        )
    external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE)
    {
        smolsAddress = _smolsAddress;
        schoolAddress = _schoolAddress;
    }

    modifier contractsAreSet() {
        require(areContractsSet(), "Contracts aren't set");
        _;
    }

    function areContractsSet() public view returns(bool) {
        return address(smolsAddress) != address(0) &&
        address(schoolAddress) != address(0);
    }
}