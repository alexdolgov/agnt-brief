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

/**
 * @title ISecuritizeNavProvider
 * @dev Define a common interface to read and configure the NAV Rate (Native Asset Value) used for calculating the liquidity tokens in a redemption operation.
 */
interface ISecuritizeNavProvider {
    /**
     * @dev Emitted when owner updates rate.
     * @param oldValue Old rate value
     * @param newValue New rate value
     */
    event RateUpdated(uint256 oldValue, uint256 newValue);

    /**
     * @dev Emitted when new rate updater is added.
     * @param rateUpdater new rate updater
     */
    event RateUpdaterAdded(address indexed rateUpdater);

    /**
     * @dev Emitted when new rate updater is removed.
     * @param rateUpdater removed rate updater
     */
    event RateUpdaterRemoved(address indexed rateUpdater);

    /**
     * @dev Proxy Initializer.
     * @param _rate the initial rate value
    */
    function initialize(uint256 _rate) external;


    /**
     * @dev Set a new Rate
     * @param _rate NAV Rate expressed with the same number of digits as the stable coin.
     */
    function setRate(uint256 _rate) external;

    /**
     * @dev NAV Rate expressed with the same number of digits as the stable coin.
     * @return NAV rate.
     */
    function rate() external view returns (uint256);
}
