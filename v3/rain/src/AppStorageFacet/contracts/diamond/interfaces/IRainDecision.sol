// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";
import { IERC5267 } from "@openzeppelin/contracts/interfaces/IERC5267.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

import { IDiamondCut } from "../dependencies/diamond/interfaces/IDiamondCut.sol";
import { IDiamondLoupe } from "../dependencies/diamond/interfaces/IDiamondLoupe.sol";
import { IPausable } from "../dependencies/openzeppelin/interfaces/IPausable.sol";
import { IReentrancyGuard } from "../dependencies/openzeppelin/interfaces/IReentrancyGuard.sol";

import { Errors } from "../shared/Errors.sol";
import { Types } from "../shared/Types.sol";

import { IAppStorage } from "./IAppStorage.sol";
import { IHelper } from "./IHelper.sol";
import { IMarketTermination } from "./IMarketTermination.sol";
import { IMarketThreshold } from "./IMarketThreshold.sol";
import { IQueue } from "./IQueue.sol";

/**
 * @title IRainDecision
 * @author Rain Team
 * @notice Primary external interface for {RainDecisionDiamond}.
 * @dev Aggregates user-facing functionality exposed by multiple market and utility facets, serving as the canonical
 * entry point for integrators.
 */
interface IRainDecision is
    IAccessControl,
    IERC5267,
    IERC165,
    IDiamondCut,
    IDiamondLoupe,
    IPausable,
    IReentrancyGuard,
    Errors,
    Types,
    IAppStorage,
    IHelper,
    IMarketTermination,
    IMarketThreshold,
    IQueue
{}
