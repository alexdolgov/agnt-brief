// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IERC20Upgradeable as IERC20} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/**
 * @title ISrcBridge
 * @dev Interface for the source bridge contract handling cross-chain token transfers.
 */
interface ISrcBridge {
    struct Transaction {
        bytes32 salt;
        address user;
        uint256 amount;
        uint256 chainIdFrom;
    }

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
     * @dev Emitted when supported tokens are added.
     * @param tokensAddresses An array of token addresses that have been added.
     */
    event SupportedTokensAdded(address[] tokensAddresses);

    /**
     * @dev Emitted when supported tokens are removed.
     * @param tokensAddresses An array of token addresses that have been removed.
     */
    event SupportedTokensRemoved(address[] tokensAddresses);

    /**
     * @dev Emitted when ETH is sent.
     * @param to The address to which the ETH is sent.
     * @param amount The amount of ETH sent.
     */
    event EthSended(address to, uint256 amount);

    /**
     * @dev Emitted when ERC20 tokens are withdrawn.
     * @param token The address of the token withdrawn.
     * @param amount The amount of tokens withdrawn.
     */
    event Erc20Withdrawn(address indexed token, uint256 amount);

    /**
     * @dev Emitted when tokens are deposited.
     * @param token The address of the token being deposited.
     * @param from The address depositing the tokens.
     * @param to The address receiving the deposited tokens.
     * @param amount The amount of tokens deposited.
     */
    event Deposited(address indexed token, address indexed from, address indexed to, uint256 amount);

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
    event Withdrawed(
        address indexed account,
        uint256 nonce,
        address token,
        uint256 amount,
        address indexed recipient,
        bytes32 indexed requestHash
    );
    event WithdrawedSolana(
        address indexed account,
        uint256 nonce,
        address token,
        uint256 amount,
        bytes32 indexed recipient,
        bytes32 indexed requestHash
    );

    /**
     * @dev Error indicating that a transaction has already been processed.
     */
    error AlreadyProcessed();
    error IncorrectSend();
    error InvalidAccount();
    error InvalidChainId();
    error InvalidSignerAccount();
    error ExpiredSignerAccount();
    error InvalidProofSignature();
    error InvalidRequestType();
    error InvalidSignature();
    error InvalidValidatorSignature();
    error UnsupportedToken();
    error UnsupportedAccountType();
    error ZeroAddress();
    error InvalidProofArgLength();
    error NotAllowedWithdraw();

    /**
     * @dev Checks the supported status of an array of token addresses.
     * @param tokenAddresses An array of token addresses to check.
     * @return statuses An array of boolean values indicating whether each token address is supported.
     */
    function checkSupportedTokensStatuses(address[] calldata tokenAddresses) external view returns (bool[] memory);

    /**
     * @dev Deposits tokens into the Treasury.
     * @param token The address of the token to deposit.
     * @param to The address receiving the deposited tokens.
     * @param amount The amount of tokens to deposit.
     */
    function deposit(address token, address to, uint256 amount) external;

    /**
     * @dev Processes a token sending operation with specific bridge parameters.
     * @param srcToken The ERC20 token to send.
     * @param bridgeParams The parameters for the bridge operation.
     */
    function processSending(IERC20 srcToken, BridgeParams memory bridgeParams) external;

    /**
     * @dev Adds supported tokens to the bridge.
     * @param tokensAddresses An array of token addresses to add.
     */
    function addSupportedTokens(address[] calldata tokensAddresses) external;

    /**
     * @dev Removes supported tokens from the bridge.
     * @param tokensAddresses An array of token addresses to remove.
     */
    function removeSupportedTokens(address[] calldata tokensAddresses) external;

    /**
     * @dev Pauses the contract.
     */
    function pause() external;

    /**
     * @dev Unpauses the contract.
     */
    function unpause() external;

    /**
     * @dev Withdraws ERC20 tokens from the contract.
     * @param _token The ERC20 token to withdraw.
     */
    function withdrawERC20(IERC20 _token) external;
}
