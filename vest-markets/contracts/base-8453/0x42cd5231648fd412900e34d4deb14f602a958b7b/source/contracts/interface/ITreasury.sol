// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title ITreasury
 * @dev Interface for the Treasury contract handling token deposits, withdrawals, and cross-chain transfers.
 */
interface ITreasury {
    struct BridgeParams {
        address depositor;
        address recipient;
        address inputToken;
        address outputToken;
        uint256 inputAmount;
        uint256 outputAmount;
        uint256 destinationChainId;
        address exclusiveRelayer;
        uint32 quoteTimestamp;
        uint32 fillDeadline;
        uint32 exclusivityDeadline;
        bytes message;
    }

    /**
     * @dev Emitted when tokens are processed for sending.
     * @param toChainId The ID of the destination chain.
     * @param token The address of the token being sent.
     * @param toAddress The address receiving the tokens.
     * @param tokenAmount The amount of tokens sent.
     * @param refundAmount The amount of tokens refunded.
     */
    event Processed(uint256 toChainId, address token, address toAddress, uint256 tokenAmount, uint256 refundAmount);

    /**
     * @dev Emitted when tokens are withdrawn.
     * @param account The address of the account initiating the withdrawal.
     * @param token The address of the token being withdrawn.
     * @param amount The amount of tokens withdrawn.
     * @param recipient The address receiving the withdrawn tokens.
     */
    event Withdrawed(address indexed account, address indexed token, uint256 amount, address indexed recipient);

    /**
     * @dev Emitted when tokens are deposited.
     * @param token The address of the token being deposited.
     * @param from The address depositing the tokens.
     * @param to The address receiving the deposited tokens.
     * @param amount The amount of tokens deposited.
     */
    event Deposited(address indexed token, address indexed from, address indexed to, uint256 amount);

    /**
     * @dev Emitted when supported tokens are added.
     * @param tokensAddresses An array of token addresses that have been added.
     */
    event SupportedTokensAdded(address[] tokensAddresses);

    /**
     * @dev Emitted when supported tokens are removed.
     * @param tokensAddresses An array of token addresses that have been removed.
     */
    event SupportedTokensRemoved(address[] tokensAddresses);

    event SpokePoolSet(address indexed spokePool);

    error AlreadyProcessed();
    error IncorrectSend();
    error InvalidAccount();
    error InvalidChainId();
    error InvalidRequestType();
    error InvalidSignature();
    error InvalidSignerAccount();
    error ExpiredSignerAccount();
    error InvalidProofSignature();
    error UnsupportedToken();
    error UnsupportedAccountType();
    error ZeroAddress();
    error AccessDenied();

    /**
     * @dev Adds support for the specified tokens addresses.
     * @param tokensAddresses An array of tokens addresses to add support for
     */
    function addSupportedTokens(address[] calldata tokensAddresses) external;

    /**
     * @dev Removes support for the specified tokens addresses.
     * @param tokensAddresses An array of tokens addresses to remove support for
     */
    function removeSupportedTokens(address[] calldata tokensAddresses) external;

    /**
     * @dev Deposits tokens into the Treasury.
     * @param token The address of the token to deposit.
     * @param to The address receiving the deposited tokens.
     * @param amount The amount of tokens to deposit.
     */
    function deposit(address token, address to, uint256 amount) external;

    function withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bool isSolanaNative
    ) external;

    /**
     * @dev Sends tokens to a specified chain.
     * @param srcToken The token to be sent.
     * @param bridgeParams The parameters for the bridge operation.
     */
    function processSending(IERC20 srcToken, BridgeParams memory bridgeParams) external payable;
}
