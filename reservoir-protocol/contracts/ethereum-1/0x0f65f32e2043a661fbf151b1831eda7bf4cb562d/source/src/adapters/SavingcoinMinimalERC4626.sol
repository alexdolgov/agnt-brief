// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SavingModule} from "src/SavingModule.sol";

/**
 * @dev mniimal interface that is needed so it can be used as a vault in a Morpho Oracle
 */
interface MinimalERC4626 {
    function convertToAssets(uint256) external view returns (uint256);
}

/**
 * ERC4626 vault adapter for Savingcoin to be used in a Morpho Oracle
 */
contract SavingcoinMinimalERC4626 is MinimalERC4626 {
    SavingModule public immutable savingModule;

    constructor(SavingModule _savingModule) {
        savingModule = _savingModule;
    }

    function convertToAssets(uint256 shares) external view returns (uint256) {
        return savingModule.previewRedeem(shares);
    }
}
