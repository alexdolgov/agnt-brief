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
import "../utils/Helper.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@redstone-finance/on-chain-relayer/contracts/price-feeds/interfaces/IPriceFeed.sol";

contract RedStoneNavProvider is ISecuritizeNavProvider, BaseContract {

    /**
     * @dev RedStone oracle smart contract
     */
    IPriceFeed public priceFeed;

    /**
     * @dev Underlying asset
     */
    IERC20Metadata public asset;

    function initialize(address _priceFeed, address _asset) public onlyProxy initializer {
        __BaseDSContract_init();
        priceFeed = IPriceFeed(_priceFeed);
        asset = IERC20Metadata(_asset);
    }

    function setRate(uint256 /*_rate*/) external pure {
        revert('RedStone provider does not implement setRate function');
    }

    function rate() external view override returns (uint256) {
        uint8 oracleDecimals = priceFeed.decimals();
        uint8 assetDecimals = asset.decimals();
        int256 rsRate = priceFeed.latestAnswer();
        require(rsRate != 0, 'Rate must not be zero');
        return Helper.normalizeRate(uint256(rsRate), oracleDecimals, assetDecimals);
    }

}
