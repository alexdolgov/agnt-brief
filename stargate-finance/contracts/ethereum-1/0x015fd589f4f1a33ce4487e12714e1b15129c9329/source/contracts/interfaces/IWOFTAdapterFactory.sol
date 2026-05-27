// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

struct WabInfo {
    address token; // Wrapped token on source.
    address woftAdapter; // WOFTAdapter on source.
    bytes32 woft; // WOFT on destination.
}

/**
 * @title IWOFTAdapterFactory
 * @dev This interface defines the WOFTAdapterFactory.
 */
interface IWOFTAdapterFactory {
    error InvalidRange();
    error TokenIsBlocked();
    error WireStatusIsAlreadyCompleted();
    error WireStatusIsPending();

    event WOFTAdapterDeployed(address indexed woftAdapter);
    event EnforcedOptionsSet(
        bytes factoryEnforcedOptions,
        bytes woftSendEnforcedOptions,
        bytes woftSendAndCallEnforcedOptions
    );
    event TokenBlocked(address indexed token, bool isBlocked);
    event WireStatusComplete(address indexed token);

    /**
     * @dev External only owner function to set blockedTokens.
     * @param _token The token to block or unblock.
     * @param _isBlocked Flag to indicate whether token is blocked.
     *
     * @dev This will only block future deployments.
     */
    function setTokenBlocked(address _token, bool _isBlocked) external;

    /**
     * @notice External only owner function to set factory and WOFT Send Enforced Options.
     * @param _factoryEnforcedOptions The enforced options for sending a msg to the remote factory.
     * @param _woftSendEnforcedOptions The enforced options for SEND msg type.
     * @param _woftSendAndCallEnforcedOptions The enforced options for SEND_AND_CALL msg type.
     */
    function setEnforcedOptions(
        bytes calldata _factoryEnforcedOptions,
        bytes calldata _woftSendEnforcedOptions,
        bytes calldata _woftSendAndCallEnforcedOptions
    ) external;

    /**
     * @notice External function to get the length of the tokens array.
     * @return uint256 The length of the tokens array.
     */
    function getTokensLength() external view returns (uint256);

    /**
     * @notice External function to get an array of WabInfo for all successfully deployed and wired tokens.
     * @param _startIndex The index to start looking for tokens.
     * @param _endIndexExclusive The index to end looking for tokens (exclusive).
     * @return info The Wrapped Asset Info.
     *      - `token`: The wrapped token on source.
     *      - `woftAdapter`: The WOFTAdapter on source.
     *      - `woft`: The WOFT on destination.
     */
    function getSupportedTokens(
        uint256 _startIndex,
        uint256 _endIndexExclusive
    ) external view returns (WabInfo[] memory info);

    /**
     * @notice External function to quote the gas needed to pay for the
     *         full deployWOFT transaction in native gas or ZRO token.
     * @param _token The token address to wrap in an WOFTAdapter.
     * @param _extraOptions Additional options passed by the caller.
     * @param _payInLzToken Whether to return fee in ZRO token.
     * @return fee A `MessagingFee` struct containing the calculated gas fee.
     *      - `nativeFee`: The native fee.
     *      - `lzTokenFee`: The lzToken fee.
     */
    function quoteDeployWOFT(
        address _token,
        bytes calldata _extraOptions,
        bool _payInLzToken
    ) external view returns (MessagingFee memory fee);

    /**
     * @notice External function to deploy an WOFTAdapter on the source chain,
     *         ensuring it's only deployed if not already present. Following
     *         this, a transaction is sent to the destination chain to deploy the remote WOFT.
     *         Finally, a callback transaction is sent back to the source chain with the
     *         necessary info for the WOFTAdapter to call setPeer.
     * @param _token The token address to wrap in an WOFTAdapter.
     * @param _extraOptions Additional options passed by the caller.
     * @param _fee The calculated fee for the send() operation.
     *      - `nativeFee`: The native fee.
     *      - `lzTokenFee`: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds.
     * @return receipt LayerZero msg receipt
     *      - `guid`: The unique identifier for the sent message.
     *      - `nonce`: The nonce of the sent message.
     *      - `fee`: The LayerZero fee incurred for the message.
     */
    function deployWOFT(
        address _token,
        bytes calldata _extraOptions,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory receipt);
}
