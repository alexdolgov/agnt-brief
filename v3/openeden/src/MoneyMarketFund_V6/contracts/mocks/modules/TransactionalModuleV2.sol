// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {TransactionalModule} from "../../FT/infrastructure/modules/TransactionalModule.sol";

contract TransactionalModuleV2 is TransactionalModule {
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
