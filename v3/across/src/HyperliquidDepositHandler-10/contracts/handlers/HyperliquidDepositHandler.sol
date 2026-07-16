// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.0;

import "../interfaces/SpokePoolMessageHandler.sol";
import "@openzeppelin/contracts-v4/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-v4/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-v4/security/ReentrancyGuard.sol";
import { HyperCoreLib } from "../libraries/HyperCoreLib.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { DonationBox } from "../chain-adapters/DonationBox.sol";

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
    struct TokenInfo {
        // HyperEVM token address.
        address evmAddress;
        // Hypercore token index.
        uint64 tokenId;
        // Activation fee in EVM units. e.g. 1000000 ($1) for USDH.
        uint256 activationFeeEvm;
        // coreDecimals - evmDecimals. e.g. -2 for USDH.
        int8 decimalDiff;
    }

    // Stores hardcoded Hypercore configurations for tokens that this handler supports.
    mapping(address => TokenInfo) public supportedTokens;

    // Donation box contract to store funds for account activation fees.
    DonationBox public immutable donationBox;

    error InsufficientEvmAmountForActivation();
    error TokenNotSupported();

    event UserAccountActivated(address user, address indexed token, uint256 amountRequiredToActivate);

    /**
     * @notice Constructor.
     * @dev Creates a new donation box contract owned by this contract.
     */
    constructor() Ownable(msg.sender) {
        donationBox = new DonationBox();
    }

    /**
     * @notice Adds a new token to the supported tokens list.
     * @dev Caller must be owner of this contract.
     * @param evmAddress The address of the EVM token.
     * @param tokenId The index of the Hypercore token.
     * @param activationFeeEvm The activation fee in EVM units.
     * @param decimalDiff The difference in decimals between the EVM and Hypercore tokens.
     */
    function addSupportedToken(
        address evmAddress,
        uint64 tokenId,
        uint256 activationFeeEvm,
        int8 decimalDiff
    ) external onlyOwner {
        supportedTokens[evmAddress] = TokenInfo({
            evmAddress: evmAddress,
            tokenId: tokenId,
            activationFeeEvm: activationFeeEvm,
            decimalDiff: decimalDiff
        });
    }

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
     * @dev The coreAmount parameter is specified in Hypercore units which often differs from the EVM units for the
     * same token.
     * @param token The token address
     * @param coreAmount The amount of tokens on Hypercore to sweep
     * @param user The address of the user to send the tokens to
     */
    function sweepCoreFundsToUser(address token, uint64 coreAmount, address user) external onlyOwner nonReentrant {
        uint64 tokenIndex = _getTokenInfo(token).tokenId;
        HyperCoreLib.transferERC20CoreToCore(tokenIndex, user, coreAmount);
    }

    /**
     * @notice Send donation box funds to a user from this contract's address on HyperEVM
     * @param token The token address
     * @param amount The amount of tokens to sweep
     * @param user The address of the user to send the tokens to
     */
    function sweepDonationBoxFundsToUser(address token, uint256 amount, address user) external onlyOwner nonReentrant {
        donationBox.withdraw(IERC20(token), amount);
        IERC20(token).safeTransfer(user, amount);
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
        TokenInfo memory tokenInfo = _getTokenInfo(token);
        uint64 tokenIndex = tokenInfo.tokenId;
        int8 decimalDiff = tokenInfo.decimalDiff;
        uint256 activationFee = tokenInfo.activationFeeEvm;
        uint256 amountRequiredToActivate = activationFee + 1;

        bool userExists = HyperCoreLib.coreUserExists(user);
        if (!userExists) {
            // To activate an account, we must pay the activation from this contract's core account and then send 1
            // wei to the user's account, so we pull the activation fee + 1 wei from the donation box.
            uint256 activationFee = tokenInfo.activationFeeEvm;
            uint256 amountRequiredToActivate = activationFee + 1;
            donationBox.withdraw(IERC20(token), amountRequiredToActivate);
            // Fund the activation fee + 1 wei into this contract's core account and then send 1 wei to the
            // user's account.
            HyperCoreLib.transferERC20EVMToSelfOnCore(token, tokenIndex, amountRequiredToActivate, decimalDiff);
            HyperCoreLib.activateCoreAccount(user, tokenIndex);
            emit UserAccountActivated(user, token, amountRequiredToActivate);
        }

        HyperCoreLib.transferERC20EVMToCore(token, tokenIndex, user, evmAmount, decimalDiff);
    }

    function _getTokenInfo(address evmAddress) internal view returns (TokenInfo memory) {
        if (supportedTokens[evmAddress].evmAddress == address(0)) {
            revert TokenNotSupported();
        }
        return supportedTokens[evmAddress];
    }

    // Native tokens are not supported by this contract, so there is no fallback function.
}
