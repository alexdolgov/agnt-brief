// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

pragma solidity ^0.8.10;

import "src/interfaces/IRateProvider.sol";
import "src/common/Viewer.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Wrapped jAURA Rate Provider
 * @notice Returns the value of jAURA in terms of AURA
 */
contract jAuraRateProvider is IRateProvider, Ownable {
    Viewer public viewer;

    constructor(Viewer _viewer) {
        viewer = _viewer;
    }

    /**
     * @return the value of jAURA in terms of AURA
     */
    function getRate() external view override returns (uint256) {
        (uint256 auraRate,) = viewer.getAuraRedemption(1e18, true);
        return auraRate;
    }

    /**
     * @notice update the viewer
     */
    function updateViewer(Viewer _viewer) external onlyOwner {
        viewer = _viewer;
    }
}
