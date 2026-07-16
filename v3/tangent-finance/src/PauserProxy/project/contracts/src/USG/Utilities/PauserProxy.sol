// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {LightOwnable} from "../Utilities/abstract/LightOwnable.sol";
import {IPauseSettings} from "../../interfaces/internals/USG/IPauseSettings.sol";

/// @title PauserProxy
/// @author Tangent Finance
/// @notice Batch pauser proxy for USG markets. Allows to pause / unpause ALL markets atomically.
contract PauserProxy is LightOwnable {
    struct PauseMultiParams {
        IPauseSettings market;
        uint64 isDepositPaused;
        uint64 isBorrowPaused;
        uint64 isLeveragePaused;
    }
    /// @notice Tangent Internal EOA allowing to pause all markets
    address public pauser;
    /// @notice Hypernative EOA allowing to pause all markets
    address public emergencyPauser;

    constructor(address _admin, address _pauser, address _emergencyPauser) {
        _transferOwnership(_admin);
        pauser = _pauser;
        emergencyPauser = _emergencyPauser;
    }

    event SetPauser(address _pauser);
    event SetEmergencyPauser(address _emergencyPauser);
    error NotAPauser();

    /* =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=
                        OWNER ACTIONS 
    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-= */

    /**
     *  @notice Pauses all 3 pausable features of the list of market provided
     *  @dev    Callable by the emergencyPauser, pauser and admin
     *  @param  markets Array of markets to fully pause
     */

    function pauseAll(IPauseSettings[] calldata markets) external {
        require(msg.sender == pauser || msg.sender == emergencyPauser || msg.sender == owner, NotAPauser());
        uint256 marketsLen = markets.length;
        for (uint256 i = 0; i < marketsLen; i++) {
            IPauseSettings market = markets[i];
            market.setPause(IPauseSettings.PauseEnum.DepositPaused, 1);
            market.setPause(IPauseSettings.PauseEnum.BorrowPaused, 1);
            market.setPause(IPauseSettings.PauseEnum.LeveragePaused, 1);
        }
    }

    /**
     *  @notice Updates pausing parameters atomically for several markets in one tx.
     *  @dev    Callable only by the owner. We don't want unpause to be exposed to an EOA.
     *  @param  p Array of markets with new pausing configuration to set
     */

    function manageMultiPausing(PauseMultiParams[] calldata p) external onlyOwner {
        uint256 pLen = p.length;
        for (uint256 i = 0; i < pLen; i++) {
            IPauseSettings market = p[i].market;
            market.setPause(IPauseSettings.PauseEnum.DepositPaused, p[i].isDepositPaused);
            market.setPause(IPauseSettings.PauseEnum.BorrowPaused, p[i].isBorrowPaused);
            market.setPause(IPauseSettings.PauseEnum.LeveragePaused, p[i].isLeveragePaused);
        }
    }

    /**
     *  @notice Updates the pauser address
     *  @dev    Callable only by the admin.
     *  @param  _pauser  New pausing executor
     */
    function setPauser(address _pauser) external onlyOwner {
        pauser = _pauser;
        emit SetPauser(_pauser);
    }

    /**
     *  @notice Updates the emergency pauser address
     *  @dev    Callable only by the admin.
     *  @param  _emergencyPauser  New emergency pauser
     */
    function setEmergencyPauser(address _emergencyPauser) external onlyOwner {
        emergencyPauser = _emergencyPauser;
        emit SetEmergencyPauser(_emergencyPauser);
    }
}
