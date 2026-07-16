// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "../../common/Constants.sol";
import "../base/StrategyBase.sol";
import "../../../interfaces/layerZero/IOFT.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract StrategyZero is StrategyBase {
    using SafeERC20 for IERC20;

    // The address of the L1 receiver
    address public L1Receiver;

    // The balance of usdt/usdc
    uint256 public assetBalance;

    // The endPoint Id of the eth mainnet of layer zero
    uint32 public constant ENDPOINT_ID = 30101;

    // The oft adapter contract of usdt0
    IOFT public constant OFT_ADAPTER = IOFT(0xcb768e263FB1C62214E7cab4AA8d036D76dc59CC);

    event AssetsUpdated(uint256 prevAssets, uint256 newAssets);
    event SendUSDT0(bytes32 guid, uint64 nonce, uint256 amountSend, uint256 fee, uint256 refundAssets);

    /**
     * @dev Initialize various parameters of the Vault contract. override for approve
     * @param _initBytes The encoded initialization parameters.
     */
    function initialize(bytes calldata _initBytes) external override initializer {
        (address admin_, address rebalancer_) = abi.decode(_initBytes, (address, address));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        __Ownable_init(admin_);

        vault = msg.sender;
        rebalancer = rebalancer_;
        IERC20(USDT0).safeIncreaseAllowance(address(OFT_ADAPTER), type(uint256).max);
    }

    /**
     * @dev update the L1 receiver address
     * @param _newL1Receiver the new L1 receiver address
     */
    function updateL1Receiver(address _newL1Receiver) external onlyOwner {
        if (_newL1Receiver == address(0)) revert Errors.InvalidL1Receiver();
        L1Receiver = _newL1Receiver;
    }

    /**
     * @dev Transfer tokens to the Vault.
     * @param _token The address of the token to transfer.
     * @param _amount The amount of tokens to transfer.
     */
    function transferToVault(address _token, uint256 _amount) external override onlyRebalancer {
        IERC20(_token).safeTransfer(vault, _amount);
        assetBalance -= _amount;
        emit TransferToVault(_token, _amount);
    }

    /**
     * @dev Transfers funds from the vault contract to this contract.
     * This function is called by the vault to move tokens into this contract.
     * It uses the `safeTransferFrom` function from the SafeERC20 library to ensure the transfer is successful.
     * @param _token The address of the token to be transferred.
     * @param _amount The amount of tokens to be transferred.
     * @return A boolean indicating whether the transfer was successful.
     */
    function onTransferIn(address _token, uint256 _amount) external onlyVault returns (bool) {
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        assetBalance += _amount;
        emit OnTransferIn(_token, _amount);
        return true;
    }

    /**
     * @dev incrementally update the L2 strategy net assets
     * @param _increment the increment of strategy net assets
     * @param _isIncrease whether the increment is positive or negative
     */
    function incrementalUpdateAssets(uint256 _increment, bool _isIncrease) external onlyRebalancer {
        if (_isIncrease) {
            emit AssetsUpdated(assetBalance, assetBalance + _increment);
            assetBalance += _increment;
        } else {
            emit AssetsUpdated(assetBalance, assetBalance - _increment);
            assetBalance -= _increment;
        }
    }

    /**
     * @dev force update the L2 strategy net assets
     * @param _newAssets the new strategy net assets
     */
    function forceUpdateStrategyNetAssets(uint256 _newAssets) external onlyRebalancer {
        emit AssetsUpdated(assetBalance, _newAssets);
        assetBalance = _newAssets;
    }

    /**
     * @dev Send USDT0 to eth mainnet to mint SyrupUSDT.
     * @param _amount The amount of USDT0 to send.
     * @return messageId_ The message id of the message sent.
     */
    function sendUSDT0(uint256 _amount) external payable onlyRebalancer returns (bytes32 messageId_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(USDT0).balanceOf(address(this));
        }

        if (L1Receiver == address(0)) revert Errors.InvalidL1Receiver();
        SendParam memory sendParam_ = SendParam({
            dstEid: ENDPOINT_ID,
            to: bytes32(uint256(uint160(L1Receiver))),
            amountLD: _amount,
            minAmountLD: _amount,
            extraOptions: "",
            composeMsg: "",
            oftCmd: ""
        });

        MessagingFee memory messagingFee_ = OFT_ADAPTER.quoteSend(sendParam_, false);
        (MessagingReceipt memory messageReceipt_, OFTReceipt memory oftReceipt_) =
            OFT_ADAPTER.send{value: messagingFee_.nativeFee}(sendParam_, messagingFee_, msg.sender);
        messageId_ = messageReceipt_.guid;

        // refund all remain balance to msg.sender
        uint256 refundAssets_ = address(this).balance;
        if (refundAssets_ > 0) {
            (bool success,) = payable(msg.sender).call{value: refundAssets_}("");
            require(success, "refund failed");
        }

        emit SendUSDT0(
            messageId_, messageReceipt_.nonce, oftReceipt_.amountSentLD, messageReceipt_.fee.nativeFee, refundAssets_
        );
    }

    /**
     * @dev Get the fee of sending USDT0 to eth mainnet.
     * @param _amount The amount of USDT0 to send.
     * @return fee_ The message fee.
     */
    function getFeeOfSendUSDT0(uint256 _amount) external view returns (uint256 fee_) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(USDT0).balanceOf(address(this));
        }

        if (L1Receiver == address(0)) revert Errors.InvalidL1Receiver();
        SendParam memory sendParam_ = SendParam({
            dstEid: ENDPOINT_ID,
            to: bytes32(uint256(uint160(L1Receiver))),
            amountLD: _amount,
            minAmountLD: _amount,
            extraOptions: "",
            composeMsg: "",
            oftCmd: ""
        });

        MessagingFee memory messagingFee_ = OFT_ADAPTER.quoteSend(sendParam_, false);
        fee_ = messagingFee_.nativeFee;
    }

    function getNetAssets() external view returns (uint256) {
        return assetBalance;
    }
}
