// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IONFT721, MessagingFee, MessagingReceipt, SendParam } from "@layerzerolabs/onft-evm/contracts/onft721/interfaces/IONFT721.sol";

interface ICustom {
    function setApprovalForAllFromToByAdmin(address from, address to, bool approved) external;

    function transferOwnership(address newOwner) external;

    function adminSend(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory);
}

// transfer ownership
contract DepositSupporter is Ownable {
    constructor() Ownable(msg.sender) {}

    function approveForAll(address _token, address _operator, address[] calldata _from) external onlyOwner {
        for (uint256 i = 0; i < _from.length; i++) {
            ICustom(_token).setApprovalForAllFromToByAdmin(_from[i], _operator, true);
        }
    }

    // func: aprove for this adapter -> call quoteSend -> call adminSend

    function batchSend(
        address _onftAdapter,
        SendParam[] calldata _sendParams,
        MessagingFee[] calldata _fee
    ) external payable onlyOwner {
        require(_sendParams.length == _fee.length, "input mismatch");
        for (uint256 i = 0; i < _sendParams.length; i++) {
            ICustom(_onftAdapter).adminSend{ value: _fee[i].nativeFee }(_sendParams[i], _fee[i], msg.sender);
        }
    }

    // ownership transfer
    function transferOwnership(address _contract, address _newOwner) external onlyOwner {
        ICustom(_contract).transferOwnership(_newOwner);
    }
}
