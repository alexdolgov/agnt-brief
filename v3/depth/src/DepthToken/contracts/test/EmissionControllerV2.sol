// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { EmissionController } from "../EmissionController.sol";

contract EmissionControllerV2 is EmissionController {
    function version() external pure returns (uint256) {
        return 2;
    }
}
