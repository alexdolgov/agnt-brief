// SPDX-License-Identifier: GPLv3-or-later

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./BridgeToken.sol";

contract LPBridgeRemote is Ownable, Pausable {
    using SafeERC20 for IERC20;

    mapping(address => mapping(address => uint)) public userAmount;
    mapping(uint => BackTask) public tasks;
    mapping(address => address) public tokenMapping; // hub -> remote
    mapping(address => address) public reverseTokenMapping; // remote -> hub

    uint public fee = 10000000000000000 wei; // 0.01 ETH
    address public feeReceiver;

    uint public receiveCrossTaskId;
    uint public sendBackCrossTaskId;

    struct Task {
        uint taskId;
        address token;
        string name;
        string symbol;
        uint amount;
        address to;
    }

    struct BackTask {
        uint taskId;
        address token;
        uint amount;
        address to;
    }

    event LogReceiveCrossTask(address indexed addr, address indexed remoteToken, uint indexed taskId, address token, uint amount);
    event LogSendBackCrossTask(address indexed addr, address indexed remoteToken, uint indexed taskId, address token, uint amount);

    function setCrossFee(uint fee_) public onlyOwner {
        fee = fee_;
    }

    function setFeeReceiver(address receiver_) public onlyOwner {
        feeReceiver = receiver_;
    }

    constructor() {
        feeReceiver = msg.sender;
    }

    function setTokenMapping(address origin, address target) public onlyOwner {
        tokenMapping[origin] = target;
        reverseTokenMapping[target] = origin;
    }

    function handleCrossTasks(Task[] calldata tasks_) external onlyOwner {
        for (uint i = 0; i < tasks_.length; i++) {
            Task memory task = tasks_[i];
            require(task.taskId - 1 == receiveCrossTaskId++, "LPBridgeRemote::handleCrossTasks: WRONG_TASK_ID");

            mintToken(task.token, task.name, task.symbol, task.amount, task.to);
            userAmount[task.to][task.token] += task.amount;
            emit LogReceiveCrossTask(task.to, tokenMapping[task.token], task.taskId, task.token, task.amount);
        }
    }

    function requestBackCrossTask(address remoteToken, uint amount) external payable whenNotPaused {
        require(msg.value == fee, "LPBridgeRemote::requestBackCrossTask: INVALID_FEE");
        payable(feeReceiver).transfer(msg.value);
        address token = reverseTokenMapping[remoteToken];
        require(token != address(0x0), "LPBridgeRemote::requestBackCrossTask: WRONG_TOKEN");
        IERC20(remoteToken).safeTransferFrom(msg.sender, address(this), amount);
        BridgeToken(remoteToken).burn(amount);

        tasks[sendBackCrossTaskId] = BackTask({
        taskId : ++sendBackCrossTaskId,
        token : token,
        amount : amount,
        to : msg.sender
        });

        userAmount[msg.sender][token] -= amount;

        emit LogSendBackCrossTask(msg.sender, remoteToken, sendBackCrossTaskId, token, amount);
    }

    function mintToken(address originToken, string memory name, string memory symbol, uint amount, address to) internal {
        if (tokenMapping[originToken] == address(0x0)) {
            // create new bridge token
            BridgeToken newToken = new BridgeToken(name, symbol, amount);
            IERC20(newToken).transfer(to, amount);
            tokenMapping[originToken] = address(newToken);
            reverseTokenMapping[address(newToken)] = originToken;
        } else {
            BridgeToken bridgeToken = BridgeToken(tokenMapping[originToken]);
            bridgeToken.mint(to, amount);
        }
    }

    function setPause(bool _status) public onlyOwner {
        if (_status && !paused()) {
            _pause();
        }

        if (!_status && paused()) {
            _unpause();
        }
    }
}
