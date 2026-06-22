/**
 * Copyright 2024 Circle Internet Financial, LTD. All rights reserved.
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

import {ISettlement} from "./interfaces/ISettlement.sol";
import {IRedemption} from "./interfaces/IRedemption.sol";
import {ILiquiditySource} from "./interfaces/ILiquiditySource.sol";
import {OwnablePausable} from "./roles/OwnablePausable.sol";

/**
 * @title Settlement
 * @dev Pausable by the Pauser
 */
contract Settlement is ISettlement, OwnablePausable {
    /**
     * @notice Emitted when the current recipient address changes
     * @param oldRecipient Prior recipient address
     * @param newRecipient Updated recipient address
     */
    event RecipientUpdated(
        address indexed oldRecipient,
        address indexed newRecipient
    );

    /**
     * @notice Emitted when the current liquidity source changes
     * @param oldSource Prior source address
     * @param newSource Updated source address
     */
    event LiquiditySourceUpdated(
        address indexed oldSource,
        address indexed newSource
    );

    /**
     * @notice Emitted when settlement is completed.
     * @param redeemer Initiator of redemption transaction
     * @param amount the amount being redeemed, 1:1 with liquidity
     */
    event SettlementCompleted(address indexed redeemer, uint256 amount);

    /**
     * @notice Immutable redemption contract
     */
    IRedemption public immutable redemption;

    /**
     * @notice Current liquidity source
     */
    ILiquiditySource public liquiditySource;

    /**
     * @inheritdoc ISettlement
     */
    address public recipient;

    /**
     * @param _redemption Address of the redemption contract
     * @param _recipient Address that receives the asset
     * @param _owner Owner address, capable of changing the pauser
     * and adjusting parameters.
     * @param _pauser Address of pauser
     */
    constructor(
        address _redemption,
        address _recipient,
        address _owner,
        address _pauser
    ) OwnablePausable(_owner, _pauser) {
        redemption = IRedemption(_redemption);
        recipient = _recipient;
    }

    /**
     * @inheritdoc ISettlement
     * @dev Only callable when not paused.
     * @dev Only callable by the redemption contract
     */
    function redeem(
        address redeemer,
        uint256 amount
    ) external override whenNotPaused {
        require(
            msg.sender == address(redemption),
            "Settlement: caller not redemption"
        );

        require(
            address(liquiditySource) != address(0),
            "Settlement: no liquidity source set"
        );

        require(
            liquiditySource.availableLiquidity() >= amount,
            "Settlement: exceeds allowed amount"
        );

        liquiditySource.supplyTo(redeemer, amount);
        emit SettlementCompleted(redeemer, amount);
    }

    /**
     * @inheritdoc ISettlement
     * @dev Delegates to the currently set liquidity source.
     */
    function availableLiquidity() external view override returns (uint256) {
        if (address(liquiditySource) == address(0)) {
            return 0;
        }
        return liquiditySource.availableLiquidity();
    }

    /**
     * @notice Updates the recipient.
     * @dev Only callable by the owner.
     * @dev Allows setting to the 0 address.
     */
    function updateRecipient(address _recipient) external onlyOwner {
        emit RecipientUpdated(recipient, _recipient);
        recipient = _recipient;
    }

    /**
     * @notice Updates the current liquidity source.
     * @dev Only callable by the owner.
     * @dev Allows setting to the 0 address.
     */
    function updateLiquiditySource(
        address _liquiditySource
    ) external onlyOwner {
        emit LiquiditySourceUpdated(address(liquiditySource), _liquiditySource);
        liquiditySource = ILiquiditySource(_liquiditySource);
    }
}
