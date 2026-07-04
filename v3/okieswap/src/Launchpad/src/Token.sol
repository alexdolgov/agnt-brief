// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import './interfaces/ITokenFactory.sol';
import '@openzeppelin-upgradeable/contracts/access/OwnableUpgradeable.sol';
import '@openzeppelin-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol';

contract Token is ERC20Upgradeable, OwnableUpgradeable {
    ITokenFactory public tokenFactory;

    error TransferNotAllowed();

    function initialize(string memory name, string memory symbol, address _tokenFactory) external initializer {
        __ERC20_init(name, symbol);
        __Ownable_init(msg.sender);

        tokenFactory = ITokenFactory(_tokenFactory);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(address to, uint256 amount) public onlyOwner {
        _burn(to, amount);
    }

    function _update(address from, address to, uint256 value) internal override {
        if (
            from != address(0) &&
            to != address(0) &&
            tokenFactory.tokens(address(this)) == ITokenFactory.TokenStatus.FUNDING
        ) {
            revert TransferNotAllowed();
        }

        super._update(from, to, value);
    }
}
