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
pragma solidity 0.8.22;

import {BaseRBACContract} from "../utils/BaseRBACContract.sol";
import {IWormhole} from "../wormhole/interfaces/IWormhole.sol";
import {IWormholeReceiver} from "../wormhole/interfaces/IWormholeReceiver.sol";
import {IWormholeRelayer, MessageKey} from "../wormhole/interfaces/IWormholeRelayer.sol";
import {IMessageTransmitterV2} from "../wormhole/interfaces/cctp/v2/IMessageTransmitterV2.sol";
import {ITokenMessengerV2} from "../wormhole/interfaces/cctp/v2/ITokenMessengerV2.sol";
import {IUSDCBridge} from "./IUSDCBridge.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title USDCBridgeV2
 * @notice A cross-chain bridge contract for USDC transfers using Wormhole and Circle's CCTP v2 (Cross-Chain Transfer Protocol)
 * @dev Inherits from IUSDCBridge for bridge interface, IWormholeReceiver for message receiving, BaseRBACContract for role management, and ReentrancyGuardUpgradeable for reentrancy protection
 *
 * @custom:features
 * - Cross-chain USDC transfers with configurable gas limits
 * - Support for multiple target chains with bridge address management
 * - Role-based access control for bridge operations
 * - Integration with Wormhole for message passing
 * - Integration with Circle's CCTP for USDC transfers
 * - Upgradeable contract design
 * - ETH withdrawal functionality for collected fees
 *
 * @custom:security-considerations
 * - Implements reentrancy protection
 * - Uses role-based access control for administrative functions
 * - Validates addresses and balances before transfers
 * - Verifies source addresses in cross-chain messages
 */
