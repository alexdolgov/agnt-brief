// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "../utils/TwoStepOwnable.sol";
import {IERC20 as ERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import {IVedaDepositor, IHourglassDepositor} from "@interfaces/IHourglassDepositor.sol";

/// @title LombardZapper
/// @notice Facilitates zapping into the Hourglass depositor for the LBTCv vault
contract LombardZapper is TwoStepOwnable {
    using SafeERC20 for IERC20;
    using Address for address;

    /*//////////////////////////////////////////////////////////////////////////
                                  STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    address internal constant LBTCV = 0x5401b8620E5FB570064CA9114fd1e135fd77D57c;
    address internal constant LBTC = 0x8236a87084f8B84306f72007F36F2618A5634494;

    address[] private _startingTokens;
    mapping(address => bool) public isStartingToken;

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        _setInitialOwner(_owner);
        _startingTokens = [LBTC];
        isStartingToken[LBTC] = true;
    }

    /*//////////////////////////////////////////////////////////////////////////
                         USER-FACING CONSTANT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function startingTokens() external view returns (address[] memory) {
        return _startingTokens;
    }

    /*//////////////////////////////////////////////////////////////////////////
                         USER-FACING NON-CONSTANT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Zaps into an Hourglass depositor for the LBTC vault
    /// @param depositor The address of the depositor to zap into
    /// @param maturity The maturity timestamp of the depositor
    /// @param startingToken The address of the token to zap in with
    /// @param amount The amount of the starting token to zap in
    /// @param amountOutMinBps The amount required as output (in basis points) after slippage when zapping.
    ///     ex: amountOutMinBps = 9900 means up to 1% slippage is allowed.
    /// @param receiveSplit Whether to split the depositable token between the sender and the recipient
    /// @return sharesOut The amount of receipt tokens minted
    function zap(
        address depositor,
        uint256 maturity,
        address startingToken,
        uint256 amount,
        uint256 amountOutMinBps,
        bool receiveSplit
    ) external returns (uint256 sharesOut) {
        // Argument validation
        if (IHourglassDepositor(depositor).getUnderlying() != LBTCV) revert InvalidDepositorDepositToken();
        if (IHourglassDepositor(depositor).maturity() != maturity) revert InvalidDepositorMaturity();
        if (amount == 0) revert InvalidAmount();
        if (!isStartingToken[startingToken]) revert InvalidInputToken();

        // Perform Zap
        // 1. enter the depositor, acquires re-entrancy lock
        IHourglassDepositor(depositor).enter(amount);
        // 2. push the starting token to the depositor
        IERC20(startingToken).safeTransferFrom(msg.sender, depositor, amount);
        // 3. mints the veda vault shares to the depositor (bypassing timelock as shares are already in depositor contract)
        sharesOut = IVedaDepositor(depositor).mintLockedUnderlying(startingToken, amountOutMinBps);
        // 4. finalize the deposit, mints the end user their receipt tokens
        IHourglassDepositor(depositor).depositTo(msg.sender, msg.sender, sharesOut, receiveSplit);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     ADMIN FUNCTIONS - OWNER ONLY
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds a new token to the list of starting tokens
     * @dev Only callable by the contract owner
     * @param token The address of the token to add
     */
    function addStartingToken(address token) external onlyOwner {
        if (isStartingToken[token]) revert TokenToAddExists();
        _startingTokens.push(token);
        isStartingToken[token] = true;
    }

    /**
     * @notice Removes a token from the list of starting tokens
     * @dev Only callable by the contract owner
     * @param token The address of the token to remove
     */
    function removeStartingToken(address token) external onlyOwner {
        for (uint256 i = 0; i < _startingTokens.length; i++) {
            if (_startingTokens[i] == token) {
                // Copy last element of starting tokens to the current position, which overwrites the token that is to be removed
                _startingTokens[i] = _startingTokens[_startingTokens.length - 1];
                _startingTokens.pop();
                isStartingToken[token] = false;
                return;
            }
        }
        revert TokenToRemoveNotFound();
    }

    /**
     * @notice Allows the owner of this contract to recover a stuck tokens.
     *          This contract should never custody assets.
     * @dev Only callable by the contract owner
     * @param token The address of the token to recover
     */
    function recoverTokens(address token) external onlyOwner {
        if (token == address(0)) {
            payable(owner()).transfer(address(this).balance);
        } else {
            IERC20(token).safeTransfer(owner(), IERC20(token).balanceOf(address(this)));
        }
    }

    error InvalidAmount();
    error InvalidInputToken();
    error InvalidDepositorMaturity();
    error InvalidDepositorDepositToken();
    error TokenToAddExists();
    error TokenToRemoveNotFound();
}
