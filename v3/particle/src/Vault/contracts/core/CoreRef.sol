// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ICore} from "../core/ICore.sol";
import {ICoreRef} from "./ICoreRef.sol";

/// @title A Reference to Core
/// @notice defines some modifiers and utilities around interacting with Core
abstract contract CoreRef is ICoreRef {
    ICore private _core;

    // solhint-disable-next-line var-name-mixedcase
    bool public EMERGENCY;

    /// @notice CoreRef constructor
    /// @param coreAddress Few Core to reference
    constructor(address coreAddress) {
        _core = ICore(coreAddress);
    }

    modifier onlyMinter() {
        require(_core.isMinter(msg.sender), "CoreRef: Caller is not a minter");
        _;
    }

    modifier onlyBurner() {
        require(_core.isBurner(msg.sender), "CoreRef: Caller is not a burner");
        _;
    }

    modifier onlyGovernor() {
        require(_core.isGovernor(msg.sender), "CoreRef: Caller is not a governor");
        _;
    }

    modifier onlyGuardianOrGovernor() {
        require(
            _core.isGovernor(msg.sender) || _core.isGuardian(msg.sender),
            "CoreRef: Caller is not a guardian or governor"
        );
        _;
    }

    /// @notice set new Core reference address
    /// @param coreAddress the new core address
    function setCore(address coreAddress) external override onlyGovernor {
        _core = ICore(coreAddress);
        emit CoreUpdate(coreAddress);
    }

    function emergency() external view override returns (bool) {
        return EMERGENCY;
    }

    function startEmergency() external override onlyGuardianOrGovernor {
        EMERGENCY = true;
        emit EmergencyUpdate(true);
    }

    function stopEmergency() external override onlyGuardianOrGovernor {
        EMERGENCY = false;
        emit EmergencyUpdate(false);
    }

    /// @notice address of the Core contract referenced
    /// @return ICore implementation address
    function core() public view override returns (ICore) {
        return _core;
    }
}
