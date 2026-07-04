// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";

/**
 * @title SigmaAirdrop
 * @dev This contract manages sigma token airdrops to users.
 * Users can claim tokens using a signature from an authorized signer.
 * Each claim is identified by a unique salt to prevent replay attacks.
 *
 */
contract SigmaAirdrop is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;
    using MessageHashUtils for bytes32;

    // ========== STATE VARIABLES ==========

    address public immutable sigma;
    address public immutable ACCESS_HUB;
    address public immutable signer;

    // Track used salts to prevent replay attacks
    mapping(bytes32 => bool) public usedSalts;

    // ========== EVENTS ==========

    event AirdropClaimed(address indexed recipient, uint256 amount, bytes32 salt);
    event EmergencyWithdraw(address indexed token, address indexed to, uint256 amount);

    // ========== ERRORS ==========

    error ZeroAddress();
    error ZeroAmount();
    error InvalidSignature();
    error SaltAlreadyUsed();
    error NOT_AUTHORIZED(address sender);

    // ========== MODIFIERS ==========

    modifier onlyGovernance() {
        if (msg.sender != ACCESS_HUB) {
            revert NOT_AUTHORIZED(msg.sender);
        }
        _;
    }

    // ========== CONSTRUCTOR ==========

    constructor(
        address _sigma,
        address _accessHub,
        address _signer
    ) {
        if (_sigma == address(0) || _accessHub == address(0) || _signer == address(0)) {
            revert ZeroAddress();
        }
        sigma = _sigma;
        ACCESS_HUB = _accessHub;
        signer = _signer;
    }

    // ========== PUBLIC FUNCTIONS ==========

    /**
     * @notice Claim airdrop tokens with a valid signature
     * @param _signature Signature from the authorized signer
     * @param _amount Amount of tokens to claim
     * @param _recipient Address to receive the tokens
     * @param _salt Unique identifier to prevent replay attacks
     */
    function claim(
        bytes calldata _signature,
        uint256 _amount,
        address _recipient,
        string calldata _salt
    ) external nonReentrant {
        if (_amount == 0) revert ZeroAmount();
        if (_recipient == address(0)) revert ZeroAddress();
        
        bytes32 saltHash = keccak256(bytes(_salt));
        if (usedSalts[saltHash]) revert SaltAlreadyUsed();

        // Construct the message hash (order: address, uint256, string)
        bytes32 messageHash = keccak256(abi.encode(_recipient, _amount, _salt));
        bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();

        // Verify signature
        address recoveredSigner = ethSignedMessageHash.recover(_signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }

        // Mark salt as used
        usedSalts[saltHash] = true;

        // Transfer tokens
        IERC20(sigma).safeTransfer(_recipient, _amount);

        emit AirdropClaimed(_recipient, _amount, saltHash);
    }

    /**
     * @notice Batch claim multiple airdrops in one transaction
     * @param _signatures Array of signatures
     * @param _amounts Array of amounts
     * @param _recipients Array of recipient addresses
     * @param _salts Array of unique salts
     */
    function batchClaim(
        bytes[] calldata _signatures,
        uint256[] calldata _amounts,
        address[] calldata _recipients,
        string[] calldata _salts
    ) external nonReentrant {
        uint256 length = _signatures.length;
        if (
            length != _amounts.length ||
            length != _recipients.length ||
            length != _salts.length
        ) {
            revert("Length mismatch");
        }

        for (uint256 i = 0; i < length; i++) {
            _processClaim(_signatures[i], _amounts[i], _recipients[i], _salts[i]);
        }
    }

    // ========== INTERNAL FUNCTIONS ==========

    function _processClaim(
        bytes calldata _signature,
        uint256 _amount,
        address _recipient,
        string calldata _salt
    ) internal {
        if (_amount == 0) revert ZeroAmount();
        if (_recipient == address(0)) revert ZeroAddress();
        
        bytes32 saltHash = keccak256(bytes(_salt));
        if (usedSalts[saltHash]) revert SaltAlreadyUsed();

        // Construct the message hash (order: address, uint256, string)
        bytes32 messageHash = keccak256(abi.encode(_recipient, _amount, _salt));
        bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();

        // Verify signature
        address recoveredSigner = ethSignedMessageHash.recover(_signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }

        // Mark salt as used
        usedSalts[saltHash] = true;

        // Transfer tokens
        IERC20(sigma).safeTransfer(_recipient, _amount);

        emit AirdropClaimed(_recipient, _amount, saltHash);
    }

    // ========== GOVERNANCE FUNCTIONS ==========

    /**
     * @notice Emergency withdraw function for governance
     * @param _token Token address to withdraw
     * @param _to Recipient address
     * @param _amount Amount to withdraw
     */
    function emergencyWithdraw(
        address _token,
        address _to,
        uint256 _amount
    ) external onlyGovernance {
        if (_to == address(0)) revert ZeroAddress();
        if (_amount == 0) revert ZeroAmount();

        IERC20(_token).safeTransfer(_to, _amount);

        emit EmergencyWithdraw(_token, _to, _amount);
    }

    // ========== VIEW FUNCTIONS ==========

    /**
     * @notice Check if a salt has been used
     * @param _salt The salt to check
     * @return bool True if the salt has been used
     */
    function isSaltUsed(bytes32 _salt) external view returns (bool) {
        return usedSalts[_salt];
    }

    /**
     * @notice Get the message hash for a claim
     * @param _recipient Recipient address
     * @param _amount Amount of tokens
     * @param _salt Unique salt
     * @return bytes32 The message hash
     */
    function getMessageHash(
        address _recipient,
        uint256 _amount,
        string calldata _salt
    ) external pure returns (bytes32) {
        return keccak256(abi.encode(_recipient, _amount, _salt));
    }

    /**
     * @notice Get the Ethereum signed message hash
     * @param _recipient Recipient address
     * @param _amount Amount of tokens
     * @param _salt Unique salt
     * @return bytes32 The Ethereum signed message hash
     */
    function getEthSignedMessageHash(
        address _recipient,
        uint256 _amount,
        string calldata _salt
    ) external pure returns (bytes32) {
        bytes32 messageHash = keccak256(abi.encode(_recipient, _amount, _salt));
        return messageHash.toEthSignedMessageHash();
    }
}