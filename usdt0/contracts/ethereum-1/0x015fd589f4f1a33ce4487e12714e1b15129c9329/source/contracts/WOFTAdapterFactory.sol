// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { EnforcedOptionParam } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import { MessagingFee, OApp, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

// OZ imports
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

// WOFT imports
import { Helpers } from "./utils/Helpers.sol";
import { IWOFTAdapterFactory, WabInfo } from "./interfaces/IWOFTAdapterFactory.sol";
import { WOFTAdapter } from "./WOFTAdapter.sol";

/**
 * @title WOFTAdapterFactory
 * @dev This WOFTAdapterFactory contract will permissionlessly deploy an WOFTAdapter for an ERC20 on the source chain,
 * then will deploy a WOFT on the destination chain, and finally will wire them together all in one transaction using
 * an ABA Pattern. Users then can use the WOFTAdapter to transfer liquidity to the destination chain.
 */
contract WOFTAdapterFactory is IWOFTAdapterFactory, OApp, ReentrancyGuard {
    // @dev Send Msg Types for OFTCore.SEND and OFTCore.SEND_AND_CALL.
    uint16 public constant SEND = 1;
    uint16 public constant SEND_AND_CALL = 2;

    // @dev The paired remote EID.
    uint32 public immutable REMOTE_EID;

    bytes public factoryEnforcedOptions;
    bytes public woftSendEnforcedOptions;
    bytes public woftSendAndCallEnforcedOptions;

    // @dev 'tokens' references the existing erc20 deployment on THIS network
    address[] public tokens; // @notice Tokens successfully deployed and wired.
    mapping(address token => address woftAdapter) public tokenToWoftAdapter;
    mapping(address token => bool isBlocked) public blockedTokens; // @notice Tokens that can't be bridged.

    /**
     * @dev Constructor to initialize the WOFTAdapterFactory.
     * @param _endpoint The address of the LOCAL LayerZero endpoint.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     * @param _remoteEid The paired remote EID.
     */
    constructor(address _endpoint, address _delegate, uint32 _remoteEid) OApp(_endpoint, _delegate) Ownable(_delegate) {
        REMOTE_EID = _remoteEid;
    }

    /**
     * @dev External only owner function to set blockedTokens.
     * @param _token The token to block or unblock.
     * @param _isBlocked Flag to indicate whether token is blocked.
     *
     * @dev This will only block future deployments.
     */
    function setTokenBlocked(address _token, bool _isBlocked) external onlyOwner {
        blockedTokens[_token] = _isBlocked;
        emit TokenBlocked(_token, _isBlocked);
    }

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
    ) external onlyOwner {
        factoryEnforcedOptions = _factoryEnforcedOptions;
        woftSendEnforcedOptions = _woftSendEnforcedOptions;
        woftSendAndCallEnforcedOptions = _woftSendAndCallEnforcedOptions;

        emit EnforcedOptionsSet(_factoryEnforcedOptions, _woftSendEnforcedOptions, _woftSendAndCallEnforcedOptions);
    }

    /**
     * @notice External function to get the length of the tokens array.
     * @return uint256 The length of the tokens array.
     */
    function getTokensLength() external view returns (uint256) {
        return tokens.length;
    }

    /**
     * @notice External function to get an array of WabInfo for all successfully deployed and wired tokens.
     * @param _startIndex The index to start looking for tokens.
     * @param _endIndex The index to end looking for tokens (exclusive).
     * @return info The Wrapped Asset Info.
     *      - `token`: The wrapped token on source.
     *      - `woftAdapter`: The WOFTAdapter on source.
     *      - `woft`: The WOFT on destination.
     */
    function getSupportedTokens(uint256 _startIndex, uint256 _endIndex) external view returns (WabInfo[] memory info) {
        if (_endIndex <= _startIndex || _endIndex > tokens.length) revert InvalidRange();

        info = new WabInfo[](_endIndex - _startIndex);
        for (uint256 i = _startIndex; i < _endIndex; i++) {
            info[i - _startIndex] = WabInfo(
                tokens[i],
                tokenToWoftAdapter[tokens[i]],
                WOFTAdapter(tokenToWoftAdapter[tokens[i]]).peers(REMOTE_EID)
            );
        }
    }

    /**
     * @notice External function to quote the gas needed to pay for the full
     *         deployWOFT transaction in native gas or ZRO token.
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
    ) external view returns (MessagingFee memory fee) {
        // Step 1: Check if token is blocked or wire status is pending.
        _assertCanDeployWOFT(_token);

        // Step 2: Build message and options.
        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_token, address(0x0), 0, _extraOptions);

        // Step 3: Quote the lz fee needed to pay for the A->B transaction.
        fee = _quote(REMOTE_EID, message, options, _payInLzToken);
    }

    /**
     * @notice External function to deploy an WOFTAdapter on the source chain, ensuring
     *         it's only deployed if not already present OR blocked. Following this, a transaction is
     *         sent to the destination chain to deploy the remote WOFT.
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
    ) external payable nonReentrant returns (MessagingReceipt memory receipt) {
        // Step 1: Check if token is blocked or wire status is pending.
        _assertCanDeployWOFT(_token);

        // Step 2: Deploy WOFTAdapter.
        address woftAdapter = address(
            new WOFTAdapter(
                _token, // _token
                address(this.endpoint()), // _lzEndpoint
                owner(), //_delegate
                address(this) // _factory
            )
        );

        // Step 3: Update tokenToWoftAdapter map.
        tokenToWoftAdapter[_token] = woftAdapter;
        emit WOFTAdapterDeployed(woftAdapter);

        // Step 4: Build message and options for ABA call.
        (bytes memory message, bytes memory options) = _buildMsgAndOptions(
            _token,
            woftAdapter,
            WOFTAdapter(woftAdapter).sharedDecimals(),
            _extraOptions
        );

        // Step 5: Initiate the ABA call to deploy WOFT on destination chain by sending a message to remote chain.
        receipt = _lzSend(REMOTE_EID, message, options, _fee, payable(_refundAddress));
    }

    /**
     * @dev Internal function override to handle incoming messages from remote chain.
     * @param payload The encoded message payload being received.
     */
    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 /*_guid*/,
        bytes calldata payload,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        // Step 1: Decode and get corresponding addresses.
        (address token, address woft) = abi.decode(payload, (address, address));
        address woftAdapter = tokenToWoftAdapter[token];

        // Step 2: Set Enforced Options for Msg Type SEND and SEND_AND_CALL on WOFTAdapter.
        EnforcedOptionParam[] memory enforcedOptionsParams = new EnforcedOptionParam[](2);
        enforcedOptionsParams[0] = EnforcedOptionParam(REMOTE_EID, SEND, woftSendEnforcedOptions);
        enforcedOptionsParams[1] = EnforcedOptionParam(REMOTE_EID, SEND_AND_CALL, woftSendAndCallEnforcedOptions);
        WOFTAdapter(woftAdapter).setEnforcedOptions(enforcedOptionsParams);

        // Step 3: Call setPeer on WOFTAdapter.
        WOFTAdapter(woftAdapter).setPeer(REMOTE_EID, Helpers.addressToBytes32(woft));

        // Step 4: Add token to bridgeable tokens array.
        tokens.push(token);

        // Step 5: Emit event.
        emit WireStatusComplete(token);
    }

    /**
     * @dev Internal function to verify if the token can be deployed.
     * @param _token The token address to wrap in an WOFTAdapter.
     *
     * ie. NOT pending/complete wire status OR blocked.
     */
    function _assertCanDeployWOFT(address _token) internal view {
        address woftAdapter = tokenToWoftAdapter[_token];

        if (woftAdapter != address(0x0)) {
            if (WOFTAdapter(woftAdapter).peers(REMOTE_EID) != 0) {
                revert WireStatusIsAlreadyCompleted();
            }
            revert WireStatusIsPending();
        }

        if (blockedTokens[_token]) {
            revert TokenIsBlocked();
        }
    }

    /**
     * @dev Internal function to build the message and options.
     * @param _token The token address for the WOFTAdapter.
     * @param _woftAdapter The WOFTAdapter address.
     * @param _sharedDecimals The shared decimals of the woftAdapter.
     * @param _extraOptions Additional options passed by the caller.
     * @return message The encoded message.
     * @return options The encoded options.
     */
    function _buildMsgAndOptions(
        address _token,
        address _woftAdapter,
        uint8 _sharedDecimals,
        bytes calldata _extraOptions
    ) internal view virtual returns (bytes memory message, bytes memory options) {
        message = abi.encode(
            _token,
            _woftAdapter,
            IERC20Metadata(_token).name(),
            IERC20Metadata(_token).symbol(),
            IERC20Metadata(_token).decimals(),
            _sharedDecimals
        );

        // @dev Combine enforced options with extra options. Assumes the extraOptions are well formed and of type3
        // @dev Remove the first 2 bytes containing the type and combine with the enforced options.
        options = _extraOptions.length >= 2
            ? bytes.concat(factoryEnforcedOptions, _extraOptions[2:])
            : factoryEnforcedOptions;
    }
}
