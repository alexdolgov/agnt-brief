// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "./HourglassVedaLockDepositor.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ITellerWithMultiAssetSupport} from "@interfaces/veda/ITellerWithMultiAssetSupport.sol";
import {IArcticArchitectureLens} from "@interfaces/veda/IArcticArchitectureLens.sol";

contract HourglassVedaLockDepositorV2 is HourglassVedaLockDepositor {
    using SafeERC20 for IERC20;
    using TransientPrimitivesLib for taddress;
    using TransientPrimitivesLib for tuint256;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function vedaTeller() external view returns (address) {
        return teller;
    }

    function vedaAccountant() external view returns (address) {
        return accountant;
    }

    function vedaLens() external view returns (address) {
        return lens;
    }

    /// @notice Set the veda teller address
    /// @dev We delegate access control to the factory
    /// @param _vedaTeller The new teller address
    function setVedaTeller(address _vedaTeller) external onlyFactory {
        teller = _vedaTeller;
    }

    /// @notice Set the veda accountant address
    /// @dev We delegate access control to the factory
    /// @param _vedaAccountant The new accountant address
    function setVedaAccountant(address _vedaAccountant) external onlyFactory {
        accountant = _vedaAccountant;
    }

    /// @notice Set the veda lens address
    /// @dev We delegate access control to the factory
    /// @param _vedaLens The new lens address
    function setVedaLens(address _vedaLens) external onlyFactory {
        lens = _vedaLens;
    }
}
