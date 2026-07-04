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

import "@securitize/digital_securities/contracts/registry/IDSRegistryService.sol";
import "@securitize/digital_securities/contracts/service/IDSServiceConsumer.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRedemption} from "./interfaces/IRedemption.sol";
import {ISettlement} from "./interfaces/ISettlement.sol";
import {OwnablePausable} from "./roles/OwnablePausable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Redemption
 * @dev Pausable by the Pauser
 * @dev Asset token is ERC20-compatible
 * @dev Liquidity token is ERC20-compatible
 */
contract Redemption is IRedemption, OwnablePausable {
    using SafeERC20 for IERC20;

    /**
     * @notice Emitted when the Settlement address changes
     */
    event SettlementUpdated(
        address indexed oldSettlement,
        address indexed newSettlement
    );

    /**
     * @inheritdoc IRedemption
     */
    address public immutable asset;

    /**
     * @inheritdoc IRedemption
     */
    address public immutable liquidity;

    /**
     * @notice Settlement contract address
     */
    ISettlement public settlement;

    /**
     * @notice Service consumer contract
    **/
    IDSServiceConsumer public dsServiceConsumer;

    /**
     * @notice Enforces the caller must hold the asset
     */
    modifier onlyAssetHolder() {
        require(IERC20(asset).balanceOf(msg.sender) > 0, "Not asset holder");
        _;
    }

    /**
     * @param _asset Address of asset token
     * @param _liquidity Address of liquidity token
     * @param _owner Address of Owner, capable of updating the Settlement address and
     * rotating the Pauser.
     * @param _pauser Address of Pauser, capable of pausing redemptions
     */
    constructor(
        address _asset,
        address _liquidity,
        address _owner,
        address _pauser
    ) OwnablePausable(_owner, _pauser) {
        asset = _asset;
        liquidity = _liquidity;
        dsServiceConsumer = IDSServiceConsumer(asset);

        require(
            IERC20Metadata(asset).decimals() <=
                IERC20Metadata(liquidity).decimals(),
            "Liquidity token decimals must be equal or greater than asset decimals"
        );
    }

    /**
     * @inheritdoc IRedemption
     * @dev Transfers asset to the recipient specified by the Settlement contract, if allowed,
     * and notifies the Settlement to transfer liquidity in a 1:1 ratio.
     * @dev Only callable when not paused
     * @dev Only callable by a holder of the asset
     */
    function redeem(
        uint256 amount
    ) external override whenNotPaused onlyAssetHolder {
        address recipient = settlement.recipient();

        // Transfer asset
        IERC20(asset).safeTransferFrom(msg.sender, recipient, amount);

        // Checkpoint liquidity balance before
        uint256 redeemerBalanceBefore = IERC20(liquidity).balanceOf(msg.sender);

        uint256 normalizedAmount = amount * (10 ** (IERC20Metadata(liquidity).decimals() - IERC20Metadata(asset).decimals()));

        // Notify settlement
        settlement.redeem(msg.sender, normalizedAmount, getCountry(msg.sender));

        // Require liquidity balance increase by amount (1:1)
        require(
            IERC20(liquidity).balanceOf(msg.sender) - redeemerBalanceBefore ==
            normalizedAmount,
            "Liquidity transfer failed"
        );
    }

    /**
     * @notice Updates the Settlement contract address.
     * @dev Only callable by the Owner.
     */
    function updateSettlement(address _settlement) external onlyOwner {
        emit SettlementUpdated(address(settlement), _settlement);
        settlement = ISettlement(_settlement);
    }

    function getCountry(address redeemer) internal view returns (string memory) {
        IDSRegistryService registryService = IDSRegistryService(dsServiceConsumer.getDSService(dsServiceConsumer.REGISTRY_SERVICE()));
        return registryService.getCountry(registryService.getInvestor(redeemer));
    }
}
