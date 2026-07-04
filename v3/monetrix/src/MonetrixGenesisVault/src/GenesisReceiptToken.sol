// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GenesisReceiptToken is ERC20 {
    address public immutable vault;

    error NotVault();
    error NonTransferable();
    error ZeroAddress();

    modifier onlyVault() {
        if (msg.sender != vault) revert NotVault();
        _;
    }

    constructor(address _vault) ERC20("Monetrix Genesis Receipt", "mgUSDC") {
        if (_vault == address(0)) revert ZeroAddress();
        vault = _vault;
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function transfer(address, uint256) public pure override returns (bool) {
        revert NonTransferable();
    }

    function transferFrom(address, address, uint256) public pure override returns (bool) {
        revert NonTransferable();
    }

    function mint(address to, uint256 amount) external onlyVault {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external onlyVault {
        _burn(from, amount);
    }

    function _update(address from, address to, uint256 amount) internal override {
        if (from != address(0) && to != address(0)) revert NonTransferable();
        super._update(from, to, amount);
    }
}
