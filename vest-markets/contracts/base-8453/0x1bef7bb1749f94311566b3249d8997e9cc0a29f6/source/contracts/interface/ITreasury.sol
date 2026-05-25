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
     * @dev Emitted when a deposit is successfully processed to the destination chain.
     * @param toChainId The ID of the destination chain where the deposit is sent.
     * @param token The address of the token being deposited.
     * @param toAddress The recipient address on the destination chain.
     * @param inputAmount The amount of tokens deposited on the source chain.
     * @param outputAmount The amount of tokens received on the destination chain.
     */
    event Processed(
        uint256 indexed toChainId,
        address indexed token,
        address toAddress,
        uint256 inputAmount,
        uint256 outputAmount
    );

    /**
     * @dev Emitted when tokens are withdrawn.
     * @param account The address of the account initiating the withdrawal.
     * @param nonce The nonce of the account initiating the withdrawal.
     * @param token The address of the token being withdrawn.
     * @param amount The amount of tokens withdrawn.
     * @param recipient The address receiving the withdrawn tokens.
     * @param requestHash The hash of withdraw request.
     */
    event Withdrawed(
        address indexed account,
        uint256 nonce,
        address token,
        uint256 amount,
        address indexed recipient,
        bytes32 indexed requestHash
    );

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
    error InvalidValidatorSignature();
    error UnsupportedToken();
    error UnsupportedAccountType();
    error ZeroAddress();
    error AccessDenied();
    error InvalidProofArgLength();
    error NotAllowedWithdraw();

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

    /**
     * @notice Executes withdrawal of funds with additional validator signature
     * @dev Function can be called by any user, requires BRIDGE_OPERATOR_ROLE signature
     * @param requestArgs Withdrawal request arguments
     * @param signer Address of request signer
     * @param signature Request signature
     * @param signatureProof Signature proof
     * @param validatorSignature Validator signature (BRIDGE_OPERATOR_ROLE)
     * @param isSolanaNative Flag indicating if the account is a Solana native account
     */
    function withdraw(
        bytes memory requestArgs,
        address signer,
        bytes memory signature,
        bytes memory signatureProof,
        bytes memory validatorSignature,
        bool isSolanaNative
    ) external;

    /**
     * @dev Sends tokens to a specified chain.
     * @param srcToken The token to be sent.
     * @param bridgeParams The parameters for the bridge operation.
     */
    function processSending(IERC20 srcToken, BridgeParams memory bridgeParams) external payable;
}
