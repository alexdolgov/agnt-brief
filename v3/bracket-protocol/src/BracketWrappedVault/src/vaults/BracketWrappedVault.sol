// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IBracketVaultV2} from "./IBracketVaultV2.sol";
import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {OwnableUpgradeable} from "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";


contract BracketWrappedVault is ERC20Upgradeable, OwnableUpgradeable, PausableUpgradeable {
    IBracketVaultV2 public bracketVault;

    uint8 private _decimals;

    error InsufficientShares();
    error ZeroAmount();
    error ZeroShares();
    error ZeroAddress();
    error ZeroAssets();

    constructor() {
        _disableInitializers();
    }

    function initialize(address _bracketVault, address _owner, string memory _name, string memory _symbol) external initializer {
        if (_bracketVault == address(0)) revert ZeroAddress();

        bracketVault = IBracketVaultV2(_bracketVault);
        // _decimals = bracketVault.decimals();
        _decimals = 18;

        __ERC20_init(_name, _symbol);
        __Ownable_init(_owner);
        __Pausable_init();
    }

    function wrap(uint256 amount) public whenNotPaused {
        if (amount == 0) revert ZeroAmount();

        uint256 shares = bracketVault.convertToShares(amount, bracketVault.assetsPerShare());
        if (shares == 0) revert ZeroShares();

        uint256 userShares = bracketVault.sharesOf(msg.sender);

        if (shares > userShares) revert InsufficientShares();

        bracketVault.transferFrom(msg.sender, address(this), amount);

        _mint(msg.sender, shares);
    }

    function unwrap(uint256 amount) public whenNotPaused {
        if (amount == 0) revert ZeroAmount();

        _burn(msg.sender, amount);

        uint256 assets = bracketVault.convertToAssets(amount, bracketVault.assetsPerShare());
        if (assets == 0) revert ZeroAssets();

        bracketVault.transfer(msg.sender, assets);
    }

    function convertToAssets(uint256 shares) public view returns (uint256) {
        return bracketVault.convertToAssets(shares);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }    
}