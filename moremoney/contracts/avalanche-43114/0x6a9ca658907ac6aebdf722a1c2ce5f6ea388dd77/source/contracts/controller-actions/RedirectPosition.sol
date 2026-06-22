// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../Executor.sol";
import "../roles/DependsOnStableLending.sol";


contract RedirectPosition is Executor, DependsOnStableLending {
    address immutable target;
    uint256[] private positions;

    constructor(
        uint256[] memory _positions,
        address _roles
    ) RoleAware(_roles) {
        target = msg.sender;
        positions = _positions;
        _rolesPlayed.push(TRANCHE_TRANSFERER);
        _rolesPlayed.push(MINTER_BURNER);
    }

    function execute() external override {
        StableLending lending = stableLending();

        for (uint256 i; positions.length > i; i++) {
            lending.safeTransferFrom(lending.ownerOf(positions[i]), target, positions[i]);
        }

        delete positions;
    }
}