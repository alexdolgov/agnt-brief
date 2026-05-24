pragma solidity ^0.8.25;

import {IRebasingToken} from "./IRebasingToken.sol";

import {IERC20, ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";

import {console} from "forge-std/console.sol";

abstract contract RebasingToken is ERC20Upgradeable, IRebasingToken {
    error TransferNotAllowed();

    function __RebasingToken_init(string memory name, string memory symbol) internal onlyInitializing {
        __ERC20_init(name, symbol);
    }

    function balanceOf(address account) public view override(IERC20, ERC20Upgradeable) returns (uint256) {
        return convertToAssets(sharesOf(account), assetsPerShare());
    }

    function sharesOf(address account) public view returns (uint256) {
        return super.balanceOf(account) + pendingDepositShares(account);
    }

    function convertToShares(uint256 assets, uint256 _assetsPerShare) public pure virtual returns (uint256) {
        return Math.mulDiv(assets, PRECISION(), _assetsPerShare);
    }

    function convertToAssets(uint256 shares, uint256 _assetsPerShare) public pure virtual returns (uint256) {
        return Math.mulDiv(shares, _assetsPerShare, PRECISION());
    }

    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable) {
        if (from != address(0) && to != address(0)) revert TransferNotAllowed();
        super._update(from, to, value);
    }

    function assetsPerShare() public view virtual returns (uint256);

    function pendingDepositShares(address account) public view virtual returns (uint256);

    function PRECISION() public pure virtual returns (uint256);
}
