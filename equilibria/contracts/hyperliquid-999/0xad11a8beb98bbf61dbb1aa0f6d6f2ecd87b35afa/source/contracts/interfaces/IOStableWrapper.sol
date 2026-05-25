// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IOFT, SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { IBank } from "../interfaces/IBank.sol";

interface IOStableWrapper {
    event Transfer(address indexed from, address indexed to, uint256 value, bytes data);

    function token() external view returns (IERC20);

    function oft() external view returns (IOFT);

    function bank() external view returns (IBank);

    function deposit() external payable;

    function depositTo(address recipient) external payable;

    function depositToAndCall(address recipient, bytes calldata data) external payable returns (bool success);

    /**
    * @notice Sends tokens cross-chain via the OFT.
    * @param _sendParam Struct containing send parameters.
    * @param _fee LayerZero messaging fee information.
    * @param _refundAddress Address to refund any overpaid fees.
    * @return mReceipt LayerZero messaging receipt.
    * @return oReceipt OFT receipt.
    * @dev The caller must have amountLD in gas tokens in addition to msg.value
    */
    function send(SendParam calldata _sendParam, MessagingFee calldata _fee, address _refundAddress)
        external
        payable
        returns (MessagingReceipt memory mReceipt, OFTReceipt memory oReceipt);

    function withdraw(uint256 amount) external;

    function withdrawTo(address recipient, uint256 amount) external;
}
