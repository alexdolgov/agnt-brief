// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Origin, MessagingFee } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import { OApp } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OAppCore } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppCore.sol";
import { OAppReceiver } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppReceiver.sol";

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { IMessageRelayer } from "./interfaces/IMessageRelayer.sol";
import { MessageCodec } from "./lib/MessageCodec.sol";
import { ITokenRelayer } from "./interfaces/ITokenRelayer.sol";

/// @title MessageRelayer
/// @notice contract containing logic for relaying messages to LayerZero infrastructure
/// @dev this contract is non-upgradeable and its purpose is to separate the logic for relaying messages
/// from the upgradeable logic of the `TokenRelayer` which holds the BRIDGE_TOKEN
contract MessageRelayer is OApp, IMessageRelayer {
    using MessageCodec for bytes;

    /// @dev address of the TokenRelayer
    address public immutable SRC_TOKEN_RELAYER;

    /// @dev whether the MessageRelayer is retired
    bool public isRetired;

    /// @dev modifier to ensure only the TokenRelayer can call a function
    modifier onlyTokenRelayer() {
        if (_msgSender() != SRC_TOKEN_RELAYER) {
            revert MessageRelayer__OnlyTokenRelayer();
        }
        _;
    }

    modifier onlyWhenActive() {
        if (isRetired) {
            revert MessageRelayer__Retired();
        }
        _;
    }

    constructor(
        address tokenRelayer,
        address lzEndpoint,
        address lzDelegate
    ) OApp(lzEndpoint, lzDelegate) Ownable(tokenRelayer) {
        if (lzDelegate == address(0)) {
            revert Constructor__InvalidLzDelegate();
        }
        if (lzEndpoint == address(0)) {
            revert Constructor__InvalidLzEndpoint();
        }
        if (tokenRelayer == address(0)) {
            revert Constructor__InvalidTokenRelayer();
        }

        SRC_TOKEN_RELAYER = tokenRelayer;
    }

    /// @inheritdoc IMessageRelayer
    function retire() external onlyOwner {
        isRetired = true;

        emit MessageRelayerRetired();
    }

    /// @inheritdoc IMessageRelayer
    function sendMessage(
        uint32 dstEid,
        bytes calldata message,
        bytes calldata options,
        MessagingFee memory fee,
        address refundAddress
    ) external payable onlyTokenRelayer onlyWhenActive {
        _lzSend(dstEid, message, options, fee, refundAddress);

        emit MessageSent(dstEid, message, fee.nativeFee, refundAddress);
    }

    /// @inheritdoc IMessageRelayer
    function getQuote(
        uint32 dstEid,
        bytes memory message,
        bytes memory options,
        bool payInLzToken
    ) external view returns (MessagingFee memory fee) {
        fee = _quote(dstEid, message, options, payInLzToken);
    }

    /// @inheritdoc IMessageRelayer
    function setPeer(
        uint32 dstEid,
        bytes32 dstPath
    ) public override(IMessageRelayer, OAppCore) onlyOwner onlyWhenActive {
        super.setPeer(dstEid, dstPath);
    }

    /// @inheritdoc IMessageRelayer
    function transferOwnership(
        address newOwner
    )
        public
        override(IMessageRelayer, Ownable)
        onlyTokenRelayer
        onlyWhenActive
    {
        _transferOwnership(newOwner);
    }

    /// @inheritdoc OAppReceiver
    /// @dev state is held in the TokenRelayer contract
    function nextNonce(
        uint32,
        bytes32
    ) public view override returns (uint64 nonce) {
        nonce = ITokenRelayer(SRC_TOKEN_RELAYER).getNonce() + 1;
    }

    /// @inheritdoc OAppReceiver
    /// @dev validates and forwards incoming LayerZero messages to the TokenRelayer
    function _lzReceive(
        Origin calldata origin,
        bytes32,
        bytes calldata message,
        address,
        bytes calldata
    ) internal virtual override onlyWhenActive {
        (
            address account,
            uint256 amount,
            uint256 srcLiquidity,
            ITokenRelayer.Action action
        ) = message.decode();

        _relayMessage(origin.nonce, account, amount, srcLiquidity, action);
    }

    /// @notice forwards the message to the TokenRelayer
    /// @dev wrapper function for clarity
    /// @param nonce the nonce of the message
    /// @param account the sender of the message
    /// @param amount the amount of bridge tokens affected by the action
    /// @param srcLiquidity the current total liquidity on the source chain
    /// @param action the type of action taken on the src chain
    function _relayMessage(
        uint64 nonce,
        address account,
        uint256 amount,
        uint256 srcLiquidity,
        ITokenRelayer.Action action
    ) internal {
        ITokenRelayer(SRC_TOKEN_RELAYER).receiveMessage(
            nonce,
            account,
            amount,
            srcLiquidity,
            action
        );
    }
}
