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

import {IBridge} from "./IBridge.sol";

interface IUSDCBridge is IBridge {

    /// @notice Thrown when the contract balance is insufficient to cover the bridge operation costs
    /// @custom:selector 0x786e0a99
    error InsufficientContractBalance();
    /// @notice Thrown when the user's balance is insufficient for the requested transaction
    /// @custom:selector 0xad3a8b9e
    error NotEnoughBalance();
    /// @notice Thrown when trying to bridge to a chain with undefined bridge address
    /// @custom:selector 0xc1a6a189
    error BridgeAddressUndefined();
    /// @notice Thrown when the bridge transaction is initiated from an invalid source
    /// @custom:selector 0xa630f852
    error WrongBridgeInitiator();
    /// @notice Thrown when the received Wormhole payload is invalid or malformed
    /// @custom:selector 0xd0019b1b
    error InvalidWormholePayload();
    /// @notice Thrown when ccpt domain is not configured
    /// @custom:selector 0x5d4f021c
    error CCPTDomainNotConfigured();

    /**
    * @notice UUPSUpgradeable initiator method
    * @param _wormholeRelayer bridge relayer address
    * @param _wormholeCore bridge core address
    * @param _circleMessageTransmitter circle message transmitter. See https://developers.circle.com/stablecoins/evm-smart-contracts
    * @param _circleTokenMessenger circle message transmitter. See https://developers.circle.com/stablecoins/evm-smart-contracts
    * @param _USDC usdc contract address
    */
    function initialize(
        address _wormholeRelayer,
        address _wormholeCore,
        address _circleMessageTransmitter,
        address _circleTokenMessenger,
        address _USDC
    ) external;

    /**
     * @notice Emitted when usdc are sent to wormhole relayer
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param targetChainId chain id
     * @param recipient address
     * @param value amount bridged
     */
    event USDCBridgeSend(uint16 targetChainId, address recipient, uint256 value);

    /**
     * @notice Emitted when tokens are received and issued in target blockchain
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param sourceChainId chain id
     * @param recipient address
     * @param value amount bridged
     */
    event USDCBridgeReceive(uint16 sourceChainId, address recipient, uint256 value);

    /**
     * @notice Emitted when a new account is granted with bridge caller role
     * @param bridgeCaller The address to which the caller role was granted.
     */
    event BridgeCallerAdded(address indexed bridgeCaller);

    /**
     * @notice Emitted when a cctp domain is added
     * @param wmChainId Wormhole chain id.
     * @param cctpDomain Circle cctp domain.
     */
    event CCTPDomainAdded(uint16 wmChainId, uint32 cctpDomain);

    /**
     * @notice Emitted when an account is revoked from bridge caller role
     * @param bridgeCaller The address to which the caller role was revoked.
     */
    event BridgeCallerRemoved(address indexed bridgeCaller);

    /**
    * @notice Bridge USDC between blockchain
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param targetChainId chain id
    * @param recipient - Target address USDC recipient
    * @param value - Amount to be bridged
    */
    function sendUSDCCrossChainDeposit(uint16 targetChainId, address recipient, uint256 value) external;

    /**
     * @dev Grants the bridge_caller role to an account.
     * bridge_caller can call sendUSDCCrossChainDeposit function
     * @param _account The address to which the caller role will be granted.
     */
    function addBridgeCaller(address _account) external;

    /**
     * @dev Removes the bridge_caller role to an account.
     * @param _account The address to which the caller role will be removed.
     */
    function removeBridgeCaller(address _account) external;

    /**
    * @notice Set a mapping with available bridges per chain
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param chainId Bridge chain id
    * @param bridgeAddress bridge address
    * @param cctpDomain Circle cctp domain
    */
    function setCCTPBridgeAddress(uint16 chainId, address bridgeAddress, uint32 cctpDomain) external;
}

