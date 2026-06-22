// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "../utils/TwoStepOwnable.sol";
import {IERC20 as ERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import {IVedaDepositor, IHourglassDepositor} from "@interfaces/IHourglassDepositor.sol";

/// @title VedaZapper
/// @notice Facilitates zapping into an instance of HourglassVedaLockDepositor
contract VedaZapper is TwoStepOwnable {
    using SafeERC20 for IERC20;
    using Address for address;

    /*//////////////////////////////////////////////////////////////////////////
                                  STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev The address of the deposit token for the depositor this contract supports zapping into
    address public immutable depositToken;
    /// @dev The list of tokens that can be used to zap into the depositor
    address[] private _startingTokens;
    /// @dev Boolean mapping of whether a token is a starting token
    mapping(address => bool) public isStartingToken;

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _owner, address _depositToken, address[] memory initialStartingTokens) {
        _setInitialOwner(_owner);
        depositToken = _depositToken;
        for (uint256 i = 0; i < initialStartingTokens.length; i++) {
            _addStartingToken(initialStartingTokens[i]);
        }
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

    /// @notice Zaps into an instance of HourglassVedaLockDepositor
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
        if (IHourglassDepositor(depositor).getUnderlying() != depositToken) revert InvalidDepositorDepositToken();
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
                                     INTERNAL  NON-CONSTANT FUNCTIONS 
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Add a new token to the list of starting tokens
     * @param token The address of the token to add
     */
    function _addStartingToken(address token) internal {
        if (isStartingToken[token]) revert TokenToAddExists();
        _startingTokens.push(token);
        isStartingToken[token] = true;
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
        _addStartingToken(token);
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
