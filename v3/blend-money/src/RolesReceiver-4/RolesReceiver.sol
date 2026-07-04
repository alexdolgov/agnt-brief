// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {OApp, Origin, MessagingFee, MessagingReceipt} from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import {VaultConfig} from "./types/StrategyTypes.sol";
import {StrategyManager} from "./libraries/StrategyManager.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title RolesReceiver
 * @author Variable Logic Labs, Corp (hello@blend.money)
 *
 * @notice A LayerZero OApp that receives role update messages from a trusted broadcaster and executes them on a Zodiac role modifier
 * @dev This contract acts as a bridge between LayerZero cross-chain messaging and Zodiac role management.
 *      It validates incoming messages from a trusted source chain and broadcaster before executing role updates
 *      on a Zodiac role modifier contract. The contract inherits from OApp for LayerZero functionality,
 *      Ownable for access control, and StrategyManager for strategy configuration management.
 *
 * @notice Security Model: Owner/Delegate Privilege Mitigation
 * @dev This contract's security relies on restricting the `delegate`'s privileges. While several functions are
 *      overridden to prevent misuse by the `delegate` (e.g., `setPeer`, `_lzSend`), a significant trust assumption remains.
 *      The `delegate` of this OApp can call `setDefaultReceiveLibrary()` on the LayerZero endpoint, potentially
 *      installing a malicious library that could bypass this contract's validation logic in `_lzReceive` and spoof
 *      messages from the trusted broadcaster and chain.
 *
 *      To mitigate this, the `delegate` address (set as `_owner` in the constructor) MUST be a Timelock contract
 *      or a secure multi-sig wallet. This ensures that any change to the endpoint configuration is subject to a
 *      time delay and/or a multi-party approval process, providing an opportunity to detect and prevent malicious actions.
 *
 *      Hardened security measures in this contract include:
 *      - `setPeer()` always reverts - prevents changing trusted peers after deployment.
 *      - `_lzReceive()` only accepts messages from `TRUSTED_BROADCASTER` on `TRUSTED_CHAIN_ID`.
 *      - `_lzSend()` is overridden to revert - prevents sending messages.
 */
