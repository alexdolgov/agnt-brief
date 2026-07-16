// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {AuthorizationModule} from "../../FT/infrastructure/modules/AuthorizationModule.sol";

contract AuthorizationModuleV2 is AuthorizationModule {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyRole(ROLE_MODULE_OWNER) {}

    function getVersion() public pure virtual override returns (uint8) {
        return 2;
    }
}
