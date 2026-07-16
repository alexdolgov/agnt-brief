// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
import '../utils/Constants.sol';

/**
 * @title System Roles
 * @notice Defines roles and their configurations for the ZeUSD protocol access control system
 * @dev Uses constants from main Constants library to maintain consistent role identifiers
 * @author ZeUSD Protocol Team
 * @custom:security-contact tech@zoth.io
 */
library SystemRoles {
    // Core Administrative Roles
    uint64 public constant ADMIN_ROLE = 0;

    // Core System Roles' Admins
    uint64 public constant GATEKEEPER_ADMIN_ROLE = 1;
    uint64 public constant ORCHESTRATOR_ADMIN_ROLE = 3;
    uint64 public constant GUARDIAN_ADMIN_ROLE = 5;
    uint64 public constant TREASURY_ADMIN_ROLE = 7;
    uint64 public constant ROUTER_ADMIN_ROLE = 9;

    //Core System Roles
    uint64 public constant GATEKEEPER_ROLE = 2;
    uint64 public constant ORCHESTRATOR_ROLE = 4;
    uint64 public constant GUARDIAN_ROLE = 6;
    uint64 public constant TREASURY_ROLE = 8;
    uint64 public constant ROUTER_ROLE = 10;
    uint64 public constant WHITELISTER_ROLE = 11;
}
