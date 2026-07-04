// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IOAppComposer } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppComposer.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { OStableWrapper } from "./OStableWrapper.sol";

/// @title StableComposer Contract
/// @notice The contract is intended to unwrap USDT0 into native gas tokens.
contract StableComposer is IOAppComposer {
    using SafeERC20 for IERC20;

    event Unwrap(address indexed user, address tokenOut, uint256 amount);

    IERC20 public immutable token;
    OStableWrapper public immutable wrapper;
    address public immutable endpoint;
    address public immutable oApp;

    /// @notice Constructs the StableComposer contract.
    /// @dev Initializes the contract.
    /// @param _token The address of the token
    /// @param _wrapper The address of the Wrapper
    /// @param _endpoint LayerZero Endpoint address
    /// @param _oApp The address of the OApp that is sending the composed message.
    constructor(address _token, OStableWrapper _wrapper, address _endpoint, address _oApp) {
        token = IERC20(_token);
        // Approve the wrapper to allow unwraps
        token.forceApprove(address(_wrapper), type(uint256).max);
        wrapper = _wrapper;
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
        wrapper.withdrawTo(_receiver, _amountLD);

        // Emit an event to log the token swap details
        emit Unwrap(_receiver, address(token), _amountLD);
    }
}