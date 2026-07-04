// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {IStoneVault} from "../interfaces/IStoneVault.sol";
import {IStone} from "../interfaces/IStone.sol";
import {IBevmBridge} from "../interfaces/IBevmBridge.sol";

contract BevmDepositBridge is ReentrancyGuard, Ownable2Step {
    address public immutable stone;
    address payable public immutable vault;
    address immutable bridge;

    uint64 immutable chainID = 11501;

    event BridgeTo(
        address indexed srcAddr,
        string dstAddr,
        uint256 etherAmount,
        uint256 stoneAmount,
        uint256 gasPaid
    );

    constructor(address _stone, address payable _vault, address _bridge) {
        stone = _stone;
        vault = _vault;
        bridge = _bridge;
    }

    function bridgeTo(
        bytes32 _swapId,
        string calldata _dstAddress,
        uint256 _gasPaidForCrossChain
    ) external payable nonReentrant returns (uint256 stoneMinted) {
        require(msg.value != 0, "wrong amount");

        IStoneVault stoneVault = IStoneVault(vault);
        stoneMinted = stoneVault.deposit{value: msg.value}();

        require(stoneMinted > _gasPaidForCrossChain, "not enough");

        IBevmBridge.TokenParameters memory token_params;
        token_params.from_token = stone;
        token_params.token_amount = stoneMinted;
        token_params.est_fee = _gasPaidForCrossChain;

        TransferHelper.safeApprove(stone, bridge, stoneMinted);

        IBevmBridge bevmBridge = IBevmBridge(bridge);
        bevmBridge.bridgeOut(_swapId, chainID, _dstAddress, token_params);

        emit BridgeTo(
            msg.sender,
            _dstAddress,
            msg.value,
            stoneMinted,
            _gasPaidForCrossChain
        );
    }

    function withdrawToken(
        address _token,
        address _to,
        uint256 _amount
    ) external onlyOwner {
        TransferHelper.safeTransfer(_token, _to, _amount);
    }
}
