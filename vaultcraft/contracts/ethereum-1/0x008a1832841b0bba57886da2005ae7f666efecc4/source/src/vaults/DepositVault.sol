// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ERC4626, ERC20} from "solmate/mixins/ERC4626.sol";

contract DepositVault is ERC4626 {
    constructor(
        ERC20 _asset,
        string memory _name,
        string memory _symbol
    ) ERC4626(_asset, _name, _symbol) {}

    function totalAssets() public view override returns (uint256) {
        return asset.balanceOf(address(this));
    }
}
