// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@chainlink/contracts-ccip/contracts/applications/CCIPReceiver.sol";
import "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import "./interfaces/ISOUCore.sol";

/**
 * @title SOUCoreCCIPReceiver
 * @notice Ethereum contract that receives CCIP messages from Shibarium and mints SOUs
 * @dev This contract has MINTER_ROLE on SOUCore and validates messages come from authorized source
 */
contract SOUCoreCCIPReceiver is
    AccessControl,
    CCIPReceiver
{
    // ============================================
    // ROLES
    // ============================================

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    // ============================================
    // STATE VARIABLES
    // ============================================

    // SOUCore contract on Ethereum
    ISOUCore public souCore;

    // Shibarium chain selector
    uint64 public shibariumChainSelector;

    // Authorized ShibariumBurnBridge contract address
    address public authorizedBurnBridge;

    // Paused state
    bool public paused;

    // ============================================
    // EVENTS
    // ============================================

    event MessageReceived(
        bytes32 indexed messageId,
        uint64 indexed sourceChainSelector,
        address indexed sender,
        address user,
        uint256 tokenCount
    );

    event SOUMinted(
        address indexed user,
        address indexed token,
        uint256 amount,
        uint256 tokenId
    );

    event BatchProcessed(
        address indexed user,
        uint256 tokenCount,
        uint256[] tokenIds
    );

    event AuthorizedBurnBridgeUpdated(address indexed newBurnBridge);
    event ShibariumChainSelectorUpdated(uint64 newSelector);
    event SOUCoreUpdated(address indexed newSOUCore);
    event Paused(address indexed by);
    event Unpaused(address indexed by);

    // ============================================
    // ERRORS
    // ============================================

    error SOUCoreCCIPReceiver__ZeroAddress();
    error SOUCoreCCIPReceiver__Paused();
    error SOUCoreCCIPReceiver__UnauthorizedSender();
    error SOUCoreCCIPReceiver__InvalidSourceChain();
    error SOUCoreCCIPReceiver__InvalidChainSelector();
    error SOUCoreCCIPReceiver__DecodeFailed();
    error SOUCoreCCIPReceiver__ArrayLengthMismatch();
    error SOUCoreCCIPReceiver__EmptyArray();

    // ============================================
    // CONSTRUCTOR
    // ============================================

    /**
     * @notice Deploy and initialize the contract
     * @param _ccipRouter CCIP Router address on Ethereum
     * @param _souCore SOUCore contract address on Ethereum
     * @param _shibariumChainSelector Shibarium chain selector for CCIP
     * @param _authorizedBurnBridge Authorized ShibariumBurnBridge address on Shibarium (can be zero, set later)
     * @param admin Admin address
     */
    constructor(
        address _ccipRouter,
        address _souCore,
        uint64 _shibariumChainSelector,
        address _authorizedBurnBridge,
        address admin
    ) CCIPReceiver(_ccipRouter) {
        if (_souCore == address(0) || admin == address(0)) {
            revert SOUCoreCCIPReceiver__ZeroAddress();
        }
        if (_shibariumChainSelector == 0) {
            revert SOUCoreCCIPReceiver__InvalidChainSelector();
        }

        souCore = ISOUCore(_souCore);
        shibariumChainSelector = _shibariumChainSelector;
        authorizedBurnBridge = _authorizedBurnBridge; // Can be zero, set via setAuthorizedBurnBridge later
        paused = false;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
    }

    // ============================================
    // CCIP RECEIVE FUNCTION
    // ============================================

    /**
     * @notice Handle incoming CCIP messages
     * @dev Called by CCIP Router when message arrives from Shibarium
     * @param any2EvmMessage The CCIP message
     */
    function _ccipReceive(
        Client.Any2EVMMessage memory any2EvmMessage
    ) internal override {
        // Check if paused
        if (paused) revert SOUCoreCCIPReceiver__Paused();

        // Validate source chain
        if (any2EvmMessage.sourceChainSelector != shibariumChainSelector) {
            revert SOUCoreCCIPReceiver__InvalidSourceChain();
        }

        // Decode sender address from bytes
        address sender = abi.decode(any2EvmMessage.sender, (address));

        // Validate sender is authorized burn bridge
        if (sender != authorizedBurnBridge) {
            revert SOUCoreCCIPReceiver__UnauthorizedSender();
        }

        // Decode the message data
        // Expected format: abi.encode(user, tokenAddresses[], amounts[])
        bytes memory data = any2EvmMessage.data;

        // Decode parameters
        (address user, address[] memory tokens, uint256[] memory amounts) = abi.decode(
            data,
            (address, address[], uint256[])
        );

        // Validate arrays
        if (tokens.length == 0) revert SOUCoreCCIPReceiver__EmptyArray();
        if (tokens.length != amounts.length) revert SOUCoreCCIPReceiver__ArrayLengthMismatch();

        emit MessageReceived(
            any2EvmMessage.messageId,
            any2EvmMessage.sourceChainSelector,
            sender,
            user,
            tokens.length
        );

        // Array to track token IDs
        uint256[] memory tokenIds = new uint256[](tokens.length);

        // Call handleBridgeCompensation for each token
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 tokenId = souCore.handleBridgeCompensation(user, tokens[i], amounts[i]);
            tokenIds[i] = tokenId;

            emit SOUMinted(user, tokens[i], amounts[i], tokenId);
        }

        emit BatchProcessed(user, tokens.length, tokenIds);
    }


    // ============================================
    // ADMIN FUNCTIONS
    // ============================================

    /**
     * @notice Update authorized burn bridge address
     * @param _authorizedBurnBridge New burn bridge address on Shibarium
     */
    function setAuthorizedBurnBridge(address _authorizedBurnBridge) external onlyRole(ADMIN_ROLE) {
        if (_authorizedBurnBridge == address(0)) revert SOUCoreCCIPReceiver__ZeroAddress();
        authorizedBurnBridge = _authorizedBurnBridge;
        emit AuthorizedBurnBridgeUpdated(_authorizedBurnBridge);
    }

    /**
     * @notice Update Shibarium chain selector
     * @param _shibariumChainSelector New chain selector
     */
    function setShibariumChainSelector(uint64 _shibariumChainSelector) external onlyRole(ADMIN_ROLE) {
        if (_shibariumChainSelector == 0) revert SOUCoreCCIPReceiver__InvalidChainSelector();
        shibariumChainSelector = _shibariumChainSelector;
        emit ShibariumChainSelectorUpdated(_shibariumChainSelector);
    }

    /**
     * @notice Update SOUCore contract address
     * @param _souCore New SOUCore address
     */
    function setSOUCore(address _souCore) external onlyRole(ADMIN_ROLE) {
        if (_souCore == address(0)) revert SOUCoreCCIPReceiver__ZeroAddress();
        souCore = ISOUCore(_souCore);
        emit SOUCoreUpdated(_souCore);
    }

    /**
     * @notice Pause the receiver
     */
    function pause() external onlyRole(ADMIN_ROLE) {
        paused = true;
        emit Paused(msg.sender);
    }

    /**
     * @notice Unpause the receiver
     */
    function unpause() external onlyRole(ADMIN_ROLE) {
        paused = false;
        emit Unpaused(msg.sender);
    }

    // ============================================
    // REQUIRED OVERRIDE
    // ============================================

    function supportsInterface(bytes4 interfaceId)
        public
        pure
        override(AccessControl, CCIPReceiver)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
