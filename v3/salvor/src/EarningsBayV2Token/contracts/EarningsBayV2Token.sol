// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EarningsBayV2Token is ERC20, Ownable {
    address public liquidityPool;
    address public dao;
    uint256 public startTime;
    uint256 public restrictedPeriod = 600;

    mapping(address => mapping(uint8 => uint256)) public buys;

    constructor(
        string memory _name,
        string memory _symbol,
        address _dao
    ) ERC20(_name, _symbol) Ownable(msg.sender) {
        startTime = block.timestamp;
        dao = _dao;
    }

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    function setLiquidityPool(address _liquidityPool) external onlyOwner {
        liquidityPool = _liquidityPool;
    }

    function tradingActive() public view returns (bool) {
        return block.timestamp >= startTime;
    }

    function maxBuy() public view returns (uint256) {
        return totalSupply() / 200;
    }

    function tradingRestricted() public view returns (bool) {
        return
            tradingActive() &&
            block.timestamp <= (startTime + restrictedPeriod);
    }

    function tradingPhase() public view returns (uint256) {
        if (tradingRestricted()) {
            return 1;
        } else {
            return 2;
        }
    }

    function restrictedSecondsRemaining() public view returns (uint256) {
        if (tradingRestricted()) {
            return (startTime + restrictedPeriod) - block.timestamp;
        } else {
            return 0;
        }
    }

    function _update(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._update(from, to, amount);

        // Skip restrictions for minting (from == address(0)) and DAO operations
        if (
            from == address(0) ||
            to == liquidityPool ||
            to == dao ||
            from == dao
        ) {
            return;
        }

        if (tradingPhase() == 1) {
            buys[to][1] += amount;
            require(
                buys[to][1] <= maxBuy(),
                "Restricted period amount exceeded"
            );
        }
    }
}
