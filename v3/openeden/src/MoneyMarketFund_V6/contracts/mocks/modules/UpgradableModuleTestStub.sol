// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {AccessControlEnumerableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import {BaseUpgradeableModule} from "../../FT/infrastructure/modules/BaseUpgradeableModule.sol";

contract UpgradeableModuleTestStub is BaseUpgradeableModule {
    bytes32 public constant MODULE_ID = keccak256("TEST_MODULE");

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override {}

    function getVersion() public pure virtual override returns (uint8) {
        return 1;
    }
}
