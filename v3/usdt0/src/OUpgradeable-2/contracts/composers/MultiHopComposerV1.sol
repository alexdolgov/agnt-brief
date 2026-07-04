// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

import { IOFT, SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { IOAppComposer } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppComposer.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";

/// @title MultiHopComposerV1 Contract
/// @notice The contract is intended to allow multi hops for OFTS, including USDT0.
contract MultiHopComposerV1 is IOAppComposer, Ownable {
    using SafeERC20 for IERC20;

    event LogRetrieveFunds(address indexed from, address indexed to, uint256 amount, uint256 amountNative);
    event LogStoreAmountOwed(bytes32 indexed from, uint256 amountToken, uint256 amountNative);
    event LogSetReservedGas(uint256 reservedGas);

    IERC20 public immutable token;
    address public immutable endpoint;
    IOFT public immutable oApp;
    address public immutable refundAddress;
    uint256 public reservedGas = 42000;

    struct StoredValue {
        uint128 amountToken;
        uint128 amountNative;
    }
    mapping(bytes32 => StoredValue) public amountOwed;

    /// @notice Constructs the MultiHopComposer contract.
    /// @dev Initializes the contract.
    /// @param _oApp The address of the OApp that is sending the composed message.
    /// @param _endPoint The address of the LZ Endpoint
    /// @param initialOwner The address of the initial owner
    /// @param _refundAddress The address for refunds
    constructor(IOFT _oApp, address _endPoint, address initialOwner, address _refundAddress) Ownable(initialOwner){
        token = IERC20(_oApp.token());
        endpoint = _endPoint;
        oApp = _oApp;
        refundAddress = _refundAddress;
    }

    function _handleError(bytes32 from, uint256 amountToken, uint256 value) internal {
        amountOwed[from].amountToken += uint128(amountToken);
        amountOwed[from].amountNative += uint128(value);
        emit LogStoreAmountOwed(from, amountToken, value);
    }

    function setReservedGas(uint256 _reservedGas) external onlyOwner {
        reservedGas = _reservedGas;
        emit LogSetReservedGas(_reservedGas);
    }

    /// @notice Handles incoming composed messages from LayerZero.
    /// @dev Decodes the message payload to perform a token swap.
    ///      This method expects the encoded compose message to contain the swap amount and recipient address.
    /// @param _oApp The address of the originating OApp.
    /// @param /*_guid*/ The globally unique identifier of the message (unused in this mock).
    /// @param _message The encoded message content in the format of the OFTComposeMsgCodec.
    /// @param /*Executor*/ Executor address (unused in this mock).
    /// @param /*Executor Data*/ Additional data for checking for a specific executor (unused in this mock).
    function lzCompose(
        address _oApp,
        bytes32 /*_guid*/,
        bytes calldata _message,
        address /*Executor*/,
        bytes calldata /*Executor Data*/
    ) external payable override {
        require(_oApp == address(oApp), "!oApp");
        require(msg.sender == endpoint, "!endpoint");
        // Extract the composed message from the delivered message using the MsgCodec
        (address evmRefundAddress, address oft, SendParam memory sendParam, MessagingFee memory messagingFee) = abi.decode(OFTComposeMsgCodec.composeMsg(_message), (address, address, SendParam, MessagingFee));
        
        bytes32 from = OFTComposeMsgCodec.composeFrom(_message);
        uint256 _amountLD = OFTComposeMsgCodec.amountLD(_message);

        if (evmRefundAddress != address(0)) {
            from = OFTComposeMsgCodec.addressToBytes32(evmRefundAddress);
        }

        bool approvalRequired = IOFT(oft).approvalRequired();

        if (approvalRequired) token.forceApprove(oft, _amountLD);

        // override sendParam.amountLD to avoid griefing attacks
        sendParam.amountLD = _amountLD;

        try IOFT(oft).send{gas: gasleft() - reservedGas, value: msg.value}(sendParam, messagingFee, payable(refundAddress)) returns (MessagingReceipt memory, OFTReceipt memory) {
        
        } catch {
            _handleError(from, _amountLD, msg.value);
        }

        if (approvalRequired) token.forceApprove(oft, 0);
        
    }

    function retrieveFunds(address recipient, bool retrieveNative) external {
        bytes32 from = OFTComposeMsgCodec.addressToBytes32(msg.sender);
        uint256 amountToken = amountOwed[from].amountToken;
        amountOwed[from].amountToken = 0;
        token.safeTransfer(recipient, amountToken);
        uint256 amountNative;
        if (retrieveNative) {
            amountNative = amountOwed[from].amountNative;
            amountOwed[from].amountNative = 0;
            payable(recipient).transfer(amountNative);
        }
        emit LogRetrieveFunds(msg.sender, recipient, amountToken, amountNative);
    }

    function retrySend(IOFT oft, SendParam memory sendParam, MessagingFee memory messagingFee, address _refundAddress) external payable {
        bytes32 from = OFTComposeMsgCodec.addressToBytes32(msg.sender);
        bool approvalRequired = oft.approvalRequired();

        uint256 _amountLD = amountOwed[from].amountToken;
        amountOwed[from].amountToken = 0;

        uint256 value = amountOwed[from].amountNative;
        amountOwed[from].amountNative = 0;

        sendParam.amountLD = _amountLD;

        uint256 valueToSend = msg.value + value;
        messagingFee.nativeFee = valueToSend;

        if (approvalRequired) token.forceApprove(address(oft), _amountLD);
        oft.send{value: valueToSend}(sendParam, messagingFee, payable(_refundAddress));
        if (approvalRequired) token.forceApprove(address(oft), 0);
        emit LogRetrieveFunds(msg.sender, address(oft), _amountLD, value);
    }
}