// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SolidStateDiamond } from "@solidstate/proxy/diamond/SolidStateDiamond.sol";

/// @notice The default implementation of the Diamond proxy.
/// @dev This contract is used as the default implementation of the Diamond proxy if one is not specified upon deployment.
contract DefaultDiamondProxy is SolidStateDiamond { }
