// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface ITeller {
    struct Asset {
        bool allowDeposits;
        bool allowWithdraws;
        uint16 sharePremium;
    }

    /**
     * @dev Returns the assetData parameters stored in the teller contract
     */
    function assetData(address) external view returns (Asset memory);


    /**
     * @dev Allows deposit of a specified amount of assets
     * @param depositAsset Address of the underlying asset
     * @param depositAmount The amount of assets to be deposited
     * @param minimumMint The minimum amount of shares to receive
     */
    function deposit(
        address depositAsset,
        uint256 depositAmount,
        uint256 minimumMint
    ) external returns (uint256 shares);

    /**
     * @dev Returns the accountant address for this teller instance
     */
    function accountant() external view returns (address);
}
