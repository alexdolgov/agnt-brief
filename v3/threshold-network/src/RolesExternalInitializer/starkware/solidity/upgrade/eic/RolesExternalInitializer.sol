/*
  Copyright 2019-2024 StarkWare Industries Ltd.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  https://www.starkware.co/open-source-license/

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions
  and limitations under the License.
*/
// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.8.24;

import "starkware/solidity/interfaces/ExternalInitializer.sol";
import "starkware/solidity/libraries/RolesLib.sol";
import "starkware/solidity/libraries/AccessControl.sol";

/*
  This contract is an external initializing contract that
  Initialize root roles.
*/
contract RolesExternalInitializer is ExternalInitializer {
    function initialize(bytes calldata data) external virtual override {
        require(data.length == 64, "INVALID_INIT_DATA_LENGTH_64");

        (address govAdmin, address securityAdmin) = abi.decode(data, (address, address));
        if (!RolesLib.governanceRolesInitialized()) {
            _initGovernanceRoles();
        }
        if (!RolesLib.securityRolesInitialized()) {
            _initSecurityRoles();
        }

        if (govAdmin != address(0)) {
            AccessControl._grantRole(GOVERNANCE_ADMIN, govAdmin);
        }

        if (securityAdmin != address(0)) {
            AccessControl._grantRole(SECURITY_ADMIN, securityAdmin);
        }
        emit LogExternalInitialize(data);
    }

    function _initSecurityRoles() private {
        AccessControl._setRoleAdmin(SECURITY_ADMIN, SECURITY_ADMIN);
        AccessControl._setRoleAdmin(SECURITY_AGENT, SECURITY_ADMIN);
    }

    function _initGovernanceRoles() private {
        AccessControl._setRoleAdmin(APP_GOVERNOR, APP_ROLE_ADMIN);
        AccessControl._setRoleAdmin(APP_ROLE_ADMIN, GOVERNANCE_ADMIN);
        AccessControl._setRoleAdmin(GOVERNANCE_ADMIN, GOVERNANCE_ADMIN);
        AccessControl._setRoleAdmin(OPERATOR, APP_ROLE_ADMIN);
        AccessControl._setRoleAdmin(TOKEN_ADMIN, APP_ROLE_ADMIN);
        AccessControl._setRoleAdmin(UPGRADE_GOVERNOR, GOVERNANCE_ADMIN);
    }
}
