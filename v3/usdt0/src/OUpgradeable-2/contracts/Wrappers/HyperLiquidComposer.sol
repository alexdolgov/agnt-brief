// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IOAppComposer } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppComposer.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { IOFT } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
interface IHyperliquidExtension is IERC20 {
    event SetTrusted(address indexed _address, bool _isTrusted);

    function setTrusted(address _address, bool _isTrusted) external;

    function transferWithHop(address intermediate, address recipient, uint256 amount) external;

    function oftContract() external view returns (address);
}

/// @title HyperLiquidComposer Contract
/// @notice The contract is intended to transfer tokens to the HL L1
contract HyperLiquidComposer is IOAppComposer {

    event Unwrap(address indexed user, address tokenOut, uint256 amount);

    IHyperliquidExtension public immutable token;
    address constant public HL_NATIVE_TRANSFER = 0x2222222222222222222222222222222222222222;
    address public immutable endpoint;
    address public immutable oApp;

    /// @notice Constructs the HyperLiquidComposer contract.
    /// @dev Initializes the contract.
    /// @param _endpoint LayerZero Endpoint address
    /// @param _oApp The address of the OApp that is sending the composed message.
    constructor(address _endpoint, address _oApp) {
        require(_endpoint != address(0), "Zero address");
        require(_oApp != address(0), "Zero address");

        token = IHyperliquidExtension(IOFT(_oApp).token());
        endpoint = _endpoint;
        oApp = _oApp;
    }

    /// @notice Handles incoming composed messages from LayerZero.
    /// @dev This method expects the encoded compose message to contain the recipient address.
    /// @param _oApp The address of the originating OApp.
    /// @param /*_guid*/ The globally unique identifier of the message.
    /// @param _message The encoded message content in the format of the OFTComposeMsgCodec.
    /// @param /*Executor*/ Executor address.
    /// @param /*Executor Data*/ Additional data for checking for a specific executor.
    function lzCompose(
        address _oApp,
        bytes32 /*_guid*/,
        bytes calldata _message,
        address /*Executor*/,
        bytes calldata /*Executor Data*/
    ) external payable override {
        require(_oApp == oApp, "!oApp");
        require(msg.sender == endpoint, "!endpoint");
        // Extract the composed message from the delivered message using the MsgCodec
        address _receiver = abi.decode(OFTComposeMsgCodec.composeMsg(_message), (address));
        uint256 _amountLD = OFTComposeMsgCodec.amountLD(_message);
        // Execute the token swap by transferring the specified amount to the receiver
        token.transferWithHop(_receiver, HL_NATIVE_TRANSFER, _amountLD);

        // Emit an event to log the token swap details
        emit Unwrap(_receiver, address(token), _amountLD);
    }
}