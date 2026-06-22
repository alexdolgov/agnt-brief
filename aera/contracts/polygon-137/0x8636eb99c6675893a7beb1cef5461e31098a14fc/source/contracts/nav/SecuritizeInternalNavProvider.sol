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

import "./ISecuritizeNavProvider.sol";
import "../utils/BaseContract.sol";

contract SecuritizeInternalNavProvider is ISecuritizeNavProvider, BaseContract {
    /**
     * @dev NAV Rate expressed with the same number of digits as the stable coin.
     */
    uint256 public rate;

    bytes32 public constant RATE_UPDATER = keccak256("RATE_UPDATER");

    modifier nonZeroRate(uint256 _rate) {
        require(_rate > 0, "rate must be greater than 0");
        _;
    }

    function initialize(uint256 _rate) public onlyProxy initializer nonZeroRate(_rate) {
        __BaseDSContract_init();
        rate = _rate;
    }

    function setRate(uint256 _rate) whenNotPaused onlyRole(RATE_UPDATER) nonZeroRate(_rate) external {
        uint256 oldRate = rate;
        rate = _rate;
        emit RateUpdated(oldRate, _rate);
    }

    /**
     * @dev Grants the rateUpdater role to an account.
     * @param _account The address to which the rateUpdater role will be granted.
     */
    function addRateUpdater(address _account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        grantRole(RATE_UPDATER, _account);
        emit RateUpdaterAdded(_account);
    }

    /**
     * @dev Revokes the rateUpdater role from an account. Emits a RateUpdaterRemoved event.
     * @param _account The address from which the rateUpdater role will be revoked.
     */
    function removeRateUpdater(address _account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        revokeRole(RATE_UPDATER, _account);
        emit RateUpdaterRemoved(_account);
    }
}
