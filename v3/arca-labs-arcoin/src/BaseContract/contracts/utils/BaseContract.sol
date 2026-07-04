/**
 * Copyright 2024 Securitize Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

abstract contract BaseContract is UUPSUpgradeable, PausableUpgradeable, AccessControlUpgradeable {

    uint256[50] private __gap;

    function __BaseDSContract_init() internal onlyInitializing {
        __UUPSUpgradeable_init();
        __Pausable_init();
        __AccessControl_init();

        // Grant the _masterAddress the default admin role: it will be able
        // to grant and revoke any roles
        // _grantRole only be call in initialize method
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /**
     * @dev required by the OZ UUPS module
     */
    function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /**
     * @dev returns proxy ERC1967 implementation address
     */
    function getImplementationAddress() external view returns (address) {
        return ERC1967Utils.getImplementation();
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function getInitializedVersion() external view returns (uint64) {
        return _getInitializedVersion();
    }

    function pause() onlyRole(DEFAULT_ADMIN_ROLE) external {
        _pause();
    }

    function unpause() onlyRole(DEFAULT_ADMIN_ROLE) external {
        _unpause();
    }
}
