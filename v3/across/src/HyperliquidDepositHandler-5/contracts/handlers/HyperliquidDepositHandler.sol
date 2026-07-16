// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../interfaces/SpokePoolMessageHandler.sol";
import "@openzeppelin/contracts-v4/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-v4/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-v4/security/ReentrancyGuard.sol";
import { Ownable } from "@openzeppelin/contracts-v4/access/Ownable.sol";
import { HLConversions } from "@hyper-evm-lib/src/common/HLConversions.sol";
import { CoreWriterLib } from "@hyper-evm-lib/src/CoreWriterLib.sol";
import { PrecompileLib } from "@hyper-evm-lib/src/PrecompileLib.sol";

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
    function depositToHypercore(address token, uint256 evmAmount, address user) external nonReentrant {
        IERC20(token).safeTransferFrom(msg.sender, address(this), evmAmount);
        _depositToHypercore(token, evmAmount, user);
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
    function sweepCoreFundsToUser(address token, uint256 evmAmount, address user) external onlyOwner {
        uint64 tokenId = PrecompileLib.getTokenIndex(token);
        CoreWriterLib.spotSend(user, tokenId, HLConversions.evmToWei(tokenId, evmAmount));
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
        CoreWriterLib.bridgeToCore(token, evmAmount);
        uint64 tokenId = PrecompileLib.getTokenIndex(token);
        CoreWriterLib.spotSend(user, tokenId, HLConversions.evmToWei(tokenId, evmAmount));
    }

    // Native tokens are not supported by this contract.
}
