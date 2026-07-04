// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

/**
 * @dev Struct defining parameters for sending tokens.
 */
struct SendInfo {
    address token;
    bytes32 to;
    uint256 amountLD;
    uint256 minAmountLD;
    bytes extraOptions;
    bytes composeMsg;
}

struct TokenDetails {
    /// @notice Tracks the deployment status for a given token
    TokenStatus status;
    /// @notice Tokens that can't be 'Deployed' or 'Sent' crosschain
    bool isBlocked;
    /// @notice Conversion rate for each token, normalizes between 'SharedDecimals' and 'LocalDecimals'
    uint128 conversionRate;
}

/**
 * @dev Enum representing the status of a token in the WAB.
 */
enum TokenStatus {
    Null, // Before anything has been done, default state
    Pending, // Deploy has been initialized, but the 'ack' hasn't been received from the remote
    Complete // Token has been successfully deployed and can be used for sending
}

/**
 * @title IMovementWAB
 * @dev Interface defining MovementWAB operations, including token management and messaging.
 */
interface IMovementWAB {
    error InvalidRange();

    error TokenIsBlocked();
    error TokenIsPending();
    error TokenIsComplete();
    error TokenIsNotComplete();
    error SlippageExceeded();

    event TokenBlocked(address indexed token, bool isBlocked);
    event TokenDeployPending(address token);
    event TokenDeployComplete(address token);
    event TokenSent(bytes32 guid, address token, address from, uint256 amountLD);
    event TokenReceived(bytes32 guid, address token, address to, uint256 amountLD);

    /**
     * @notice Sets the blocked status of a token.
     * @dev Blocks or unblocks tokens for future deployments OR sending.
     * @param _token The address of the token to block or unblock.
     * @param _isBlocked Boolean flag indicating the block status of the token.
     */
    function setTokenBlocked(address _token, bool _isBlocked) external;

    /**
     * @notice Retrieves the total number of tokens managed by the contract.
     * @return uint256 The length of the tokens array.
     */
    function getTokensLength() external view returns (uint256);

    /**
     * @notice Retrieves an array of addresses for successfully deployed and ready-to-use tokens.
     * @param _startIndex The starting index of the token array.
     * @param _endIndex The ending index of the token array (exclusive).
     * @return supportedTokens An array of token addresses that are ready to be sent.
     */
    function getSupportedTokens(
        uint256 _startIndex,
        uint256 _endIndex
    ) external view returns (address[] memory supportedTokens);

    /**
     * @notice Provides a quote for the messaging fee required to deploy a token.
     * @param _token The address of the token to be deployed.
     * @param _extraOptions Additional options for token deployment.
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return fee The messaging fee estimate.
     */
    function quoteDeployToken(
        address _token,
        bytes calldata _extraOptions,
        bool _payInLzToken
    ) external view returns (MessagingFee memory fee);

    /**
     * @notice Deploys a token with specified parameters and returns a messaging receipt.
     * @dev The deployment fee must be provided as part of the call.
     * @param _token The address of the token to deploy.
     * @param _extraOptions Additional options for token deployment.
     * @param _fee The messaging fee required for deployment.
     * @param _refundAddress Address where any surplus fee will be refunded.
     * @return receipt The messaging receipt for the token deployment.
     */
    function deployToken(
        address _token,
        bytes calldata _extraOptions,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory receipt);

    /**
     * @notice Provides a quote for the messaging fee required to send tokens.
     * @param _params Details of the token transfer (amount, destination, etc.).
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return msgFee The messaging fee estimate.
     */
    function quoteSendTokens(
        SendInfo calldata _params,
        bool _payInLzToken
    ) external view returns (MessagingFee memory msgFee);

    /**
     * @notice Sends tokens to the specified destination and returns the message receipt and amount sent.
     * @dev The amount sent is calculated and adjusted based on decimal conversions.
     * @param _params Details of the token transfer (amount, destination, etc.).
     * @param _fee The messaging fee for the token transfer.
     * @param _refundAddress Address where any surplus fee will be refunded.
     * @return msgReceipt The messaging receipt for the token transfer.
     * @return amountLD The amount of tokens sent in least denomination.
     */
    function sendTokens(
        SendInfo calldata _params,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory msgReceipt, uint256 amountLD);
}
