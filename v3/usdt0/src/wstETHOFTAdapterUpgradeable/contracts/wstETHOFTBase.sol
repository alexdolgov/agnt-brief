// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { AccessControlEnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import { PausableUntil } from "./utils/PausableUntil.sol";

// TODO confirm the following understanding of gate seals:
    // 1. Deploy gate seal contract to ethereum using this repo: https://github.com/lidofinance/gate-seals
    // 2. Configure gate seal such that this contract is one of its sealables (ensure other configs are set too)
    // 3. Confirm if any changes are needed in this contract (e.g. adding a function to reset the gate seal capability)

abstract contract wstETHOFTBase is PausableUntil, AccessControlEnumerableUpgradeable {
    event InitializationComplete(address indexed delegate, address[] pausers, address resumer);
    event PauserAdded(address indexed pauser);
    event PauserRemoved(address indexed pauser);
    event ResumerAdded(address indexed resumer);
    event ResumerRemoved(address indexed resumer);

    /// @notice ACL Role for pausing deposits and withdrawals
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// @notice ACL Role for resuming deposits and withdrawals
    bytes32 public constant RESUMER_ROLE = keccak256("RESUMER_ROLE");

    /// @dev Initialize shared roles and pause state
    /// @dev NB! It's initialized in paused state by default and should be resumed explicitly to start
    function _initializeBase(address delegate, address[] calldata pausers, address resumer) internal {
        __AccessControlEnumerable_init();
        _pauseFor(PAUSE_INFINITELY);

        _grantRole(DEFAULT_ADMIN_ROLE, delegate);

        if (pausers.length > 0) {
            for (uint256 i = 0; i < pausers.length; i++) {
                _grantRole(PAUSER_ROLE, pausers[i]);
                emit PauserAdded(pausers[i]);
            }
        }

        _grantRole(RESUMER_ROLE, resumer);
        emit ResumerAdded(resumer);
    }

    function getPausers() external view returns (address[] memory) {
        uint256 count = getRoleMemberCount(PAUSER_ROLE);
        address[] memory pausers = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            pausers[i] = getRoleMember(PAUSER_ROLE, i);
        }
        return pausers;
    }

    function addPauser(address pauser) external {
        grantRole(PAUSER_ROLE, pauser);
        emit PauserAdded(pauser);
    }

    function removePauser(address pauser) external {
        revokeRole(PAUSER_ROLE, pauser);
        emit PauserRemoved(pauser);
    }

    function getResumers() external view returns (address[] memory) {
        uint256 count = getRoleMemberCount(RESUMER_ROLE);
        address[] memory resumers = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            resumers[i] = getRoleMember(RESUMER_ROLE, i);
        }
        return resumers;
    }

    function addResumer(address resumer) external {
        grantRole(RESUMER_ROLE, resumer);
        emit ResumerAdded(resumer);
    }

    function removeResumer(address resumer) external {
        revokeRole(RESUMER_ROLE, resumer);
        emit ResumerRemoved(resumer);
    }

    function pauseFor(uint256 duration) external onlyRole(PAUSER_ROLE) {
        _pauseFor(duration);
    }

    function pauseUntil(uint256 pauseUntilInclusive) external onlyRole(PAUSER_ROLE) {
        _pauseUntil(pauseUntilInclusive);
    }

    function resume() external onlyRole(RESUMER_ROLE) {
        _resume();
    }
}
