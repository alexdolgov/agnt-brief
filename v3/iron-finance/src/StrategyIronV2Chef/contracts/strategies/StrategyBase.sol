// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../interfaces/IStrategy.sol";

abstract contract StrategyBase is IStrategy, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public override owner; // the only address can deposit, withdraw
    uint256 public override lastEarnBlock;
    address public override wantAddress;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "!owner");
        _;
    }

    modifier canHarvest() {
        require(msg.sender == owner, "!owner && !harvester");
        _;
    }

    modifier canDeposit() {
        require(msg.sender == owner, "!owner");
        _;
    }

    modifier harvested {
        _;
        lastEarnBlock = block.number;
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) public virtual override onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function setOwner(address _owner) external override {
        require(msg.sender == owner, "!owner");
        owner = _owner;
    }
}
