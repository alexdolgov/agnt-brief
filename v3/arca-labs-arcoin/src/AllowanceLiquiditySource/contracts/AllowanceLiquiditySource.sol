/**
 * Copyright 2024 Circle Internet Financial, LTD. All rights reserved.
 * Modifications copyright 2025 Securitize Inc.
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

pragma solidity ^0.8.16;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ILiquiditySource} from "./interfaces/ILiquiditySource.sol";

/**
 * @title AllowanceLiquiditySource
 */
contract AllowanceLiquiditySource is ILiquiditySource {
    using SafeERC20 for IERC20;

    address public immutable allowedCaller;
    address public immutable holder;
    address public immutable token;

    /**
     * @param _allowedCaller Caller that is allowed to direct liquidity
     * @param _holder Address holding liquidity token balance
     * @param _token ERC20-compatible liquidity token
     * @dev All parameters are immutable
     */
    constructor(address _allowedCaller, address _holder, address _token) {
        allowedCaller = _allowedCaller;
        holder = _holder;
        token = _token;
    }

    /**
     * @inheritdoc ILiquiditySource
     */
    function supplyTo(address recipient, uint256 amount) external override {
        require(msg.sender == allowedCaller, "Not allowed");
        IERC20(token).safeTransferFrom(holder, recipient, amount);

        emit LiquiditySupplied(recipient, amount);
    }

    /**
     * @inheritdoc ILiquiditySource
     */
    function availableLiquidity() external view override returns (uint256) {
        return IERC20(token).allowance(holder, address(this));
    }
}
