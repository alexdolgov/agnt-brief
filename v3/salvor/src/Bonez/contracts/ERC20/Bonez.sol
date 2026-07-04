// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract Bonez is ERC20, Ownable(msg.sender) {
    bool public antiWhale = true;
    uint256 antiWhaleRate = 10; // 0.1%
    address public liquidityPool;

    // Mints the totalSupply (2 Billions BNZ) to the deployer.
    constructor() ERC20('Bonez', 'BNZ') {
        _mint(msg.sender, 2000000000 * 10 ** decimals());
    }

    // Sets antiWhale state.
    function setAntiWhale(bool _state) external onlyOwner {
        antiWhale = _state;
    }

    // Sets antiWhale rate.
    function setAntiWhaleRate(uint256 _antiWhaleRate) external onlyOwner {
        antiWhaleRate = _antiWhaleRate;
    }

    // Defines the LP address to enable trading.
    function setLiquidityPool(address _liquidityPool) external onlyOwner {
        liquidityPool = _liquidityPool;
    }

    // Prevents from transfering BNZ if LP address not set or
    function _update(address from, address to, uint256 amount) internal virtual override {
        super._update(from, to, amount);
        if (liquidityPool == address(0)) {
            require(from == owner() || to == owner(), 'LiquidityPool not created yet');
            return;
        }
        // Allow deployer to send any amount and the liquidityPool to receive any amount.
        if (antiWhale && from != owner() && to != liquidityPool) {
            // Require that a receiving wallet will not hold more than `antiWhaleRate/100`% of supply after a transfer while the antiWhale is enabled.
            require(
                balanceOf(to) * 100 <= (totalSupply() * antiWhaleRate) / 100,
                'Anti-whale is activated, cannot transfer'
            );
        }
    }

    // Renounces the contract and pass ownership to address(0) to lock the contract forever.
    function renounceTokenOwnership() external onlyOwner {
        renounceOwnership();
    }
}
