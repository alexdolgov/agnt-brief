// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";

/**
 * @title IMinter
 * @dev Interface for the Minter contract
 */
interface IMinter {
    /**
     * @notice Enables whitelist minting phase
     */
    function enableWhitelistMint() external;

    /**
     * @notice Enables public minting phase
     */
    function enablePublicMint() external;

    /**
     * @notice Adds a wallet to the whitelist
     * @param wallet Wallet address to whitelist
     */
    function addToWhitelist(address wallet) external;

    /**
     * @notice Mints tokens during whitelist phase
     * @param stablecoin Stablecoin used for minting
     * @param stableAmount Amount of stablecoin to mint against
     */
    function whitelistMint(
        IERC20Custom stablecoin,
        uint256 stableAmount
    ) external;

    /**
     * @notice Mints tokens during public phase
     * @param stablecoin Stablecoin used for minting
     * @param stableAmount Amount of stablecoin to mint against
     */
    function publicMint(IERC20Custom stablecoin, uint256 stableAmount) external;

    /**
     * @notice Mints remaining token supply
     * @param stablecoin Stablecoin used for minting
     */
    function mintRemainingSupply(IERC20Custom stablecoin) external;

    /**
     * @notice Sends accumulated DUSX to floor contract
     */
    function sendToFloorDUSX() external;

    /**
     * @notice Verifies if a wallet is whitelisted
     * @param wallet Address to verify
     * @return bool Whitelist status
     */
    function verifyWallet(address wallet) external view returns (bool);

    /**
     * @notice Calculates mint amount for given stablecoin input
     * @param stablecoin Stablecoin used for calculation
     * @param stableAmount Amount of stablecoin
     * @return uint256 Calculated mint amount
     */
    function calcMintAmount(
        IERC20Custom stablecoin,
        uint256 stableAmount
    ) external view returns (uint256);

    /**
     * @notice Gets the current token reserve
     * @return uint256 Current token reserve
     */
    function tokenReserve() external view returns (uint256);

    /**
     * @notice Gets the current mint ratio
     * @return uint256 Current mint ratio
     */
    function getCurrentRatio() external view returns (uint256);

    /**
     * @notice Gets the current mint rate
     * @return uint256 Current mint rate
     */
    function getCurrentRate() external view returns (uint256);
}
