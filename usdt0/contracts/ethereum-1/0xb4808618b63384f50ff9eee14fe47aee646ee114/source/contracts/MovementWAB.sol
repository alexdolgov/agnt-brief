// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { OAppOptionsType3 } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import { MessagingFee, OApp, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

// OZ imports
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20Metadata, IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

// Wrapped Asset Bridge imports
import { IMovementWAB, SendInfo, TokenDetails, TokenStatus } from "./interfaces/IMovementWAB.sol";

/**
 * @title MovementWAB
 * @dev Movement Wrapped Asset Bridge (WAB) contract for managing token bridging across chains using LayerZero.
 */
contract MovementWAB is OApp, OAppOptionsType3, ReentrancyGuard, IMovementWAB {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    /// @notice Constants for message types
    uint16 public constant SEND = 1;
    uint16 public constant SEND_AND_CALL = 2;
    uint16 public constant DEPLOY_ASSET = 3;

    uint8 internal constant DEFAULT_SHARED_DECIMALS = 6;

    /// @notice Remote chain endpoint ID
    uint32 public immutable REMOTE_EID;

    /// @notice Tokens successfully deployed and wired
    address[] public tokens;
    /// @notice Token details
    mapping(address token => TokenDetails) public tokenDetails;

    /**
     * @dev Initializes the MovementWAB contract.
     * @param _endpoint The LayerZero endpoint address.
     * @param _delegate The delegate/owner address.
     * @param _remoteEid The remote chain endpoint ID.
     */
    constructor(address _endpoint, address _delegate, uint32 _remoteEid) OApp(_endpoint, _delegate) Ownable(_delegate) {
        REMOTE_EID = _remoteEid;
    }

    /**
     * @notice Block or unblock a token for bridging.
     * @dev Only callable by the owner.
     * @param _token The address of the token.
     * @param _isBlocked Boolean indicating whether the token is blocked.
     */
    function setTokenBlocked(address _token, bool _isBlocked) external onlyOwner {
        tokenDetails[_token].isBlocked = _isBlocked;
        emit TokenBlocked(_token, _isBlocked);
    }

    /**
     * @notice Get the total number of supported tokens.
     * @return The number of supported tokens.
     */
    function getTokensLength() external view returns (uint256) {
        return tokens.length;
    }

    /**
     * @notice Get a list of supported tokens within a specified range.
     * @param _startIndex The starting index.
     * @param _endIndex The ending index (exclusive).
     * @return supportedTokens An array of supported token addresses.
     */
    function getSupportedTokens(
        uint256 _startIndex,
        uint256 _endIndex
    ) external view returns (address[] memory supportedTokens) {
        if (_endIndex <= _startIndex || _endIndex > tokens.length) revert InvalidRange();

        supportedTokens = new address[](_endIndex - _startIndex);
        for (uint256 i = _startIndex; i < _endIndex; i++) {
            supportedTokens[i - _startIndex] = tokens[i];
        }
    }

    /// =============================== Deploy Functions =================================

    /**
     * @notice Quote the fee for deploying a token on the remote chain.
     * @param _token The token address.
     * @param _extraOptions Additional options for deployment.
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return msgFee The estimated messaging fee.
     */
    function quoteDeployToken(
        address _token,
        bytes calldata _extraOptions,
        bool _payInLzToken
    ) external view returns (MessagingFee memory msgFee) {
        // @dev Builds the options and OFT message to quote in the endpoint.
        (bytes memory message, bytes memory options) = _buildDeployMsgAndOptions(_token, 0, _extraOptions);
        return _quote(REMOTE_EID, message, options, _payInLzToken);
    }

    /**
     * @notice Deploy a token on the remote chain.
     * @param _token The token address.
     * @param _extraOptions Additional options for deployment.
     * @param _fee The messaging fee.
     * @param _refundAddress Address to refund any excess fee.
     * @return receipt The messaging receipt.
     */
    function deployToken(
        address _token,
        bytes calldata _extraOptions,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable nonReentrant returns (MessagingReceipt memory receipt) {
        // @dev Read this from storage once
        TokenDetails memory details = tokenDetails[_token];

        // @dev Check if token can be deployed
        if (details.isBlocked) revert TokenIsBlocked();
        if (details.status == TokenStatus.Pending) revert TokenIsPending();
        if (details.status == TokenStatus.Complete) revert TokenIsComplete();

        // @dev Set the token's status to Pending to prevent duplicated 'Deploys'
        details.status = TokenStatus.Pending;

        // @dev Determine the decimal conversion rate for normalizing token amounts
        uint8 localDecimals = IERC20Metadata(_token).decimals();
        uint8 sharedDecimals = DEFAULT_SHARED_DECIMALS > localDecimals ? localDecimals : DEFAULT_SHARED_DECIMALS;
        details.conversionRate = (10 ** (localDecimals - sharedDecimals)).toUint128();

        // @dev Write the token detail updates to storage
        tokenDetails[_token] = details;

        // @dev Build the deploy message and options
        (bytes memory message, bytes memory options) = _buildDeployMsgAndOptions(_token, sharedDecimals, _extraOptions);

        // @dev Send the deploy message to the remote chain
        receipt = _lzSend(REMOTE_EID, message, options, _fee, payable(_refundAddress));

        emit TokenDeployPending(_token);
    }

    /**
     * @dev Build the message and options for deploying a token.
     * @param _token The token address.
     * @param _sharedDecimals The shared decimals.
     * @param _extraOptions Additional options for deployment.
     * @return message The encoded message.
     * @return options The encoded options.
     */
    function _buildDeployMsgAndOptions(
        address _token,
        uint8 _sharedDecimals,
        bytes calldata _extraOptions
    ) internal view virtual returns (bytes memory message, bytes memory options) {
        // @dev Determine the tokens metadata to be relayed to the remote chain for deployment
        bytes memory name = bytes(IERC20Metadata(_token).name());
        bytes memory symbol = bytes(IERC20Metadata(_token).symbol());

        // @dev Due to limitations of the Movement implementation, the max lengths are 32 and 10 respectively
        if (name.length > 32) {
            assembly {
                mstore(name, 32)
            }
        }
        if (symbol.length > 10) {
            assembly {
                mstore(symbol, 10)
            }
        }

        // @dev Supply the name length so we can deal with dynamic length strings AND use 'encodePacked'
        message = abi.encodePacked(
            bytes32(uint256(uint160((_token)))),
            _sharedDecimals,
            name.length.toUint64(),
            name,
            symbol
        );

        options = combineOptions(REMOTE_EID, DEPLOY_ASSET, _extraOptions);
    }

    /// =============================== Token Functions =================================

    /**
     * @notice Quote the fee for sending tokens.
     * @param _params The parameters of the token transfer.
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return msgFee The estimated messaging fee.
     */
    function quoteSendTokens(
        SendInfo calldata _params,
        bool _payInLzToken
    ) external view returns (MessagingFee memory msgFee) {
        // @dev Builds the options and OFT message to quote in the endpoint.
        (bytes memory message, bytes memory options) = _buildSendMsgAndOptions(_params, 0);
        return _quote(REMOTE_EID, message, options, _payInLzToken);
    }

    /**
     * @notice Send tokens to a remote chain.
     * @param _params The parameters of the token transfer.
     * @param _fee The messaging fee.
     * @param _refundAddress Address to refund any excess fee.
     * @return msgReceipt The messaging receipt.
     * @return amountLD The transferred amount in local decimals.
     */
    function sendTokens(
        SendInfo calldata _params,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable virtual nonReentrant returns (MessagingReceipt memory msgReceipt, uint256 amountLD) {
        TokenDetails memory details = tokenDetails[_params.token];

        // @dev Check the blocked list to see if transfers have been paused
        if (details.isBlocked) revert TokenIsBlocked();

        // @dev Check that the token has been deployed and is ready for transfers
        if (details.status != TokenStatus.Complete) revert TokenIsNotComplete();

        // @dev Remove dust by normalizing token amounts
        uint64 amountSD = (_params.amountLD / details.conversionRate).toUint64();
        amountLD = amountSD * uint256(details.conversionRate);

        // @dev check that the slippage is within the allowed range
        if (amountLD < _params.minAmountLD) revert SlippageExceeded();

        // @dev WARNING:: This assumes that token transfers are lossless. i.e. no fees on transfers
        // For tokens with fees, they will NOT be fully solvent, and will require a different wrapping contract.

        // @dev Lock tokens by transferring them to this contract
        IERC20(_params.token).safeTransferFrom(msg.sender, address(this), amountLD);

        // @dev Build the message and options
        (bytes memory message, bytes memory options) = _buildSendMsgAndOptions(_params, amountSD);

        // @dev Send the message to the LayerZero endpoint
        msgReceipt = _lzSend(REMOTE_EID, message, options, _fee, _refundAddress);

        emit TokenSent(msgReceipt.guid, _params.token, msg.sender, amountLD);
    }

    /**
     * @dev Build the message and options for sending tokens.
     * @param _params The parameters of the token transfer.
     * @param _amountSD The amount of tokens in shared decimals.
     * @return message The encoded message.
     * @return options The encoded options.
     */
    function _buildSendMsgAndOptions(
        SendInfo calldata _params,
        uint64 _amountSD
    ) internal view returns (bytes memory message, bytes memory options) {
        if (_params.composeMsg.length > 0) {
            // @dev Encode the sender's address for identification on the destination chain
            message = abi.encodePacked(
                bytes32(uint256(uint160((_params.token)))),
                _params.to,
                _amountSD,
                bytes32(uint256(uint160((msg.sender)))),
                _params.composeMsg
            );
            options = combineOptions(REMOTE_EID, SEND_AND_CALL, _params.extraOptions);
        } else {
            message = abi.encodePacked(bytes32(uint256(uint160((_params.token)))), _params.to, _amountSD);
            options = combineOptions(REMOTE_EID, SEND, _params.extraOptions);
        }
    }

    /// =============================== LzFunctions =================================

    /**
     * @notice Handle incoming LayerZero messages.
     * @dev Decodes the message and processes token transfers or compose messages.
     * @param _origin The origin of the message.
     * @param _guid The unique identifier of the message.
     * @param _message The message payload.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override nonReentrant {
        // @dev Extract the token and recipient addresses from the message
        address token = address(uint160(uint256(bytes32(_message[0:32]))));
        address to = address(uint160(uint256(bytes32(_message[32:64]))));

        // @dev Load the token details from storage
        TokenDetails memory details = tokenDetails[token];

        // @dev Convert shared decimals to local decimals
        uint256 amountLD = uint64(bytes8(_message[64:72])) * uint256(details.conversionRate);

        // @dev ANY message received for a given token address means the remote side has acknowledged the setup.
        if (details.status == TokenStatus.Pending) {
            // @dev Mark token setup as complete, this allows outbound transfers to occur
            details.status = TokenStatus.Complete;
            // @dev Write the token detail updates to storage
            tokenDetails[token] = details;
            // @dev Add token to the list of supported tokens, so the UI can list all available tokens
            tokens.push(token);
            emit TokenDeployComplete(token);
        }

        // @dev If the message specifies a transfer amount, send the tokens to the recipient
        if (amountLD > 0) {
            IERC20(token).safeTransfer(to, amountLD);
            emit TokenReceived(_guid, token, to, amountLD);
        }

        // @dev Conditionally handle the compose message
        if (_message.length > 72) {
            bytes memory composeMsgEncoded = abi.encodePacked(
                _origin.nonce,
                _origin.srcEid,
                token,
                amountLD, // The actual balance of tokens received
                _message[72:]
            );

            endpoint.sendCompose(to, _guid, 0 /* the index of the composed message */, composeMsgEncoded);
        }
    }

    /**
     * @notice Get the total value locked (TVL) for a token.
     * @param _token The address of the token.
     * @return The total value locked for the token.
     */
    function tvl(address _token) external view returns (uint256) {
        return IERC20(_token).balanceOf(address(this));
    }
}
