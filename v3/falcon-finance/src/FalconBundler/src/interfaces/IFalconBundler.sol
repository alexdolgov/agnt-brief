// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import {IPreCollateralizedMinter} from "./IPreCollateralizedMinter.sol";

/**
 * @title IFalconBundler
 * @notice Interface for the FalconBundler contract that bundles USDf minting and staking operations
 */
interface IFalconBundler {

    /// @notice Thrown when a zero address is provided for any of the contract dependencies
    error InvalidAddress();
    /// @notice Thrown when attempting to stake zero tokens
    error InvalidAmount();

    /**
     * @notice Mint USDf and directly stake to sUSDf
     * @param params Mint parameters from PreCollateralizedMinter
     * @param signature Backend signature for minting
     * @return shares Amount of sUSDf shares received
     */
    function mintToStakedUSDf(
        IPreCollateralizedMinter.MintParams calldata params,
        bytes calldata signature
    )
        external
        returns (uint256 shares);

    /**
     * @notice Mint USDf and directly stake to FalconPosition
     * @param params Mint parameters from PreCollateralizedMinter
     * @param duration Staking duration for FalconPosition
     * @param signature Backend signature for minting
     * @return tokenId The minted position NFT ID
     */
    function mintToFalconPosition(
        IPreCollateralizedMinter.MintParams calldata params,
        uint256 duration,
        bytes calldata signature
    )
        external
        returns (uint256 tokenId);

    /**
     * @notice Stake existing USDf directly to FalconPosition
     * @param amount Amount of USDf to stake
     * @param duration Staking duration for FalconPosition
     * @param recipient Address that will receive the staking position NFT
     * @return tokenId The minted position NFT ID
     */
    function stakeToFalconPosition(
        uint256 amount,
        uint256 duration,
        address recipient
    )
        external
        returns (uint256 tokenId);

}
