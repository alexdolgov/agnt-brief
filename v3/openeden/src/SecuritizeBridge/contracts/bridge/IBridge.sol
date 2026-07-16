/**
 * Copyright 2025 Securitize Inc. All rights reserved.
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
pragma solidity ^0.8.20;

interface IBridge {

    /// @notice Thrown when a zero address is provided where a non-zero address is required
    /// @custom:selector 0xbf8d7175
    error NonZeroAddress();

    /// @notice Thrown when eth transfer fails
    /// @custom:selector 0x7ea369e9
    error ETHTransferError();

    /**
     * @notice Emitted when a new bridge address is set
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param chainId Bridge chain id
     * @param bridgeAddress bridge address
     */
    event BridgeAddressAdded(uint16 chainId, address bridgeAddress);

    /**
     * @notice Emitted when a new bridge address is removed
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param chainId Bridge chain id
     */
    event BridgeAddressRemoved(uint16 chainId);

    /**
     * @notice Emitted when a gas limit value is updated
     * @param oldGasLimit old gas limit value
     * @param newGasLimit new gas limit value
     */
    event GasLimitUpdate(uint256 oldGasLimit, uint256 newGasLimit);

    /**
     * @notice Emitted when and admin withdraw contract funds
     * @param recipient Recipient address.
     * @param amount Balance value.
     */
    event ETHWithdrawn(address payable recipient, uint256 amount);

    /**
    * @notice Remove a chain bridge address
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param chainId Bridge chain id
    */
    function removeBridgeAddress(uint16 chainId) external;

    /**
    * @notice Update gas limit value
    * @param _gasLimit new gas limit value
    */
    function updateGasLimit(uint256 _gasLimit) external;

    /**
    * @notice Get total cost of bridge operation
    * @dev targetChainId is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param targetChainId chain id
    */
    function quoteBridge(uint16 targetChainId) external view returns (uint256);

    /**
     * @notice Withdraws the full ETH balance of the contract to a specified address.
     * @dev Only callable by an address with the admin role.
     * @param _to The address that will receive the ETH.
     */
    function withdrawETH(address payable _to) external;
}
