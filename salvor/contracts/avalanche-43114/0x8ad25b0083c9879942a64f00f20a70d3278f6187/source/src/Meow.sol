// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Meow is ERC20, Ownable {
    uint256 public limitLiftTimestamp;

    uint256 public max_transfer;
    address public liquidityPool;
    address public router;

    mapping(address => uint256) private _holderLastTransferTimestamp;

    constructor() ERC20("MeowCat", "MEOW") {
        // total supply is 9 9s because cats have 9 lives
        _mint(owner(), 100_000_000 * 10 ** 18);

		max_transfer = totalSupply() / 100;
    }

    function setLiquidityPool(address _liquidityPool) external onlyOwner {
        liquidityPool = _liquidityPool;

        limitLiftTimestamp = block.timestamp + 2 hours;
    }

    function setRouter(address _router) external onlyOwner {
        router = _router;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        // If liquidityPool is address(0) we've not yet enabled trading
        if (liquidityPool == address(0)) {
            require(
                from == owner() || to == owner(),
                "Patience - Trading Not Started Yet!"
            );
            return;
        }

        // Attempt to stop a single large contract sniper from buying a lot and sending to many addresses.
        if (
            from != owner() &&
            to != owner() &&
            block.timestamp < limitLiftTimestamp
        ) {
            if (to != address(router) && to != address(liquidityPool)) {
                require(
                    _holderLastTransferTimestamp[tx.origin] < block.number,
                    "_transfer:: Transfer Delay enabled.  Only one purchase per block allowed."
                );
                _holderLastTransferTimestamp[tx.origin] = block.number;
            }
        }

        // Allow deployer (owner) to send/receive any amount and the liquidityPool to receive any amount.
        // This allows for loading of the LP, and for people to sell tokens into the LP whilst limit is active.
        if (
            block.timestamp < limitLiftTimestamp &&
            from != owner() &&
            to != liquidityPool
        ) {
            // Require that a receiving wallet will not hold more than 1% of supply after a transfer whilst wallet limit is in effect
            require(balanceOf(to) + amount <= max_transfer, "Max per wallet exceeded!");
        }
    }
}
