// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../interfaces/SpokePoolMessageHandler.sol";
import "@openzeppelin/contracts-v4/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-v4/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-v4/security/ReentrancyGuard.sol";
import { HyperCoreLib } from "../libraries/HyperCoreLib.sol";
import { PrecompileLib } from "../external/libraries/HyperliquidDev.sol";
import { Ownable } from "@openzeppelin/contracts-v4/access/Ownable.sol";

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

    /**
     * @notice Bridges tokens from HyperEVM to Hypercore and sends them to the end user's account on Hypercore.
     * @dev Requires msg.sender to have approved this contract to spend the tokens.
     */
    function depositToHypercore(address token, uint64 tokenIndex, uint256 evmAmount, int8 decimalDiff, address user) external nonReentrant {
        IERC20(token).safeTransferFrom(msg.sender, address(this), evmAmount);
        HyperCoreLib.transferERC20EVMToCore(token, tokenIndex, user, evmAmount, decimalDiff);
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
     * @notice Sweeps funds from the contract to the user's account on Hypercore.
     * @dev Emergency invoked by owner in case funds are stuck in this account on Hypercore.
     */
    function sweepCoreFundsToUser(uint64 tokenIndex, uint64 coreAmount, address user) external onlyOwner {
        HyperCoreLib.transferERC20CoreToCore(tokenIndex, user, coreAmount);
    }

    /**
     * @notice Sweep ERC20 from this contract to specified user.
     * @dev Emergency invoked by owner in case funds are stuck in this contract.
     * @param token The address of the token to deposit.
     * @param evmAmount The amount of tokens on this network to transfer.
     * @param user The address of the recipient.
     */
    function sweepEvmFundsToUser(address token, uint256 evmAmount, address user) external onlyOwner {
        IERC20(token).safeTransfer(user, evmAmount);
    }

    function _depositToHypercore(address token, uint256 evmAmount, address user) internal {
        uint64 tokenIndex = PrecompileLib.getTokenIndex(token);
        int8 decimalDiff = PrecompileLib.tokenInfo(uint32(tokenIndex)).evmExtraWeiDecimals;
        HyperCoreLib.transferERC20EVMToCore(token, tokenIndex, user, evmAmount, decimalDiff);
    }

    // Native tokens are not supported by this contract.
}