contract USDCBridgeV2 is IUSDCBridge, IWormholeReceiver, BaseRBACContract, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant BRIDGE_CALLER = keccak256("BRIDGE_CALLER");
    uint8 internal constant CCTP_KEY_TYPE = 2;
    uint8 internal constant CONSISTENCY_LEVEL_FINALIZED = 15;

    IWormholeRelayer public wormholeRelayer;
    IWormhole public wormhole;
    ITokenMessengerV2 public circleTokenMessenger;
    IMessageTransmitterV2 public circleMessageTransmitter;
    address public USDC;

    uint256 public gasLimit;
    uint256 public maxFee; // circle max fee, we use zero for standard messages
    mapping(uint16 wmChainId => address bridge) public bridgeAddresses;
    mapping(uint16 wmChainId => uint32 cctpDomain) public chainIdToCCTPDomain;

    modifier onlyWormholeRelayer() {
        require(_msgSender() == address(wormholeRelayer), "_msgSender() is not Wormhole Relayer");
        _;
    }

    modifier addressNotZero(address _address) {
        if (_address == address(0)) {
            revert NonZeroAddress();
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _wormholeRelayer,
        address _wormholeCore,
        address _circleMessageTransmitter,
        address _circleTokenMessenger,
        address _USDC
    ) public override onlyProxy initializer {
        __BaseRBACContract_init();
        __ReentrancyGuard_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        wormholeRelayer = IWormholeRelayer(_wormholeRelayer);
        wormhole = IWormhole(_wormholeCore);
        circleTokenMessenger = ITokenMessengerV2(_circleTokenMessenger);
        circleMessageTransmitter = IMessageTransmitterV2(_circleMessageTransmitter);
        USDC = _USDC;
        gasLimit = 2_500_000;
        maxFee = 0;
    }

    function getCCTPDomain(uint16 _chain) internal view returns (uint32) {
        return chainIdToCCTPDomain[_chain];
    }

    function setCCTPBridgeAddress(uint16 _chainId, address _bridgeAddress, uint32 _cctpDomain) external override addressNotZero(_bridgeAddress) onlyRole(DEFAULT_ADMIN_ROLE) {
        bridgeAddresses[_chainId] = _bridgeAddress;
        chainIdToCCTPDomain[_chainId] = _cctpDomain;
        emit BridgeAddressAdded(_chainId, _bridgeAddress);
        emit CCTPDomainAdded(_chainId, _cctpDomain);
    }

    function removeBridgeAddress(uint16 _chainId) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        delete bridgeAddresses[_chainId];
        delete chainIdToCCTPDomain[_chainId];
        emit BridgeAddressRemoved(_chainId);
    }

    function addBridgeCaller(address _account) external override addressNotZero(_account) onlyRole(DEFAULT_ADMIN_ROLE) {
        grantRole(BRIDGE_CALLER, _account);
        emit BridgeCallerAdded(_account);
    }

    function removeBridgeCaller(address _account) external override addressNotZero(_account) onlyRole(DEFAULT_ADMIN_ROLE) {
        revokeRole(BRIDGE_CALLER, _account);
        emit BridgeCallerRemoved(_account);
    }

    function quoteBridge(uint16 _targetChain) public override view returns (uint256 cost) {
        cost = _quoteBridge(wormholeRelayer, gasLimit, _targetChain);
    }

    function updateGasLimit(uint256 _gasLimit) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        emit GasLimitUpdate(gasLimit, _gasLimit);
        gasLimit = _gasLimit;
    }

    function sendUSDCCrossChainDeposit(
        uint16 _targetChain,
        address _recipient,
        uint256 _amount
    ) external override whenNotPaused nonReentrant onlyRole(BRIDGE_CALLER) {
        if (IERC20(USDC).balanceOf(_msgSender()) < _amount) {
            revert NotEnoughBalance();
        }
        uint256 _gasLimit = gasLimit;
        uint256 deliveryCost = _quoteBridge(wormholeRelayer, _gasLimit, _targetChain);
        if (address(this).balance < deliveryCost) {
            revert InsufficientContractBalance();
        }
        address targetBridge = bridgeAddresses[_targetChain];
        if (targetBridge == address(0)) {
            revert BridgeAddressUndefined();
        }

        IERC20(USDC).safeTransferFrom(_msgSender(), address(this), _amount);

        _transferUSDC(_amount, _targetChain, _recipient, targetBridge);

        bytes memory payload = abi.encode(_recipient);
        _sendUSDCWithPayloadToEvm(
            _targetChain,
            targetBridge, // address (on targetChain) to send token and payload to
            payload,
            0, // receiver value
            _gasLimit,
            _amount,
            wormhole.chainId(),
            address(this),
            deliveryCost
        );
        emit USDCBridgeSend(_targetChain, _recipient, _amount);
    }

    /**
     * @notice Please see IWormholeReceiver.receiveWormholeMessages
     * @dev This function is called by the Wormhole Relayer when a cross-chain message arrives
     * @param _payload The main message payload containing transfer details
     * @param _additionalMessages Array of additional messages, including CCTP (Cross-Chain Transfer Protocol) data
     * @param _sourceAddress The address of the source bridge contract in bytes32 format
     * @param _sourceChain The chain ID where the transfer originated
    */
    function receiveWormholeMessages(
        bytes memory _payload,
        bytes[] memory _additionalMessages,
        bytes32 _sourceAddress,
        uint16 _sourceChain,
        bytes32 /*_deliveryHash*/
    ) external virtual payable onlyWormholeRelayer {
        _receiveWormholeMessagesWithCCTP(_payload, _additionalMessages, _sourceAddress, _sourceChain);
    }

    receive() external payable {}

    /**
     * @notice Withdraws all ETH from the contract to a specified address
     * @dev Only callable by admin role, includes reentrancy protection and zero address check
     * @param _to The address to receive the withdrawn ETH
     * @custom:requirements
     * - The caller must have the DEFAULT_ADMIN_ROLE
     * - The _to address must not be the zero address
     * - The contract must have ETH balance
     * @custom:events ETHWithdrawn(_to, amount) - Emitted when ETH is withdrawn
     */
    function withdrawETH(address payable _to) external nonReentrant addressNotZero(_to) onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 amount = address(this).balance;

        (bool sent, ) = _to.call{value: amount}("");
        if (!sent) revert ETHTransferError();
        emit ETHWithdrawn(_to, amount);
    }

    ////////////////////////////////////
    //// Private/Internal functions ////
    ////////////////////////////////////

    /**
     * @notice Calculates the cost of sending a message through the Wormhole bridge
     * @dev Uses the Wormhole Relayer to get the delivery price for cross-chain message passing
     * @param relayer The IWormholeRelayer contract instance used for price quotation
     * @param _gasLimit Gas limit for execution on the target chain
     * @param targetChain The destination chain ID in Wormhole's format
     * @return cost The total cost in native tokens required for the bridge operation
     */
    function _quoteBridge(IWormholeRelayer relayer, uint256 _gasLimit, uint16 targetChain) internal view returns (uint256 cost) {
        (cost, ) = relayer.quoteEVMDeliveryPrice(targetChain, 0, _gasLimit);
    }

    /**
     * @notice Processes received Wormhole messages containing CCTP (Cross-Chain Transfer Protocol) data
     * @dev Validates the source bridge address and processes the CCTP message for USDC transfer
     * @param _payload The main payload containing recipient address and amount information
     * @param _additionalMessages Array of additional messages, expects exactly one CCTP message
     * @param _sourceAddress The address of the bridge contract that initiated the transfer (in bytes32 format)
     * @param _sourceChain The chain ID where the transfer originated
     */
    function _receiveWormholeMessagesWithCCTP(
        bytes memory _payload,
        bytes[] memory _additionalMessages,
        bytes32 _sourceAddress,
        uint16 _sourceChain
    ) private {
        if (address(uint160(uint256(_sourceAddress))) != bridgeAddresses[_sourceChain]) {
            revert WrongBridgeInitiator();
        }

        if (_additionalMessages.length == 1) {
            (bytes memory msgBytes, bytes memory att) = abi.decode(_additionalMessages[0], (bytes, bytes));
            circleMessageTransmitter.receiveMessage(msgBytes, att);
        } else {
            revert InvalidWormholePayload();
        }

        (uint256 amount, bytes memory userPayload) = abi.decode(_payload, (uint256, bytes));
        address recipient = abi.decode(userPayload, (address));
        emit USDCBridgeReceive(_sourceChain, recipient, amount);
    }

    /**
     * @notice Initiates a USDC transfer across chains using Circle's CCTP (Cross-Chain Transfer Protocol)
     * @dev Approves USDC spending and calls depositForBurn on the Circle Token Messenger
     * @param _amount The amount of USDC tokens to transfer
     * @param _targetChain The destination chain ID in Wormhole's format
     * @param _recipient The address that will receive the USDC on the target chain
     * @param _targetBridge The address of the bridge contract on the target chain
     */
    function _transferUSDC(
        uint256 _amount,
        uint16 _targetChain,
        address _recipient,
        address _targetBridge
    ) private {
        IERC20(USDC).forceApprove(address(circleTokenMessenger), _amount);
        bytes32 targetAddressBytes32 = _addressToBytes32CCTP(_recipient);
        bytes32 destinationCallerBytes32 = _addressToBytes32CCTP(_targetBridge);

        circleTokenMessenger.depositForBurn(
            _amount,
            getCCTPDomain(_targetChain),
            targetAddressBytes32,        // mintRecipient on destination
            USDC,          // burnToken
            destinationCallerBytes32,        // destinationCaller (restrict who can mint)
            maxFee,
            2000 // standard message
        );
    }

    /**
     * @notice Sends USDC tokens along with a payload to another EVM chain through Wormhole
     * @dev This function is used internally to handle the cross-chain USDC transfer with additional data
     * @param _targetChain The destination chain ID in Wormhole's format
     * @param _targetAddress The address on the target chain that will receive the message
     * @param _payload The payload data to be sent along with the USDC transfer
     * @param _receiverValue Native token value to be delivered to the target contract
     * @param _gasLimit Gas limit for execution on the target chain
     * @param _amount Amount of USDC tokens being transferred
     * @param _refundChain Chain ID where refunds should be sent
     * @param _refundAddress Address to receive refunds
     * @param _deliveryCost Cost of delivering the message through Wormhole
     * @return uint64 Sequence number of the Wormhole message
     */
    function _sendUSDCWithPayloadToEvm(
        uint16 _targetChain,
        address _targetAddress,
        bytes memory _payload,
        uint256 _receiverValue,
        uint256 _gasLimit,
        uint256 _amount,
        uint16 _refundChain,
        address _refundAddress,
        uint256 _deliveryCost
    ) private returns (uint64) {
        bytes memory appPayload = abi.encode(_amount, _payload);

        MessageKey[] memory messageKeys = new MessageKey[](1);
        messageKeys[0] = _buildCCTPKey();

        return wormholeRelayer.sendToEvm{value: _deliveryCost}(
            _targetChain,
            _targetAddress,
            appPayload,
            _receiverValue,
            0,
            _gasLimit,
            _refundChain,
            _refundAddress,
            wormholeRelayer.getDefaultDeliveryProvider(),
            messageKeys,
            CONSISTENCY_LEVEL_FINALIZED
        );
    }

    /**
     * @notice Builds a MessageKey for CCTP (Cross-Chain Transfer Protocol) message handling
     * @dev Creates a MessageKey with CCTP-specific type and encoded domain information
     * @return MessageKey A struct containing the key type and encoded domain data used for message routing
     */
    function _buildCCTPKey() private view returns (MessageKey memory) {
        return MessageKey(CCTP_KEY_TYPE, abi.encodePacked(getCCTPDomain(wormhole.chainId()), uint64(0)));
    }

    /**
     * @notice Converts an Ethereum address to bytes32 format for CCTP compatibility
     * @dev Pads the 20-byte address to 32 bytes by converting it first to uint160, then uint256, and finally to bytes32
     * @param _addr The Ethereum address to convert
     * @return The bytes32 representation of the address
     */
    function _addressToBytes32CCTP(address _addr) private pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }
}
