// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../interfaces/SpokePoolMessageHandler.sol";
import "@openzeppelin/contracts-v4/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-v4/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-v4/security/ReentrancyGuard.sol";
import { HyperCoreLib } from "../libraries/HyperCoreLib.sol";
import { PrecompileLib } from "../external/libraries/HyperliquidDev.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Allows caller to bridge tokens from HyperEVM to Hypercore and send them to an end user's account
 * on Hypercore.
 * @dev This contract should only be deployed on HyperEVM.
 * @dev This contract can replace a MulticallHandler on HyperEVM if the intent only wants to deposit tokens into
 * Hypercore and bypass the other complex arbitrary calldata logic.
 * @dev This contract can also be called directly to deposit tokens into Hypercore on behalf of an end user.
 */
contract HyperliquidDepositHandler is AcrossMessageHandler, ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;

    constructor() Ownable(msg.sender) {}

    /**
     * @notice Bridges tokens from HyperEVM to Hypercore and sends them to the end user's account on Hypercore.
     * @dev Requires msg.sender to have approved this contract to spend the tokens.
     * @param token The address of the token to deposit.
     * @param amount The amount of tokens on HyperEVM to deposit.
     * @param user The address of the user on Hypercore to send the tokens to.
     */
    function depositToHypercore(address token, uint256 amount, address user) external nonReentrant {
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        _depositToHypercore(token, amount, user);
    }

    /**
     * @notice Entrypoint function if this contract is called by the SpokePool contract following an intent fill.
     * @dev Deposits tokens into Hypercore and sends them to the end user's account on Hypercore.
     * @param token The address of the token sent.
     * @param amount The amount of tokens received by this contract.
     * @param message Encoded end user address.
     */
    function handleV3AcrossMessage(
        address token,
        uint256 amount,
        address /* relayer */,
        bytes memory message
    ) external nonReentrant {
        address user = abi.decode(message, (address));
        _depositToHypercore(token, amount, user);
    }

    /**
     * @notice Send Hypercore funds to a user from this contract's Hypercore account
     * @dev The coreAmoutn parameter is specified in Hypercore units which often differs from the EVM units for the
     * same token.
     * @param token The token address
     * @param coreAmount The amount of tokens on Hypercore to sweep
     * @param user The address of the user to send the tokens to
     */
    function sweepCoreFundsToUser(address token, uint64 coreAmount, address user) external onlyOwner nonReentrant {
        uint64 tokenIndex = PrecompileLib.getTokenIndex(token);
        HyperCoreLib.transferERC20CoreToCore(tokenIndex, user, coreAmount);
    }

    /**
     * @notice Send ERC20 tokens to a user from this contract's address on HyperEVM
     * @param token The token address
     * @param evmAmount The amount of tokens to sweep
     * @param user The address of the user to send the tokens to
     */
    function sweepERC20ToUser(address token, uint256 evmAmount, address user) external onlyOwner nonReentrant {
        IERC20(token).safeTransfer(user, evmAmount);
    }

    function _depositToHypercore(address token, uint256 evmAmount, address user) internal {
        uint64 tokenIndex = PrecompileLib.getTokenIndex(token);
        int8 decimalDiff = PrecompileLib.tokenInfo(uint32(tokenIndex)).evmExtraWeiDecimals;
        HyperCoreLib.transferERC20EVMToCore(token, tokenIndex, user, evmAmount, decimalDiff);
    }

    // Native tokens are not supported by this contract.
}
