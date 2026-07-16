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

/**
 * @title IBridge
 * @notice Base interface for cross-chain bridge contracts using Wormhole Executor framework
 * @dev Provides common functionality for bridge operations with executor-based message delivery
 *
 * @custom:executor-migration
 * This interface has been updated to support the Wormhole Executor framework, which replaces
 * the deprecated Standard Relayer. Key changes include:
 * - Off-chain signed quotes instead of on-chain pricing
 * - Direct VAA verification in destination contracts
 * - Configurable replay protection schemes
 * - Decentralized execution provider network
 *
 * @custom:security-model
 * - VAA verification: Contracts verify VAAs directly using Wormhole Core
 * - Replay protection: Implemented by individual contracts (sequence or hash-based)
 * - Fee payment: Paid upfront to executor providers via signed quotes
 * - Refunds: Handled off-chain by executor provider policies
 *
 * @custom:gas-considerations
 * Gas limits affect execution costs and success rates. Higher limits increase fees but
 * provide more execution headroom. Different chains have varying gas costs and limits.
 */

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
     *      bridgeAddress is bytes32 to support both EVM contracts and Solana programs
     * @param chainId Bridge chain id
     * @param bridgeAddress bridge address as bytes32 (EVM contract or Solana program pubkey)
     */
    event BridgeAddressAdded(uint16 indexed chainId, bytes32 bridgeAddress);

    /**
     * @notice Emitted when a new bridge address is removed
     * @dev chain Id is not EVM chain id, please refer to https://wormhole.com/docs/build/reference/chain-ids/
     * @param chainId Bridge chain id
     */
    event BridgeAddressRemoved(uint16 indexed chainId);

    /**
     * @notice Emitted when a gas limit value is updated
     * @dev Gas limit affects Executor framework execution costs and success probability
     * @param oldGasLimit Previous gas limit for cross-chain execution
     * @param newGasLimit New gas limit for cross-chain execution
     * @custom:cost-impact Higher gas limits increase execution fees but reduce failure risk
     */
    event GasLimitUpdate(uint256 oldGasLimit, uint256 newGasLimit);

    /**
     * @notice Emitted when a msg value is updated
     * @param oldMsgValue Previous msg value for cross-chain execution
     * @param newMsgValue New msg value for cross-chain execution
     */
    event MsgValueUpdate(uint256 oldMsgValue, uint256 newMsgValue);

    /**
     * @notice Emitted when a quoter address is updated
     * @dev The quoter provides off-chain execution quotes for the Executor framework
     * @param oldQuoterAddr Previous quoter contract address
     * @param newQuoterAddr New quoter contract address
     * @custom:executor-note Quoter addresses must be valid Executor framework contracts
     */
    event QuoterAddrUpdate(address oldQuoterAddr, address newQuoterAddr);

    /**
     * @notice Emitted when and admin withdraw contract funds
     * @param recipient Recipient address.
     * @param amount Balance value.
     */
    event ETHWithdrawn(address payable recipient, uint256 amount);

    /**
    * @notice Update gas limit for Executor framework execution requests
    * @dev Sets the gas limit used in RelayInstructions for cross-chain execution
    *      Higher values increase execution cost but provide more gas for complex operations
    * @param _gasLimit New gas limit value for destination chain execution
    * @custom:executor-note This affects ExecutorQuoterRouter fee calculations
    * @custom:considerations
    * - Higher gas limits increase execution fees
    * - Insufficient gas may cause execution failures
    * - Different chains have different gas costs and limits
    */
    function updateGasLimit(uint128 _gasLimit) external;

    /**
    * @notice Update msg value for Executor framework execution requests
    * @dev Sets the native token value (e.g. lamports on Solana) included in RelayInstructions.
    *      On Solana, this must cover base signature fees (~5000 lamports) + account rent.
    * @param _msgValue New msg value for destination chain execution
    */
    function updateMsgValue(uint128 _msgValue) external;

    /**
    * @notice Set the Executor framework quoter contract address
    * @dev The quoter provides off-chain signed execution quotes for fee estimation
    *      Must be a valid Executor quoter contract deployed by Wormhole
    * @param _quoterAddr Address of the Executor quoter contract
    * @custom:executor-migration Replaces Standard Relayer on-chain pricing with off-chain quotes
    * @custom:security Only admin roles can update quoter addresses
    * @custom:addresses See https://wormhole.com/docs/protocol/infrastructure/relayers/executor-framework/
    */
    function setQuoterAddr(address _quoterAddr) external;

    /**
    * @notice Get total cost of bridge operation using Executor framework
    * @dev Returns combined cost of Wormhole Core message fee and Executor execution fee
    *      Uses off-chain signed quotes instead of deprecated on-chain Standard Relayer pricing
    * @param targetChainId Wormhole chain ID (not EVM chain ID)
    *        See https://wormhole.com/docs/build/reference/chain-ids/
    * @return Total cost in wei (coreFee + executorFee)
    * @custom:executor-note Uses ExecutorQuoterRouter.quoteExecution for dynamic pricing
    * @custom:gas-estimation Actual execution may vary based on destination chain conditions
    */
    function quoteBridge(uint16 targetChainId) external view returns (uint256);

    /**
     * @notice Withdraws the full ETH balance of the contract to a specified address.
     * @dev Only callable by an address with the admin role.
     * @param _to The address that will receive the ETH.
     */
    function withdrawETH(address payable _to) external;
}
