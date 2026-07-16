/**
 * Copyright 2026 Securitize Inc. All rights reserved.
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
pragma solidity ^0.8.22;

import {IBridge} from "./IBridge.sol";

interface ISecuritizeBridge is IBridge {

    /// @notice Thrown when attempting to bridge to the same chain as the source
    /// @custom:selector 0x52161547
    error CannotBridgeToSameChain();

    /// @notice Thrown when the bridge amount is zero or invalid
    /// @custom:selector 0xc7e9ed6d
    error InvalidBridgeAmount();

    /// @notice Thrown when user's token balance is insufficient for bridging
    /// @custom:selector 0xe4455cae
    error InsufficientTokenBalance();

    /// @notice Thrown when bridge address is not configured for the target chain
    /// @custom:selector 0x600bf28c
    error BridgeAddressNotConfigured();

    /// @notice Thrown when investor is not registered in the registry
    /// @custom:selector 0xf2c26b6a
    error InvestorNotRegistered();

    /// @notice Thrown when insufficient ETH provided to cover bridge fees
    /// @custom:selector 0x9a4413f6
    error InsufficientETHForFees();

    /// @notice Thrown when ETH refund operation fails
    /// @custom:selector 0xf0c49d44
    error RefundFailed();

    /// @notice Thrown when Wormhole message validation fails
    /// @custom:selector 0x5e25f3dd
    error InvalidWormholeMessage();

    /// @notice Thrown when destination chain doesn't match expected chain
    /// @custom:selector 0x7355576e
    error WrongDestinationChain();

    /// @notice Thrown when VAA message has already been consumed (replay protection)
    /// @custom:selector 0x34e886de
    error MessageAlreadyConsumed();

    /// @notice Thrown when user doesn't have enough unlocked balance for bridging
    /// @custom:selector 0xe201ec73
    error InsufficientUnlockedBalance();

    /// @notice Thrown when the bridge transaction is initiated from an invalid source
    /// @custom:selector 0xa630f852
    error WrongBridgeInitiator();

    /// @notice Thrown when destination wallet is not whitelisted for the investor
    /// @custom:selector 0xc9b9d7a8
    error DestinationWalletNotWhitelisted();

    /// @notice Thrown when destination wallet is registered but belongs to a different investor
    /// @custom:selector 0x1b788763
    error WalletBelongsToADifferentInvestor();

    /// @notice Thrown when no emitter address is configured for the source chain
    /// @custom:selector 0xec2d4ee7
    error EmitterAddressNotConfigured();

    /// @notice Thrown when bridgeDSTokens() is called with a non-EVM target chain.
    ///         Use bridgeDSTokensToAddress() with a chain-appropriate bytes32 address instead.
    /// @custom:selector 0x6b4c7513
    error NonEVMTargetChain();

    struct InvestorDetail {
        string investorId;
        string country;
        uint256[] attributeValues;
        uint256[] attributeExpirations;
    }

    /**
     * @notice Emitted when a consistency level value is updated
     * @param oldConsistencyLevel old consistency level value
     * @param newConsistencyLevel new consistency level value
     */
    event ConsistencyLevelUpdate(uint8 oldConsistencyLevel, uint8 newConsistencyLevel);

    /**
     * @notice Emitted when an emitter address is registered for a source chain
     * @param chainId Wormhole chain ID of the source chain
     * @param emitterAddress The Wormhole emitter address expected from that chain
     */
    event EmitterAddressAdded(uint16 indexed chainId, bytes32 emitterAddress);

    /**
     * @notice Emitted when an emitter address is removed for a source chain
     * @param chainId Wormhole chain ID of the source chain
     */
    event EmitterAddressRemoved(uint16 indexed chainId);

    /**
     * @notice Emitted when a chain's EVM compatibility flag is updated
     * @param chainId Wormhole chain ID
     * @param isEVM Whether the chain uses EVM-style 20-byte addresses
     */
    event EVMChainSet(uint16 indexed chainId, bool isEVM);

    /**
     * @notice Emitted when tokens are burnt and sent from source blockchain
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     *      destinationAddress is bytes32 to support both EVM addresses and Solana pubkeys
     * @param targetChainId chain id
     * @param dsToken token address
     * @param sourceWallet source wallet that initiated the bridge (msg.sender)
     * @param destinationAddress destination address as bytes32 (EVM address or Solana pubkey)
     * @param investorId investor identifier
     * @param value amount bridged
     */
    event DSTokenBridgeSend(uint16 targetChainId, address indexed dsToken, bytes32 indexed sourceWallet, bytes32 destinationAddress, string investorId, uint256 value);

    /**
     * @notice Emitted when tokens are received and issued in target blockchain
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     *      destinationAddress is bytes32 to support both EVM addresses and Solana pubkeys
     * @param sourceChainId chain id
     * @param dsToken token address
     * @param sourceWallet source wallet that initiated the bridge
     * @param destinationAddress destination address as bytes32 (EVM address or Solana pubkey)
     * @param investorId investor identifier
     * @param value amount bridged
     */
    event DSTokenBridgeReceive(uint16 sourceChainId, address dsToken, bytes32 sourceWallet, bytes32 destinationAddress, string investorId, uint256 value);

    /**
    * @notice Set a mapping with available bridges per chain
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    *      bridgeAddress is bytes32 to support both EVM contracts and Solana programs
    * @param chainId Bridge chain id
    * @param bridgeAddress bridge address as bytes32 (EVM contract or Solana program pubkey)
    */
    function setBridgeAddress(uint16 chainId, bytes32 bridgeAddress) external;

    /**
    * @notice Remove a chain bridge address
    * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
    * @param chainId Bridge chain id
    */
    function removeBridgeAddress(uint16 chainId) external;

    /**
     * @notice Register the Wormhole emitter address expected from a source chain.
     * @dev For EVM chains this equals the bridge contract address (bytes32-padded).
     *      For Solana this must be the emitter PDA, NOT the program ID, because
     *      Wormhole sets vm.emitterAddress to find_program_address(["emitter"], programId).
     *      Kept separate from bridgeAddresses so that the executor destination (program ID)
     *      and the VAA origin check (emitter PDA) can differ without conflict.
     * @param chainId Wormhole chain ID of the source chain
     * @param emitterAddress Expected emitter address as bytes32
     */
    function setEmitterAddress(uint16 chainId, bytes32 emitterAddress) external;

    /**
     * @notice Remove the emitter address for a source chain
     * @param chainId Wormhole chain ID of the source chain
     */
    function removeEmitterAddress(uint16 chainId) external;

    /**
     * @notice Register whether a Wormhole chain ID corresponds to an EVM-compatible chain.
     * @dev Must be called for every EVM chain before it can be used with bridgeDSTokens().
     *      bridgeDSTokens() derives the destination address from msg.sender using EVM-specific
     *      padding (bytes32(uint256(uint160(msg.sender)))), which is invalid for non-EVM chains
     *      such as Solana. Setting isEVM=false (or never calling this) prevents accidental use
     *      of bridgeDSTokens() for non-EVM targets; users must call bridgeDSTokensToAddress()
     *      with a chain-appropriate bytes32 address instead.
     * @param chainId Wormhole chain ID to configure
     * @param isEVM True for EVM-compatible chains (Ethereum, Avalanche, Arbitrum, Optimism, Base, …)
     */
    function setEVMChain(uint16 chainId, bool isEVM) external;

    /**
    * @notice Bridge DS tokens between blockchains using Wormhole Executor framework (same-address bridge)
    * @dev Burns tokens on source chain, publishes VAA, and requests cross-chain execution
    *      Destination wallet will be the same as source wallet (msg.sender)
    *      Uses Executor framework for decentralized message delivery (replaces Standard Relayer)
    * @param targetChainId Wormhole chain ID (not EVM chain ID)
    *        See https://wormhole.com/docs/build/reference/chain-ids/
    * @param value Amount of DS tokens to bridge (must be > 0)
    * @custom:requirements
    * - Caller must be registered investor with sufficient unlocked token balance
    * - Target chain must have configured bridge address
    * - Sufficient ETH must be provided for Core + Executor fees
    * @custom:backwards-compatibility
    * This function maintains backwards compatibility by bridging to the same address on destination
    * Internally calls bridgeDSTokensToAddress with destinationAddress = bytes32(uint256(uint160(msg.sender)))
    */
    function bridgeDSTokens(uint16 targetChainId, uint256 value) external payable;

    /**
    * @notice Bridge DS tokens to explicit destination address (supports both EVM and Solana)
    * @dev Burns tokens on source chain and allows specifying different destination wallet
    *      Enforces strict validation rules based on whether destination equals source
    * @param targetChainId Wormhole chain ID for destination (EVM or Solana)
    *        See https://wormhole.com/docs/build/reference/chain-ids/
    * @param value Amount of DS tokens to bridge (must be > 0)
    * @param destinationAddress Destination address as bytes32:
    *        - For EVM: cast address to bytes32 via bytes32(uint256(uint160(address)))
    *        - For Solana: 32-byte Solana public key
    * @custom:requirements
    * - Caller must be registered investor with sufficient unlocked token balance
    * - Target chain must have configured bridge address
    * - Sufficient ETH must be provided for Core + Executor fees
    * @custom:validation-rules-evm
    * If destinationAddress == msg.sender (EVM destination):
    * - Destination wallet not registered → auto-register (backwards compatible)
    * - Destination wallet already registered → mint/credit
    * If destinationAddress != msg.sender (EVM destination):
    * - Destination wallet MUST be already registered/whitelisted for same investor
    * - Reverts if destination wallet not whitelisted (registry service validates investor ownership)
    * - No auto-registration in this case (security requirement)
    * @custom:solana
    * For Solana destinations, validation happens on Solana program side
    * Solana program must verify destination wallet is whitelisted for the investor
    */
    function bridgeDSTokensToAddress(uint16 targetChainId, uint256 value, bytes32 destinationAddress) external payable;

    /**
    * @notice Update consistency level value
    * @dev ethereum: instant 200 - safe 201 - otherwise finalized
    * @param _consistencyLevel new consistency level value
    */
    function updateConsistencyLevel(uint8 _consistencyLevel) external;
}
