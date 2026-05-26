// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IBank} from "../interfaces/IBank.sol";
import { IOFT, SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
interface ITransferReceiver {
    function onTokenTransfer(address, uint256, bytes calldata) external returns (bool);
}

interface I677 {
    event Transfer(address indexed from, address indexed to, uint256 value, bytes data);
}

contract OStableWrapper {
    using SafeERC20 for IERC20;


    event SendFromWrapper(bytes32 indexed to, uint256 amountLD, MessagingReceipt mReceipt, OFTReceipt oReceipt);
    event Withdraw(address indexed from, address indexed recipient, uint256 amountIn, uint256 amountOut);
    event Deposit(address indexed from, address indexed recipient, uint256 amountIn, uint256 amountOut);

    IERC20 public immutable token;
    IOFT public immutable oft;
    IBank public immutable bank;
    constructor(address _token, IBank _bank, IOFT _oft) {
        token = IERC20(_token);
        bank = _bank;
        oft = _oft;
    }

    function convertToNative(uint256 amount) internal pure returns (uint256) {
        return amount * 1e12;
    }

    function convertToWrapped(uint256 amount) internal pure returns (uint256) {
        return amount / 1e12;
    }

    receive() external payable {
        deposit();
    }

    function deposit() public payable {
        depositTo(msg.sender);
    }

    function depositTo(address recipient) public payable returns (uint256 amountOut){
        require(msg.value % 1e12 == 0, "OStableWrapper: invalid amount");
        bank.burn(address(this), msg.value);
        amountOut = convertToWrapped(msg.value);
        token.safeTransfer(recipient, amountOut);
        emit Deposit(msg.sender, recipient, msg.value, amountOut);
    }

    /// @dev `msg.value` of native token sent to this contract grants `to` account a matching transfer of USDT0 tokens,
    /// after which a call is executed to an ERC677-compliant contract with the `data` parameter.
    /// Emits {Transfer} event.
    /// Returns boolean value indicating whether operation succeeded.
    /// For more information on {transferAndCall} format, see https://github.com/ethereum/EIPs/issues/677.
    function depositToAndCall(address recipient, bytes calldata data) external payable returns (bool success) {
        uint256 amountOut = depositTo(recipient);

        emit I677.Transfer(msg.sender,recipient, amountOut, data);
        return ITransferReceiver(recipient).onTokenTransfer(msg.sender, amountOut, data);
    }

    /**
    * @notice Sends tokens cross-chain via the OFT.
    * @param _sendParam Struct containing send parameters.
    * @param _fee LayerZero messaging fee information.
    * @param _refundAddress Address to refund any overpaid fees.
    * @return mReceipt LayerZero messaging receipt.
    * @return oReceipt OFT receipt.
    * @dev The caller must have amountLD in gas tokens in addition to msg.value
    */
    function send(SendParam calldata _sendParam, MessagingFee calldata _fee, address _refundAddress) external payable returns (MessagingReceipt memory mReceipt, OFTReceipt memory oReceipt) {
        bank.burn(msg.sender, convertToNative(_sendParam.amountLD));
        (mReceipt, oReceipt) = oft.send{value: msg.value}(_sendParam, _fee, _refundAddress);
        emit SendFromWrapper(_sendParam.to, _sendParam.amountLD, mReceipt, oReceipt);
    }

    function withdraw(uint256 amount) external {
        withdrawTo(msg.sender, amount);
    }

    function withdrawToWithPermit(address recipient, uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external {
        IERC20Permit(address(token)).permit(msg.sender, address(this), amount, deadline, v, r, s);
        withdrawTo(recipient, amount);
    }

    function withdrawTo(address recipient, uint256 amount) public returns (uint256 amountOut) {
        token.safeTransferFrom(msg.sender, address(this), amount);
        amountOut = convertToNative(amount);
        bank.mint(recipient, amountOut);
        emit Withdraw(msg.sender, recipient, amount, amountOut);
    }

}
