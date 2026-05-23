// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract DelayedTransferVault is Ownable {
    IERC20 public asset;
    uint256 public constant DELAY = 10 days;

    struct TransferRequest {
        uint256 amount;
        uint256 requestTime;
        bool executed;
    }

    TransferRequest[] public transferRequests;

    event TransferRequested(uint256 indexed requestId, uint256 amount, uint256 requestTime);
    event TransferExecuted(uint256 indexed requestId, uint256 amount, uint256 executeTime);

    constructor(address _asset) Ownable(msg.sender) {
        require(_asset != address(0), "Invalid token address");
        asset = IERC20(_asset);
    }

    // Function to request a transfer
    function requestTransfer(uint256 amount) external onlyOwner {
        require(amount > 0, "Amount must be greater than zero");
        require(asset.balanceOf(address(this)) >= amount, "Insufficient balance");

        transferRequests.push(TransferRequest({
            amount: amount,
            requestTime: block.timestamp,
            executed: false
        }));

        emit TransferRequested(transferRequests.length - 1, amount, block.timestamp);
    }

    // Function to execute a transfer after delay
    function executeTransfer(uint256 requestId) external onlyOwner {
        require(requestId < transferRequests.length, "Invalid request ID");
        TransferRequest storage request = transferRequests[requestId];
        require(!request.executed, "Transfer already executed");
        require(block.timestamp >= request.requestTime + DELAY, "Transfer delay not met");

        request.executed = true;
        require(asset.transfer(owner(), request.amount), "Transfer failed");

        emit TransferExecuted(requestId, request.amount, block.timestamp);
    }

    function getTotalUnexecutedRequestsAmount() public view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < transferRequests.length; i++) {
            if (!transferRequests[i].executed) {
                total += transferRequests[i].amount;
            }
        }
        return total;
    }

    function getTransferRequests() external view returns (TransferRequest[] memory) {
        return transferRequests;
    }

    //Rescue tokens
    function rescueToken(address _token) public onlyOwner {
        require(_token != address(asset), "Token not allowed!");

        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }
}