// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {ERC4626} from "solady/src/tokens/ERC4626.sol";
import {Ownable} from "solady/src/auth/Ownable.sol";

/// @dev Internal vault to capture rebasing value. Deposits/withdrawals restricted to single deployer.
contract AssetVault is ERC4626, Ownable {
    error TransferNotAllowed();

    address private _asset;
    string private _name;
    string private _symbol;

    function asset() public view override returns (address) {
        return _asset;
    }

    function name() public view override returns (string memory) {
        return _name;
    }

    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    constructor(address asset_, string memory name_, string memory symbol_) {
        _initializeOwner(msg.sender);

        _asset = asset_;
        _name = name_;
        _symbol = symbol_;
    }

    function deposit(uint256 assets, address to) public virtual override onlyOwner returns (uint256 shares) {
        shares = super.deposit(assets, to);
    }

    function mint(uint256 shares, address to) public virtual override onlyOwner returns (uint256 assets) {
        assets = super.mint(shares, to);
    }

    function withdraw(uint256 assets, address to, address owner)
        public
        virtual
        override
        onlyOwner
        returns (uint256 shares)
    {
        shares = super.withdraw(assets, to, owner);
    }

    function redeem(uint256 shares, address to, address owner)
        public
        virtual
        override
        onlyOwner
        returns (uint256 assets)
    {
        assets = super.redeem(shares, to, owner);
    }

    function transfer(address, uint256) public virtual override returns (bool) {
        revert TransferNotAllowed();
    }

    function transferFrom(address, address, uint256) public virtual override returns (bool) {
        revert TransferNotAllowed();
    }
}
