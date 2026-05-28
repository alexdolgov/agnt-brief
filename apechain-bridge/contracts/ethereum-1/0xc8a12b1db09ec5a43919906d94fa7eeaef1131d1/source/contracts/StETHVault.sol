// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {IwstEth} from "./interfaces/IwstETH.sol";

contract StETHVault is ERC4626 {
    address public immutable stEth;
    IwstEth public immutable wstEth;

    constructor(address _stEth, address _wstEth) ERC4626(IERC20(_stEth)) ERC20("Wrapped Staked ETH Vault", "vwstETH") {
        stEth = _stEth;
        wstEth = IwstEth(_wstEth);
    }

    function decimals() public view virtual override returns (uint8) {
        return IERC20Metadata(address(wstEth)).decimals();
    }

    function _convertToShares(uint256 assets, Math.Rounding /*rounding*/ ) internal view override returns (uint256) {
        return wstEth.getWstETHByStETH(assets);
    }

    function _convertToAssets(uint256 shares, Math.Rounding /*rounding*/ ) internal view override returns (uint256) {
        return wstEth.getStETHByWstETH(shares);
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual override {
        require(IERC20(stEth).transferFrom(caller, address(this), assets), "transferFrom failed");
        require(IERC20(stEth).approve(address(wstEth), assets), "approve failed");
        shares = wstEth.wrap(assets);
        _mint(receiver, shares);
    }

    function _withdraw(address caller, address receiver, address owner, uint256 assets, uint256 shares)
        internal
        virtual
        override
    {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        _burn(owner, shares);
        assets = wstEth.unwrap(shares);
        require(IERC20(stEth).transfer(receiver, assets), "transfer failed");
    }
}