contract RolesReceiver is OApp, StrategyManager {
    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Keccak256 selector for updateStrategyConfig
    /// @dev precomputed at compile time to avoid repeated keccak256 at runtime
    bytes4 private constant _UPDATE_VAULT_CONFIG_SELECTOR =
        bytes4(keccak256("updateVaultConfig(address,(address,(bytes32,address,uint256,bool,bytes)[],(address)[]))"));

    /// @notice Keccak256 selector for setExecutor
    /// @dev precomputed at compile time to avoid repeated keccak256 at runtime
    bytes4 private constant _SET_EXECUTOR_SELECTOR = bytes4(keccak256("setExecutor(address)"));

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice The bytes32 representation of the trusted broadcaster that can send role update messages
    /// @dev This bytes32 value must match the sender of incoming LayerZero messages for validation
    bytes32 public immutable TRUSTED_BROADCASTER;

    /// @notice The LayerZero endpoint ID of the trusted source chain
    /// @dev Messages from other chains will be rejected during validation
    uint32 public immutable TRUSTED_CHAIN_ID;

    /// @notice The address of the trusted broadcaster on the same chain for direct calls
    /// @dev Used to validate same-chain direct calls from RolesBroadcaster
    address public immutable TRUSTED_BROADCASTER_ADDRESS;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a message is received from an untrusted source chain
    /// @dev Occurs when origin.srcEid doesn't match trustedChainId
    error InvalidSourceChain();

    /// @notice Thrown when a message is received from an untrusted broadcaster
    /// @dev Occurs when the sender address doesn't match trustedBroadcaster
    error InvalidBroadcaster();

    /// @notice Thrown when a message is received that is not a valid selector
    /// @dev Occurs when the selector is not a valid selector
    error InvalidSelector();

    /// @notice Thrown when a message is received that is formed incorrectly
    /// @dev Occurs when the message is not formed correctly
    error InvalidMessagePayload();

    /// @notice Thrown when a message is received that is not supported
    /// @dev Occurs when the selector is not a valid selector
    error NOT_SUPPORTED();

    /// @notice Thrown when same-chain call is made by unauthorized caller
    /// @dev Occurs when processSameChainCall is called by non-trusted broadcaster
    error UnauthorizedSameChainCall();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a LayerZero message is successfully received and processed
     * @param messageId The unique identifier of the received message
     * @param message The raw message data that was processed
     */
    event MessageReceived(bytes32 indexed messageId, bytes message);

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the RolesReceiver contract with LayerZero and trusted source configuration
     * @param _lzEndpoint The address of the LayerZero endpoint for this chain
     * @param _owner The address that will own this contract and also be set as the OApp delegate
     * @param _trustedBroadcaster The address of the trusted broadcaster that can send role updates
     * @param _trustedChainId The LayerZero endpoint ID of the trusted source chain
     * @dev The constructor sets up the OApp with the LayerZero endpoint and establishes the trusted source parameters.
     *      It is critical that the `_owner` is a Timelock or a secure multi-sig wallet to mitigate risks associated
     *      with the OApp delegate role. See the contract-level security notice for more details.
     */
    constructor(address _lzEndpoint, address _owner, address _trustedBroadcaster, uint32 _trustedChainId)
        OApp(_lzEndpoint, _owner)
        Ownable(_owner)
    {
        TRUSTED_BROADCASTER = bytes32(uint256(uint160(_trustedBroadcaster)));
        TRUSTED_BROADCASTER_ADDRESS = _trustedBroadcaster;
        TRUSTED_CHAIN_ID = _trustedChainId;

        _setPeer(_trustedChainId, TRUSTED_BROADCASTER);
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Reverts when a peer is set
     * @dev This function is overridden to prevent setting peers
     */
    function setPeer(uint32, bytes32) public pure override {
        revert NOT_SUPPORTED();
    }

    /**
     * @notice Reverts when a message is sent
     * @dev This function is overridden to prevent sending messages
     */
    function _lzSend(uint32, bytes memory, bytes memory, MessagingFee memory, address)
        internal
        virtual
        override
        returns (MessagingReceipt memory)
    {
        revert NOT_SUPPORTED();
    }

    /**
     * @notice Processes a same-chain role update call directly from the trusted broadcaster
     * @param message The encoded message data containing the role update call
     * @dev This function allows the trusted broadcaster on the same chain to directly call
     *      role update functions without going through LayerZero messaging
     * @dev Only the trusted broadcaster address can call this function
     * @dev Uses the same validation and processing logic as _lzReceive but for same-chain calls
     */
    function processSameChainCall(bytes calldata message) external {
        // Validate that the caller is the trusted broadcaster on the same chain
        require(msg.sender == TRUSTED_BROADCASTER_ADDRESS, UnauthorizedSameChainCall());
        // Process the message using the same logic as _lzReceive
        _processRoleUpdateMessage(message, bytes32(0)); // Use empty guid for same-chain calls
    }

    /*//////////////////////////////////////////////////////////////
                           INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Internal function called by LayerZero when a message is received
     * @param origin The origin information including source chain ID and sender address
     * @param guid The globally unique identifier for this message
     * @param message The encoded message data containing the role update call for the Zodiac role modifier
     * @dev This function validates the source chain and broadcaster, then executes the role update on the Zodiac role modifier.
     *      The message should contain the encoded function call data for the role modifier contract (e.g., assignRoles, revokeRoles).
     *      The function is protected by whenNotPaused modifier to allow emergency stops.
     * @dev Reverts with InvalidSourceChain if the message doesn't come from the trusted chain
     * @dev Reverts with InvalidBroadcaster if the sender is not the trusted broadcaster
     * @dev Reverts with InvalidSelector if the selector is not a valid selector
     * @custom:security Only the trusted broadcaster can send messages to this contract
     */
    function _lzReceive(
        Origin calldata origin,
        bytes32 guid,
        bytes calldata message,
        address, // executor - unused
        bytes calldata // extraData - unused
    ) internal override {
        // Validate source chain
        require(origin.srcEid == TRUSTED_CHAIN_ID, InvalidSourceChain());
        // Validate broadcaster
        require(origin.sender == TRUSTED_BROADCASTER, InvalidBroadcaster());
        // Process the message using shared logic
        _processRoleUpdateMessage(message, guid);
    }

    /**
     * @notice Internal function to process role update messages from both LayerZero and same-chain calls
     * @param message The encoded message data containing the role update call
     * @param guid The globally unique identifier for this message (empty for same-chain calls)
     * @dev This function contains the shared logic for processing role update messages regardless of source
     * @dev Reverts with InvalidSelector if the selector is not supported
     * @dev Reverts with InvalidMessagePayload if the message format is incorrect
     */
    function _processRoleUpdateMessage(bytes calldata message, bytes32 guid) internal {
        bytes4 selector = bytes4(message);

        if (selector == _UPDATE_VAULT_CONFIG_SELECTOR) {
            // Decode the market configurations update
            (address vaultAddress, VaultConfig memory configs) = abi.decode(message[4:], (address, VaultConfig));
            // Update strategy with market configs
            _updateVaultConfig(vaultAddress, configs);
        } else if (selector == _SET_EXECUTOR_SELECTOR) {
            // There must be exactly 1 address (20 bytes, padded out to 32 due to function encoding) + 4 bytes
            require(message.length == 36, InvalidMessagePayload());
            // Decode the executor address
            (address executor) = abi.decode(message[4:], (address));
            // Set the executor
            _setExecutor(executor);
        } else {
            // We don't support any other selectors
            revert InvalidSelector();
        }

        emit MessageReceived(guid, message);
    }
}
