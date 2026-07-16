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
pragma solidity ^0.8.20;

import {IBridge} from "./IBridge.sol";

interface ISecuritizeBridge is IBridge {

    struct InvestorDetail {
        string investorId;
        string country;
        uint256[] attributeValues;
        uint256[] attributeExpirations;
    }

    /**
    * @notice UUPSUpgradeable initiator method
    * @param _whChainId wormhole chain id
    * @param _wormholeRelayer bridge relayer address
    * @param _dsToken ds token address
    * @param _owner contract owner
    */
    function initialize(uint16 _whChainId, address _wormholeRelayer, address _dsToken, address _owner) external;

    /**
     * @notice Emitted when tokens are burnt and sent from source blockchain
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param targetChainId chain id
     * @param dsToken token address
     * @param investorWallet holder wallet
     * @param value amount bridged
     */
    event DSTokenBridgeSend(uint16 targetChainId, address dsToken, address investorWallet, uint256 value);

    /**
     * @notice Emitted when tokens are received and issued in target blockchain
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param sourceChainId chain id
     * @param dsToken token address
     * @param investorWallet holder wallet
     * @param value amount bridged
     */
    event DSTokenBridgeReceive(uint16 sourceChainId, address dsToken, address investorWallet, uint256 value);

    /**
    * @notice Set a mapping with available bridges per chain
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param chainId Bridge chain id
    * @param bridgeAddress bridge address
    */
    function setBridgeAddress(uint16 chainId, address bridgeAddress) external;

    /**
    * @notice Bridge dsTokens between blockchain
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param targetChainId chain id
    * @param value - Amount to be bridged
    */
    function bridgeDSTokens(uint16 targetChainId, uint256 value) external payable;
}
