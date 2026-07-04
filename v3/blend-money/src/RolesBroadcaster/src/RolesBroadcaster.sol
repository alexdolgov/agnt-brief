// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {OApp, Origin, MessagingFee} from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import {OAppOptionsType3} from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {RolesReceiver} from "./RolesReceiver.sol";

/**
 * @title RolesBroadcaster
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice A LayerZero OApp contract that broadcasts role update messages to remote chains
 * @dev This contract enables cross-chain role management by sending role update calls
 *      to configured receiver addresses on destination chains via LayerZero's messaging protocol.
 *      Only the contract owner can send role updates and configure remote receivers.
 * @dev The `delegate` address set in the constructor has significant power over this OApp's configuration
 *      on the LayerZero endpoint. A malicious delegate could call `setDefaultReceiveLibrary()` on the endpoint for a
 *      destination chain, which could compromise message validation on the receiving contract. To mitigate this risk,
 *      the `delegate` should be a secure multi-sig wallet or a Timelock contract, ensuring that any configuration changes
 *      are subject to a review process and delay.
 * @author Blend.Money (hello@blend.money)
 */
contract RolesBroadcaster is OApp, OAppOptionsType3 {
    /// @notice Message type for sending role updates, used in OAppOptionsType3 for enforced options
    uint16 public constant SEND = 1;

    /// @notice Address of the RolesReceiver contract for same-chain operations
    /// @dev Set to address(0) if no same-chain receiver is configured
    RolesReceiver public sameChainReceiver;

    /**
     * @notice Emitted when a role update message is sent to a destination chain
     * @param dstChainId The LayerZero endpoint ID of the destination chain
     * @param roleCall The encoded role update call data that was sent
     */
    event RoleUpdateEmitted(uint32 indexed dstChainId, bytes roleCall);

    /**
     * @notice Thrown when insufficient fee is provided for the LayerZero message
     */
    error InsufficientFee();

    /**
     * @notice Thrown when no receiver is configured for same-chain operations
     */
    error NoSameChainReceiver();

    /**
     * @notice Initializes the RolesBroadcaster contract
     * @param _endpoint The address of the LayerZero endpoint on this chain
     * @param _delegate The address that will be set as the owner and delegate
     * @dev The delegate address becomes both the OApp delegate and the Ownable owner
     * @dev The delegate address is intended to be a Timelock contract to ensure secure management
     */
    constructor(address _endpoint, address _delegate) OApp(_endpoint, _delegate) Ownable(_delegate) {}

    /**
     * @notice Sets the same-chain receiver contract address
     * @param _receiver The address of the RolesReceiver contract on the same chain
     * @dev Only the owner can set the same-chain receiver
     * @dev Set to address(0) to disable same-chain operations
     */
    function setSameChainReceiver(address _receiver) external onlyOwner {
        sameChainReceiver = RolesReceiver(_receiver);
    }

    /**
     * @notice Quotes the fee required to send a role update message to a destination chain
     * @param _dstEid The LayerZero endpoint ID of the destination chain
     * @param _callData The role update call data to be sent
     * @param _options The LayerZero message options (gas settings, etc.)
     * @param _payInLzToken Whether to return fee in ZRO token
     * @return fee A MessagingFee struct containing the calculated gas fee in either native token or ZRO token
     * @dev This function helps estimate costs before sending actual role updates
     * @dev Uses combineOptions to merge enforced options with user-provided options
     */
    function quote(uint32 _dstEid, bytes calldata _callData, bytes calldata _options, bool _payInLzToken)
        public
        view
        returns (MessagingFee memory fee)
    {
        // combineOptions merges enforced options set by the contract owner
        // with any additional execution options provided by the caller
        fee = _quote(_dstEid, _callData, combineOptions(_dstEid, SEND, _options), _payInLzToken);
    }

    /**
     * @notice Sends a role update call to a destination chain
     * @param _dstEid The LayerZero endpoint ID of the destination chain
     * @param _callData The encoded role update call data to be executed on the destination chain
     * @param _options The LayerZero message options specifying gas limits and other parameters
     * @dev Only the contract owner can send role updates
     * @dev Requires msg.value to cover the LayerZero messaging fee
     * @dev Reverts if no receiver address is configured for the destination chain
     * @dev Validates that sufficient fee is provided before sending
     */
    function send(uint32 _dstEid, bytes calldata _callData, bytes calldata _options) external payable onlyOwner {
        // Same-chain operation: directly call the receiver without quoting or fees
        // msg.value should be set to 0 for same-chain operations
        if (_dstEid == endpoint.eid()) {
            require(address(sameChainReceiver) != address(0), NoSameChainReceiver());

            sameChainReceiver.processSameChainCall(_callData);
            emit RoleUpdateEmitted(_dstEid, _callData);
            return;
        }

        // Get the required fee using the same logic as the quote function
        bytes memory combinedOptions = combineOptions(_dstEid, SEND, _options);
        MessagingFee memory fee = _quote(_dstEid, _callData, combinedOptions, false);

        // Validate that sufficient fee is provided
        require(msg.value >= fee.nativeFee, InsufficientFee());

        // Prepare the messaging fee (using msg.value for native token, 0 for LZ token)
        MessagingFee memory messagingFee = MessagingFee(msg.value, 0);

        // Send the role update call via LayerZero
        _lzSend(_dstEid, _callData, combinedOptions, messagingFee, payable(msg.sender));

        // Emit event for tracking and monitoring
        emit RoleUpdateEmitted(_dstEid, _callData);
    }

    /**
     * @notice LayerZero receive function - currently not implemented
     * @dev This contract only sends messages and doesn't process incoming ones
     * @dev Override this function if you need to handle incoming LayerZero messages
     */
    function _lzReceive(
        Origin calldata, /* origin */
        bytes32, /* guid */
        bytes calldata, /* message */
        address, /* executor */
        bytes calldata /* extraData */
    ) internal override {
        // Currently, this broadcaster only sends messages and doesn't receive them
    }
}
