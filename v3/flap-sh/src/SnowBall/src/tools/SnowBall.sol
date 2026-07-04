// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {AccessControl} from "@openzeppelin/access/AccessControl.sol";
import {IPortal, IPortalTradeV2} from "src/interfaces/IPortal.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";

/// @title SnowBall
/// @notice Contract that buys back and burns tax tokens using accumulated BNB
///         Supports legacy snowball contract with automatic funding when needed
contract SnowBall is AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role that can trigger snowball operations
    bytes32 public constant SNOWBALL_ROLE = keccak256("SNOWBALL_ROLE");

    /// @notice The Portal contract address
    address public immutable PORTAL;

    /// @notice The tax token address
    address public immutable TAX_TOKEN;

    /// @notice The legacy snowball contract address
    address public immutable LEGACY_SNOWBALL;

    /// @notice Dead address for burning tokens
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    /// @notice Minimum BNB balance threshold for legacy snowball (3 BNB)
    uint256 public constant LEGACY_MIN_BALANCE = 3 ether;

    /// @notice Emitted when snowball operation is executed
    /// @param quoteAmt The amount of BNB used for buyback
    /// @param tokenAmount The amount of tokens bought and burned
    event FlapSnowBallExecuted(uint256 quoteAmt, uint256 tokenAmount);

    /// @notice Constructor to initialize the contract
    /// @param _portal The Portal contract address
    /// @param _taxToken The tax token address
    /// @param _legacySnowball The legacy snowball contract address
    constructor(address _portal, address _taxToken, address _legacySnowball) {
        require(_portal != address(0), "SnowBall: portal is zero address");
        require(_taxToken != address(0), "SnowBall: taxToken is zero address");
        require(_legacySnowball != address(0), "SnowBall: legacySnowball is zero address");

        PORTAL = _portal;
        TAX_TOKEN = _taxToken;
        LEGACY_SNOWBALL = _legacySnowball;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice Buy back tax tokens and burn them
    /// @param quoteAmt The amount of BNB to use for the buyback
    /// @dev Only callable by SNOWBALL_ROLE
    /// Note: never use a public RPC for this transaction to avoid sandwich attacks
    ///       Use MEV resistant private RPCs or relay services instead
    function snowBall(uint256 quoteAmt) external onlyRole(SNOWBALL_ROLE) {
        // If BNB balance is less than specified amount, do nothing
        if (address(this).balance < quoteAmt) {
            return;
        }

        // Swap BNB for tax tokens
        IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
            inputToken: address(0), // BNB
            outputToken: TAX_TOKEN,
            inputAmount: quoteAmt,
            minOutputAmount: 0, // No slippage protection - adjust as needed
            permitData: ""
        });

        uint256 tokensReceived = IPortal(PORTAL).swapExactInput{value: quoteAmt}(params);

        // Burn all received tokens by sending to dead address
        IERC20(TAX_TOKEN).safeTransfer(DEAD_ADDRESS, tokensReceived);

        emit FlapSnowBallExecuted(quoteAmt, tokensReceived);
    }

    /// @notice Receive BNB
    receive() external payable {
        // do nothing, simply accept the money
    }
}
