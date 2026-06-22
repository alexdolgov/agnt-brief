// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "./HourglassTBTFactory.sol";
import {HourglassVedaLockDepositorV2} from "./depositors/implementations/HourglassVedaLockDepositorV2.sol";

contract HourglassLockingTBTFactoryV2 is HourglassLockingTBTFactory {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Set the veda teller address for a specific depositor
    /// @param depositor The depositor address
    /// @param teller The new teller address
    function setVedaTeller(address depositor, address teller) external onlyRole(REGISTRY_MANAGER) {
        HourglassVedaLockDepositorV2(depositor).setVedaTeller(teller);
    }

    /// @notice Set the veda accountant address for a specific depositor
    /// @param depositor The depositor address
    /// @param accountant The new accountant address
    function setVedaAccountant(address depositor, address accountant) external onlyRole(REGISTRY_MANAGER) {
        HourglassVedaLockDepositorV2(depositor).setVedaAccountant(accountant);
    }

    /// @notice Set the veda lens address for a specific depositor
    /// @param depositor The depositor address
    /// @param lens The new lens address
    function setVedaLens(address depositor, address lens) external onlyRole(REGISTRY_MANAGER) {
        HourglassVedaLockDepositorV2(depositor).setVedaLens(lens);
    }
}
