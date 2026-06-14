// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SafeERC20,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {
    ERC4626,
    IERC4626
} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

import {
    IOFT,
    SendParam,
    MessagingFee,
    MessagingReceipt,
    OFTReceipt
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IOAppCore } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import { ILayerZeroEndpointV2 } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

import { IUnderlyingOFT } from "../../interfaces/IUnderlyingOFT.sol";
import { IVaultComposerSync } from "../../interfaces/IVaultComposerSync.sol";

abstract contract VaultComposerSync is
    Initializable,
    IVaultComposerSync,
    ReentrancyGuard
{
    using OFTComposeMsgCodec for bytes;
    using OFTComposeMsgCodec for bytes32;
    using SafeERC20 for IERC20;

    /**
     * @notice Storage layout for upgradeable contract.
     * @param vault Target ERC4626 vault used for share minting and burning.
     * @param underlyingOft OFT contract that represents the underlying asset.
     * @param underlyingToken ERC20 used by UnderlyingOFT.
     * @param endpoint LayerZero endpoint trusted for compose calls.
     * @param localEid LayerZero endpoint id for the local chain.
     */
    struct VaultComposerSyncStorage {
        IERC4626 vault;
        address underlyingOft;
        address underlyingToken;
        address endpoint;
        uint32 localEid;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.VaultComposerSync")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VAULT_COMPOSER_SYNC_STORAGE_LOCATION =
        0x0547bf30cac86716723f9098631557b8ec4ea137f23c7b6b7b154c7fd6947600;

    function _getVaultComposerSyncStorage()
        internal
        pure
        returns (VaultComposerSyncStorage storage $)
    {
        assembly {
            $.slot := VAULT_COMPOSER_SYNC_STORAGE_LOCATION
        }
    }

    /**
     * @notice Sets the vault, OFT, token, endpoint, and eid values.
     * @param _vault ERC4626 vault address.
     * @param _underlyingOFT UnderlyingOFT contract for the underlying asset.
     * @param _underlyingToken ERC20 used by UnderlyingOFT.
     * @param _endpoint LayerZero endpoint address.
     * @param _localEid Local LayerZero endpoint id.
     */
    function __VaultComposerSync_init(
        address _vault,
        address _underlyingOFT,
        address _underlyingToken,
        address _endpoint,
        uint32 _localEid
    ) public onlyInitializing {
        __VaultComposerSync_init_unchained(
            _vault,
            _underlyingOFT,
            _underlyingToken,
            _endpoint,
            _localEid
        );
    }

    /**
     * @notice Stores the config values and sets approvals for vault and OFT transfers.
     * @param _vault ERC4626 vault address.
     * @param _underlyingOft UnderlyingOFT contract for the underlying asset.
     * @param _underlyingToken ERC20 used by UnderlyingOFT.
     * @param _endpoint LayerZero endpoint address.
     * @param _localEid Local LayerZero endpoint id.
     */
    function __VaultComposerSync_init_unchained(
        address _vault,
        address _underlyingOft,
        address _underlyingToken,
        address _endpoint,
        uint32 _localEid
    ) public onlyInitializing {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        $.vault = IERC4626(_vault);
        $.underlyingOft = _underlyingOft;
        $.underlyingToken = _underlyingToken;
        $.endpoint = _endpoint;
        $.localEid = _localEid;

        IERC20($.underlyingOft).forceApprove(_vault, type(uint256).max);
        IERC20($.underlyingToken).forceApprove(
            _underlyingOft,
            type(uint256).max
        );
    }

    /**
     * @notice Handles LayerZero compose operations for vault transactions with automatic refund functionality
     * @dev This composer is designed to handle refunds to an EOA address and not a contract
     * @dev Any revert in handleCompose() causes a refund back to the src EXCEPT for InsufficientMsgValue
     * @param _composeSender The OFT contract address used for refunds, must be either $.underlyingOft or $.shareOft
     * @param _guid LayerZero's unique tx id (created on the source tx)
     * @param _message Decomposable bytes object into [composeHeader][composeMessage]
     */
    function lzCompose(
        address _composeSender, // The OFT used on refund, also the vaultIn token.
        bytes32 _guid,
        bytes calldata _message, // expected to contain a composeMessage = abi.encode(SendParam hopSendParam,uint256 minMsgValue)
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) external payable virtual override {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        if (msg.sender != $.endpoint) revert OnlyEndpoint(msg.sender);
        if (
            _composeSender != $.underlyingOft &&
            _composeSender != address($.vault)
        ) revert OnlyValidComposeCaller(_composeSender);

        bytes32 composeFrom = _message.composeFrom();
        uint256 amount = _message.amountLD();
        bytes memory composeMsg = _message.composeMsg();

        /// @dev try...catch to handle the compose operation. if it fails we refund the user
        try
            this.handleCompose{ value: msg.value }(
                _composeSender,
                composeFrom,
                composeMsg,
                amount
            )
        {
            emit Sent(_guid);
        } catch (bytes memory _err) {
            /// @dev A revert where the msg.value passed is lower than the min expected msg.value is handled separately
            /// This is because it is possible to re-trigger from the endpoint the compose operation with the right msg.value
            if (bytes4(_err) == InsufficientMsgValue.selector) {
                assembly {
                    revert(add(32, _err), mload(_err))
                }
            }

            _refund(_composeSender, _message, amount, tx.origin);
            emit Refunded(_guid);
        }
    }

    /**
     * @notice Handles the compose operation for OFT (Omnichain Fungible Token) transactions
     * @dev This function can only be called by the contract itself (self-call restriction)
     *      Decodes the compose message to extract SendParam and minimum message value
     *      Routes to either deposit or redeem flow based on the input OFT token type
     * @param _oftIn The OFT token whose funds have been received in the lzReceive associated with this lzTx
     * @param _composeFrom The bytes32 identifier of the compose sender
     * @param _composeMsg The encoded message containing SendParam and minMsgValue
     * @param _amount The amount of tokens received in the lzReceive associated with this lzTx
     */
    function handleCompose(
        address _oftIn,
        bytes32 _composeFrom,
        bytes memory _composeMsg,
        uint256 _amount
    ) external payable {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        /// @dev Can only be called by self
        if (msg.sender != address(this)) revert OnlySelf(msg.sender);

        /// @dev SendParam defines how the composer will handle the user's funds
        /// @dev The minMsgValue is the minimum amount of msg.value that must be sent, failing to do so will revert and the transaction will be retained in the endpoint for future retries
        (SendParam memory sendParam, uint256 minMsgValue) = abi.decode(
            _composeMsg,
            (SendParam, uint256)
        );

        if (msg.value < minMsgValue)
            revert InsufficientMsgValue(minMsgValue, msg.value);

        if (_oftIn == $.underlyingOft) {
            _depositAndSend(_composeFrom, _amount, sendParam, tx.origin);
        } else {
            _redeemAndSend(
                _composeFrom,
                _amount,
                sendParam,
                tx.origin,
                msg.value
            );
        }
    }

    /**
     * @dev Internal function that deposits underlying and sends shares to another chain
     * @param _depositor The depositor (bytes32 format to account for non-evm addresses)
     * @param _underlyingAmount The number of underlying to deposit
     * @param _sendParam Parameter that defines how to send the shares
     * @param _refundAddress Address to receive excess payment of the LZ fees
     * @return receipt The messaging receipt from LayerZero
     * @return oftReceipt The OFT receipt with amount details
     * @notice This function first deposits the underlyingOFT to mint shares, validates the shares meet minimum slippage requirements,
     *         then sends the minted shares cross-chain using the OFT (Omnichain Fungible Token) protocol
     * @notice The _sendParam.amountLD is updated to the actual share amount minted, and minAmountLD is reset to 0 for the send operation
     */
    function _depositAndSend(
        bytes32 _depositor,
        uint256 _underlyingAmount,
        SendParam memory _sendParam,
        address _refundAddress
    )
        internal
        virtual
        returns (MessagingReceipt memory receipt, OFTReceipt memory oftReceipt)
    {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        uint256 shareAmount = _deposit(_depositor, _underlyingAmount);
        _assertSlippage(shareAmount, _sendParam.minAmountLD);

        _sendParam.amountLD = shareAmount;
        _sendParam.minAmountLD = 0;

        (receipt, oftReceipt) = _send(
            address($.vault),
            _sendParam,
            _refundAddress,
            msg.value
        );

        emit Deposited(
            _depositor,
            _sendParam.to,
            _sendParam.dstEid,
            _underlyingAmount,
            shareAmount
        );
    }
    /**
     * @notice Internal function to deposit underlyingOFT into the vault.
     * @param _underlyingAmount Amount of underlyingOFT deposited.
     * @return shareAmount Amount of shares minted.
     */
    function _deposit(
        bytes32 /*_depositor*/,
        uint256 _underlyingAmount
    ) internal virtual returns (uint256 shareAmount) {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        shareAmount = $.vault.deposit(_underlyingAmount, address(this));
    }

    /**
     * @dev Internal function that redeems shares for underlying and sends them cross-chain
     * @param _redeemer The address of the redeemer in bytes32 format
     * @param _shareAmount The number of shares to redeem
     * @param _sendParam Parameter that defines how to send the underlying
     * @param _refundAddress Address to receive excess payment of the LZ fees
     * @param _nativeFee Required native fee for processing
     * @notice This function first redeems the specified share amount for the underlyingOFT,
     *         validates the received amount against slippage protection, then initiates a cross-chain
     *         transfer of the redeemed underlyingOFT using the OFT (Omnichain Fungible Token) protocol
     * @notice The minAmountLD in _sendParam is reset to 0 after slippage validation since the
     *         actual amount has already been verified
     */
    function _redeemAndSend(
        bytes32 _redeemer,
        uint256 _shareAmount,
        SendParam memory _sendParam,
        address _refundAddress,
        uint256 _nativeFee
    ) internal virtual {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        uint256 underlyingAmount = _redeem(_redeemer, _shareAmount);
        _assertSlippage(underlyingAmount, _sendParam.minAmountLD);

        _sendParam.amountLD = underlyingAmount;
        _sendParam.minAmountLD = 0;

        _send($.underlyingOft, _sendParam, _refundAddress, _nativeFee);
        emit Redeemed(
            _redeemer,
            _sendParam.to,
            _sendParam.dstEid,
            _shareAmount,
            underlyingAmount
        );
    }

    /**
     * @dev Internal function to redeem shares from the vault
     * @param _shareAmount The number of shares to redeem from the vault
     * @return underlyingAmount The amount of underlyingOFT received from the vault redemption
     * @notice This function is expected to be overridden by the inheriting contract to implement custom/nonERC4626 redemption logic
     */
    function _redeem(
        bytes32 /*_redeemer*/,
        uint256 _shareAmount
    ) internal virtual returns (uint256 underlyingAmount) {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        underlyingAmount = $.vault.redeem(
            _shareAmount,
            address(this),
            address(this)
        );
    }

    /**
     * @param _amountLD The amount of tokens to send
     * @param _minAmountLD The minimum amount of tokens that must be sent to avoid slippage
     * @notice This function checks if the amount sent is less than the minimum amount
     *         If it is, it reverts with SlippageExceeded error
     * @notice This function can be overridden to implement custom slippage logic
     */
    function _assertSlippage(
        uint256 _amountLD,
        uint256 _minAmountLD
    ) internal view virtual {
        if (_amountLD < _minAmountLD)
            revert SlippageExceeded(_amountLD, _minAmountLD);
    }

    /**
     * @notice Quotes the send operation for the given OFT and SendParam
     * @dev Revert on slippage will be thrown by the OFT and not _assertSlippage
     * @param _from The "sender address" used for the quote
     * @param _targetOFT The OFT contract address to quote
     * @param _vaultInAmount The amount of tokens to send to the vault
     * @param _sendParam The parameters for the send operation
     * @return MessagingFee The estimated fee for the send operation
     * @dev This function can be overridden to implement custom quoting logic
     */
    function quoteSend(
        address _from,
        address _targetOFT,
        uint256 _vaultInAmount,
        SendParam memory _sendParam
    ) public view virtual returns (MessagingFee memory) {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        /// @dev When quoting the underlying OFT, the function input is shares and the SendParam.amountLD
        /// into quoteSend() should be underlying (and vice versa)
        if (_targetOFT == $.underlyingOft) {
            uint256 maxRedeem = $.vault.maxRedeem(_from);
            if (_vaultInAmount > maxRedeem) {
                revert ERC4626.ERC4626ExceededMaxRedeem(
                    _from,
                    _vaultInAmount,
                    maxRedeem
                );
            }

            _sendParam.amountLD = $.vault.previewRedeem(_vaultInAmount);
        } else {
            uint256 maxDeposit = $.vault.maxDeposit(_from);
            if (_vaultInAmount > maxDeposit) {
                revert ERC4626.ERC4626ExceededMaxDeposit(
                    _from,
                    _vaultInAmount,
                    maxDeposit
                );
            }

            _sendParam.amountLD = $.vault.previewDeposit(_vaultInAmount);
        }
        return IOFT(_targetOFT).quoteSend(_sendParam, false);
    }

    /**
     * @dev Internal function that handles token transfer to the recipient
     * @dev If the destination eid is the same as the current eid, it transfers the tokens directly to the recipient
     * @dev If the destination eid is different, it sends a LayerZero cross-chain transaction
     * @param _oft The OFT contract address to use for sending
     * @param _sendParam The parameters for the send operation
     * @param _refundAddress Address to receive excess payment of the LZ fees
     * @param _nativeFee Required native fee for processing
     * @return receipt The messaging receipt from LayerZero (empty for local transfers)
     * @return oftReceipt The OFT receipt with amount details
     */
    function _send(
        address _oft,
        SendParam memory _sendParam,
        address _refundAddress,
        uint256 _nativeFee
    )
        internal
        returns (MessagingReceipt memory receipt, OFTReceipt memory oftReceipt)
    {
        VaultComposerSyncStorage storage $ = _getVaultComposerSyncStorage();
        if (_sendParam.dstEid == $.localEid) {
            /// @dev Can do this because _oft is validated before this function is called
            if (_nativeFee > 0) revert NoMsgValueExpected();
            if ($.underlyingOft == _oft) {
                IUnderlyingOFT($.underlyingOft).withdraw(_sendParam.amountLD);
                IERC20($.underlyingToken).safeTransfer(
                    _sendParam.to.bytes32ToAddress(),
                    _sendParam.amountLD
                );
            } else {
                IERC20(_oft).safeTransfer(
                    _sendParam.to.bytes32ToAddress(),
                    _sendParam.amountLD
                );
            }

            oftReceipt = OFTReceipt({
                amountSentLD: _sendParam.amountLD,
                amountReceivedLD: _sendParam.amountLD
            });
        } else {
            // crosschain send
            return
                IOFT(_oft).send{ value: _nativeFee }(
                    _sendParam,
                    MessagingFee(_nativeFee, 0),
                    _refundAddress
                );
        }
    }

    /**
     * @dev Internal function to refund input tokens to sender on source during a failed transaction
     * @param _oft The OFT contract address used for refunding
     * @param _message The original message that was sent
     * @param _amount The amount of tokens to refund
     * @param _refundAddress Address to receive the refund
     */
    function _refund(
        address _oft,
        bytes calldata _message,
        uint256 _amount,
        address _refundAddress
    ) internal virtual {
        /// @dev Extracted from the _message header. Will always be part of the _message since it is created by lzReceive
        SendParam memory refundSendParam;
        refundSendParam.dstEid = OFTComposeMsgCodec.srcEid(_message);
        refundSendParam.to = OFTComposeMsgCodec.composeFrom(_message);
        refundSendParam.amountLD = _amount;

        IOFT(_oft).send{ value: msg.value }(
            refundSendParam,
            MessagingFee(msg.value, 0),
            _refundAddress
        );
    }

    receive() external payable {}
}
