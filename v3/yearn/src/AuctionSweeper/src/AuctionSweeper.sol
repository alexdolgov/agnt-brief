// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Governance} from "@periphery/utils/Governance.sol";
import {IStrategyInterface} from "./interfaces/IStrategyInterface.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract AuctionSweeper is Governance {
    using SafeERC20 for ERC20;

    mapping(address => mapping(address => uint256)) public kicked;

    constructor(address _governance) Governance(_governance) {}

    function want() public view returns (address) {
        return IStrategyInterface(msg.sender).asset();
    }

    function kickAuction(address _strategy, address _token) public onlyGovernance {
        uint256 kickedAmount = IStrategyInterface(_strategy).auctionKicked(_token);
        kicked[_strategy][_token] += kickedAmount;
    }

    function sweep(address _token, address _to, uint256 _amount) public onlyGovernance {
        uint256 balance = ERC20(_token).balanceOf(address(this));
        if (balance < _amount) {
            _amount = balance;
        }
        ERC20(_token).safeTransfer(_to, _amount);
    }
}