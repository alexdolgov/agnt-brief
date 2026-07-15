// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IFiraWrappedStandardized.sol";

import "../erc20/FiraERC20Permit.sol";

import "../libraries/ArrayLib.sol";

import "../libraries/BoringOwnableUpgradeable.sol";
import "../libraries/Errors.sol";
import "../libraries/TokenHelper.sol";
import "../libraries/math/PMath.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/// @title FWBase
/// @notice Abstract base contract for Fira Wrapped (FW) tokens that wrap yield-bearing assets
/// @dev FW tokens provide a standardized interface for depositing and redeeming underlying yield tokens.
///      This base contract handles:
///      - Deposit/redeem lifecycle with slippage protection
///      - Separate pause controls for deposits and redemptions
///      - ERC20 with permit functionality
///      - Reward claiming interface (implemented by derived contracts)
///
///      Derived contracts must implement:
///      - _deposit: Convert deposited tokens to FW shares
///      - _redeem: Convert FW shares back to tokens
///      - exchangeRate: Current FW to underlying exchange rate
///      - Token validation functions
abstract contract FWBase is IFiraWrappedStandardized, FiraERC20Permit, TokenHelper, BoringOwnableUpgradeable, Pausable {
    using PMath for uint256;

    /// @notice The underlying yield-bearing token that backs this FW token
    address public immutable yieldToken;

    /// @notice Address authorized to pause/unpause deposits and redemptions
    address public pauser;

    /// @notice Pausing flag for deposits
    bool public depositsPaused;

    /// @notice Pausing flag for redemptions
    bool public redemptionsPaused;

    /// @dev Modifier to make a function callable only by the pauser
    modifier onlyPauser() {
        if (msg.sender != pauser) {
            revert Errors.FWOnlyPauser();
        }
        _;
    }

    /// @dev Modifier to make a function callable only when deposits are not paused
    modifier whenNotDepositsPaused() {
        if (depositsPaused) {
            revert Errors.FWDepositsPaused();
        }
        _;
    }

    /// @dev Modifier to make a function callable only when redemptions are not paused
    modifier whenNotRedemptionsPaused() {
        if (redemptionsPaused) {
            revert Errors.FWRedemptionsPaused();
        }
        _;
    }

    /// @notice Initializes the FW token with name, symbol, and underlying yield token
    /// @param _name Token name
    /// @param _symbol Token symbol
    /// @param _yieldToken Address of the underlying yield-bearing token
    constructor(string memory _name, string memory _symbol, address _yieldToken)
        FiraERC20Permit(_name, _symbol, IERC20Metadata(_yieldToken).decimals())
        initializer
    {
        yieldToken = _yieldToken;
        __BoringOwnable_init();
    }

    /// @notice Allows the contract to receive native ETH
    // solhint-disable no-empty-blocks
    receive() external payable {}

    /* ///////////////////////////////////////////////////////////////
                    DEPOSIT/REDEEM USING BASE TOKENS
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposits tokens and mints FW shares to the receiver
    /// @dev See {IFiraWrappedStandardized-deposit}
    /// @param receiver Address to receive the minted FW shares
    /// @param tokenIn Address of the token being deposited
    /// @param amountTokenToDeposit Amount of tokens to deposit
    /// @param minSharesOut Minimum FW shares to receive (slippage protection)
    /// @return amountSharesOut Amount of FW shares minted
    function deposit(address receiver, address tokenIn, uint256 amountTokenToDeposit, uint256 minSharesOut)
        external
        payable
        nonReentrant
        whenNotDepositsPaused
        returns (uint256 amountSharesOut)
    {
        if (!isValidTokenIn(tokenIn)) revert Errors.FWInvalidTokenIn(tokenIn);
        if (amountTokenToDeposit == 0) revert Errors.FWZeroDeposit();

        _transferIn(tokenIn, msg.sender, amountTokenToDeposit);

        amountSharesOut = _deposit(tokenIn, amountTokenToDeposit);
        if (amountSharesOut < minSharesOut) {
            revert Errors.FWInsufficientSharesOut(amountSharesOut, minSharesOut);
        }

        _mint(receiver, amountSharesOut);
        emit Deposit(msg.sender, receiver, tokenIn, amountTokenToDeposit, amountSharesOut);
    }

    /// @notice Burns FW shares and redeems underlying tokens to the receiver
    /// @dev See {IFiraWrappedStandardized-redeem}
    /// @param receiver Address to receive the redeemed tokens
    /// @param amountSharesToRedeem Amount of FW shares to burn
    /// @param tokenOut Address of the token to receive
    /// @param minTokenOut Minimum tokens to receive (slippage protection)
    /// @param burnFromInternalBalance If true, burns from contract's balance; otherwise from msg.sender
    /// @return amountTokenOut Amount of tokens received
    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external nonReentrant whenNotRedemptionsPaused returns (uint256 amountTokenOut) {
        if (!isValidTokenOut(tokenOut)) revert Errors.FWInvalidTokenOut(tokenOut);
        if (amountSharesToRedeem == 0) revert Errors.FWZeroRedeem();

        if (burnFromInternalBalance) {
            _burn(address(this), amountSharesToRedeem);
        } else {
            _burn(msg.sender, amountSharesToRedeem);
        }

        amountTokenOut = _redeem(receiver, tokenOut, amountSharesToRedeem);
        if (amountTokenOut < minTokenOut) {
            revert Errors.FWInsufficientTokenOut(amountTokenOut, minTokenOut);
        }
        emit Redeem(msg.sender, receiver, tokenOut, amountSharesToRedeem, amountTokenOut);
    }

    /// @notice Internal hook to mint shares based on the deposited tokens
    /// @dev Must be implemented by derived contracts
    /// @param tokenIn Token address used to mint shares
    /// @param amountDeposited Amount of tokens deposited
    /// @return amountSharesOut Amount of shares minted
    function _deposit(address tokenIn, uint256 amountDeposited) internal virtual returns (uint256 amountSharesOut);

    /// @notice Internal hook to redeem tokens based on shares to be burned
    /// @dev Must be implemented by derived contracts
    /// @param receiver Address to receive the redeemed tokens
    /// @param tokenOut Address of the token to redeem
    /// @param amountSharesToRedeem Amount of shares to burn
    /// @return amountTokenOut Amount of tokens redeemed
    function _redeem(address receiver, address tokenOut, uint256 amountSharesToRedeem)
        internal
        virtual
        returns (uint256 amountTokenOut);

    /* ///////////////////////////////////////////////////////////////
                               EXCHANGE-RATE
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the current exchange rate between FW shares and underlying assets
    /// @dev See {IFiraWrappedStandardized-exchangeRate}
    /// @return res Exchange rate scaled by 1e18
    function exchangeRate() external view virtual override returns (uint256 res);

    /* ///////////////////////////////////////////////////////////////
                               REWARDS-RELATED
    //////////////////////////////////////////////////////////////*/

    /// @notice Claims accumulated rewards for a user
    /// @dev See {IFiraWrappedStandardized-claimRewards}. Default implementation returns empty array.
    /// @return rewardAmounts Array of reward amounts claimed (one per reward token)
    function claimRewards(
        address /* user*/
    )
        external
        virtual
        override
        returns (uint256[] memory rewardAmounts)
    {
        rewardAmounts = new uint256[](0);
    }

    /// @notice Returns the list of reward token addresses
    /// @dev See {IFiraWrappedStandardized-getRewardTokens}. Default implementation returns empty array.
    /// @return rewardTokens Array of reward token addresses
    function getRewardTokens() external view virtual override returns (address[] memory rewardTokens) {
        rewardTokens = new address[](0);
    }

    /// @notice Returns the accrued but unclaimed rewards for a user
    /// @dev See {IFiraWrappedStandardized-accruedRewards}. Default implementation returns empty array.
    /// @return rewardAmounts Array of accrued reward amounts
    function accruedRewards(
        address /* user*/
    )
        external
        view
        virtual
        override
        returns (uint256[] memory rewardAmounts)
    {
        rewardAmounts = new uint256[](0);
    }

    /// @notice Returns the current reward indexes, updating state if needed
    /// @return indexes Array of current reward indexes
    function rewardIndexesCurrent() external virtual override returns (uint256[] memory indexes) {
        indexes = new uint256[](0);
    }

    /// @notice Returns the stored reward indexes without updating state
    /// @return indexes Array of stored reward indexes
    function rewardIndexesStored() external view virtual override returns (uint256[] memory indexes) {
        indexes = new uint256[](0);
    }

    /* ///////////////////////////////////////////////////////////////
                MISC METADATA FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Previews the amount of shares that would be minted for a deposit
    /// @param tokenIn Token address to deposit
    /// @param amountTokenToDeposit Amount of tokens to deposit
    /// @return amountSharesOut Expected amount of shares to receive
    function previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        external
        view
        virtual
        returns (uint256 amountSharesOut)
    {
        if (!isValidTokenIn(tokenIn)) revert Errors.FWInvalidTokenIn(tokenIn);
        return _previewDeposit(tokenIn, amountTokenToDeposit);
    }

    /// @notice Previews the amount of tokens that would be received for a redemption
    /// @param tokenOut Token address to receive
    /// @param amountSharesToRedeem Amount of shares to redeem
    /// @return amountTokenOut Expected amount of tokens to receive
    function previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        external
        view
        virtual
        returns (uint256 amountTokenOut)
    {
        if (!isValidTokenOut(tokenOut)) revert Errors.FWInvalidTokenOut(tokenOut);
        return _previewRedeem(tokenOut, amountSharesToRedeem);
    }

    /// @notice Sets the pauser address
    /// @param newPauser Address of the new pauser
    function setPauser(address newPauser) external onlyOwner {
        pauser = newPauser;
        emit PauserChanged(newPauser);
    }

    /// @notice Pauser-only function to pause deposits
    function pauseDeposits() external onlyPauser {
        depositsPaused = true;
        emit DepositsPaused(true);
    }

    /// @notice Pauser-only function to unpause deposits
    function unpauseDeposits() external onlyPauser {
        depositsPaused = false;
        emit DepositsPaused(false);
    }

    /// @notice Pauser-only function to pause redemptions
    function pauseRedemptions() external onlyPauser {
        redemptionsPaused = true;
        emit RedemptionsPaused(true);
    }

    /// @notice Pauser-only function to unpause redemptions
    function unpauseRedemptions() external onlyPauser {
        redemptionsPaused = false;
        emit RedemptionsPaused(false);
    }

    /// @notice Function to pause everything in case of emergency
    function pause() external onlyPauser {
        _pause();
    }

    /// @notice Function to unpause everything
    function unpause() external onlyPauser {
        _unpause();
    }

    function _beforeTokenTransfer(address, address, uint256) internal virtual override whenNotPaused {}

    /// @dev Internal preview for deposit calculation
    /// @param tokenIn Token address to deposit
    /// @param amountTokenToDeposit Amount of tokens to deposit
    /// @return amountSharesOut Expected shares to receive
    function _previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        internal
        view
        virtual
        returns (uint256 amountSharesOut);

    /// @dev Internal preview for redemption calculation
    /// @param tokenOut Token address to receive
    /// @param amountSharesToRedeem Amount of shares to redeem
    /// @return amountTokenOut Expected tokens to receive
    function _previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        internal
        view
        virtual
        returns (uint256 amountTokenOut);

    /// @notice Returns the list of valid input tokens for deposits
    /// @return res Array of valid input token addresses
    function getTokensIn() public view virtual returns (address[] memory res);

    /// @notice Returns the list of valid output tokens for redemptions
    /// @return res Array of valid output token addresses
    function getTokensOut() public view virtual returns (address[] memory res);

    /// @notice Checks if a token is valid for deposits
    /// @param token Token address to check
    /// @return True if token is valid for deposits
    function isValidTokenIn(address token) public view virtual returns (bool);

    /// @notice Checks if a token is valid for redemptions
    /// @param token Token address to check
    /// @return True if token is valid for redemptions
    function isValidTokenOut(address token) public view virtual returns (bool);
}
