// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";

/**
 * @title IPSM
 * @dev Interface for Peg Stability Module (PSM) operations
 * @notice Defines functionality for:
 * 1. Stablecoin/DUSX swaps
 * 2. Peg maintenance
 * 3. Supply tracking
 */
interface IPSM {
    /*//////////////////////////////////////////////////////////////
                            SWAP OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Executes stablecoin to DUSX swap
     * @param msgSender Address initiating the swap
     * @param receiver Address receiving the DUSX
     * @param stableTokenAmount Amount of stablecoins to swap
     * @dev Handles:
     * · Stablecoin deposit
     * · DUSX minting
     * · Supply tracking
     */
    function swapStableForDUSX(
        address msgSender,
        address receiver,
        uint256 stableTokenAmount
    ) external;

    /**
     * @notice Executes DUSX to stablecoin swap
     * @param msgSender Address initiating the swap
     * @param receiver Address receiving the stablecoins
     * @param stableTokenAmount Amount of stablecoins to receive
     * @dev Handles:
     * · DUSX burning
     * · Stablecoin release
     * · Supply adjustment
     */
    function swapDUSXForStable(
        address msgSender,
        address receiver,
        uint256 stableTokenAmount
    ) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves the stablecoin token contract
     * @return IERC20Custom Stablecoin token interface
     * @dev Used for:
     * · Token transfers
     * · Balance checks
     * · Allowance verification
     */
    function stableToken() external view returns (IERC20Custom);

    /**
     * @notice Returns total DUSX tokens minted through PSM
     * @return uint256 Total minted amount in base units
     * @dev Tracks:
     * · Total supply impact
     * · PSM utilization
     * · Protocol growth metrics
     */
    function dusxMinted() external view returns (uint256);

    /**
     * @notice Returns the maximum amount of DUSX that can be minted through PSM
     * @return uint256 Maximum mintable amount in base units
     * @dev Used for:
     * · Supply control
     * · Risk management
     * · Protocol safety
     */
    function dusxMintCap() external view returns (uint256);
}
