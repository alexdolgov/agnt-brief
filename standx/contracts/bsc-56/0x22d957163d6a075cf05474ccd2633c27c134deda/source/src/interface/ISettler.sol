// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "./IERC20.sol";
import {StandDUSD} from "../StandDUSD.sol";

interface ISettler {
    /// @notice Initialize the Settler contract
    /// @param defaultAdmin Address that will receive all admin roles
    /// @param gateway Address of the gateway contract
    /// @param dusd Address of the DUSD token contract
    function initialize(
        address defaultAdmin,
        address gateway,
        StandDUSD dusd
    ) external;

    /// @notice Set a new gateway address
    /// @param gateway New gateway address
    function setGateway(address gateway) external;

    /// @notice Mint DUSD tokens to a user
    /// @param user Address to receive the minted tokens
    /// @param amount Amount of DUSD to mint
    function mintDusd(address user, uint256 amount) external;

    /// @notice Burn DUSD tokens from a user
    /// @param user Address to burn tokens from
    /// @param amount Amount of DUSD to burn
    function burnDusd(address user, uint256 amount) external;

    /// @notice Transfer any ERC20 token from the settler to another address
    /// @param token Token to transfer
    /// @param to Recipient address
    /// @param amount Amount to transfer
    function transferToken(IERC20 token, address to, uint256 amount) external;
}
