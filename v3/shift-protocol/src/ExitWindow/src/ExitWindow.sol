// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {IExitWindow} from "src/IExitWindow.sol";
import {
    ExitWindow__ZeroAddress,
    ExitWindow__ZeroAmount,
    ExitWindow__ZeroRate,
    ExitWindow__InsufficientLiquidity,
    ExitWindow__SameToken,
    ExitWindow__InvalidShareDecimals
} from "src/ExitWindowErrors.sol";

/// @title  ExitWindow
/// @author Shift Protocol
/// @custom:security-contact team@shiftprotocol.xyz
/// @notice Optional, self-contained add-on offering a one-way, fixed-rate exit from a "share"
///         ERC-20 into an "asset" ERC-20. Built to wind down a strategy: holders exit at a rate
///         fixed at deployment, instantly, against owner-provided liquidity — bypassing the async
///         redeem cycle of a vault being deprecated.
/// @dev    Generic by design: it depends on nothing but the two ERC-20s, taken directly in the
///         constructor. It is NOT bound to the SyVault interface — so it works against any vault
///         generation, including v1 deployments that do not expose `asset()` / `share()`.
///
///
///         Design decisions (immutable to this deployment):
///         - Rate is immutable: a new rate means a new deployment. Trustless for exiters.
///         - Standalone Ownable2Step: decoupled from any protocol AdminGateway.
///         - Received shares are LOCKED FOREVER. This add-on holds no mint/burn rights over the
///           share token and offers no share-withdrawal path by design. Consequence: locked
///           shares stay in circulation; the owner cannot recoup them.
///
///         The owner funds asset liquidity incrementally. `requiredLiquidity()` /
///         `isFullyCovered()` let the owner verify, against the live share total supply, that the
///         configured rate and funded liquidity can cover every outstanding share.
contract ExitWindow is IExitWindow, Ownable2Step, Pausable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                              CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @dev Share token fixed-point precision. Shares are 18-decimal. The rate is denominated in
    ///      the ASSET token's own decimals per ONE whole (1e18) share, so dividing `shares * rate`
    ///      by 1e18 converts raw shares → whole shares and yields assets in asset-decimal units.
    uint256 private constant SHARE_PRECISION = 1e18;

    /*//////////////////////////////////////////////////////////////
                           STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Share token accepted by this exit window (pulled in and locked).
    IERC20 private immutable i_share;

    /// @notice Underlying asset token paid out.
    IERC20 private immutable i_asset;

    /// @notice Immutable exit rate: asset-decimal units paid per ONE whole (1e18) share.
    uint256 private immutable i_rate;

    /*//////////////////////////////////////////////////////////////
                             CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @param _share  Share token to accept (and lock). Any 18-decimal ERC-20.
    /// @param _asset  Asset token to pay out. Any ERC-20.
    /// @param _rate   Asset-decimal units paid per ONE whole (1e18) share. Immutable. Must be > 0.
    ///                e.g. 1.5 USDC (6-dec) per share → `_rate = 1_500_000`.
    /// @param _owner  Initial owner (should be a multisig). Manages liquidity and pause.
    constructor(address _share, address _asset, uint256 _rate, address _owner) Ownable(_owner) {
        if (_share == address(0) || _asset == address(0)) revert ExitWindow__ZeroAddress();
        if (_share == _asset) revert ExitWindow__SameToken();
        if (_rate == 0) revert ExitWindow__ZeroRate();
        // The rate convention (assets per 1e18 shares) assumes 18-decimal shares; enforce it.
        if (IERC20Metadata(_share).decimals() != 18) revert ExitWindow__InvalidShareDecimals();

        i_share = IERC20(_share);
        i_asset = IERC20(_asset);
        i_rate = _rate;
    }

    /*//////////////////////////////////////////////////////////////
                    EXTERNAL STATE-CHANGING FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IExitWindow
    /// @dev nonReentrant first; CEI — all checks before the two token interactions.
    function exit(uint256 _shares, address _receiver) external nonReentrant whenNotPaused returns (uint256 assets) {
        if (_shares == 0) revert ExitWindow__ZeroAmount();
        if (_receiver == address(0)) revert ExitWindow__ZeroAddress();

        // Multiply before divide; integer division truncates (favours the contract, never overpays).
        assets = (_shares * i_rate) / SHARE_PRECISION;
        if (assets == 0) revert ExitWindow__ZeroAmount();
        if (assets > i_asset.balanceOf(address(this))) revert ExitWindow__InsufficientLiquidity();

        // INTERACTIONS: pull shares in (locked permanently — never burned), then pay assets out.
        i_share.safeTransferFrom(msg.sender, address(this), _shares);
        i_asset.safeTransfer(_receiver, assets);

        emit Exited(msg.sender, _receiver, _shares, assets);
    }

    /// @inheritdoc IExitWindow
    function fundLiquidity(uint256 _amount) external nonReentrant {
        if (_amount == 0) revert ExitWindow__ZeroAmount();
        i_asset.safeTransferFrom(msg.sender, address(this), _amount);
        emit LiquidityFunded(msg.sender, _amount);
    }

    /// @inheritdoc IExitWindow
    function withdrawLiquidity(uint256 _amount, address _to) external onlyOwner nonReentrant {
        if (_to == address(0)) revert ExitWindow__ZeroAddress();
        if (_amount == 0) revert ExitWindow__ZeroAmount();
        if (_amount > i_asset.balanceOf(address(this))) revert ExitWindow__InsufficientLiquidity();
        i_asset.safeTransfer(_to, _amount);
        emit LiquidityWithdrawn(_to, _amount);
    }

    /// @notice Pause exits. Owner only. Liquidity management is unaffected.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Resume exits. Owner only.
    function unpause() external onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                      EXTERNAL VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IExitWindow
    function share() external view returns (address) {
        return address(i_share);
    }

    /// @inheritdoc IExitWindow
    function asset() external view returns (address) {
        return address(i_asset);
    }

    /// @inheritdoc IExitWindow
    function rate() external view returns (uint256) {
        return i_rate;
    }

    /// @inheritdoc IExitWindow
    function requiredLiquidity() external view returns (uint256) {
        return quote(outstandingShares());
    }

    /// @inheritdoc IExitWindow
    function coverageDeficit() public view returns (uint256 deficit) {
        uint256 required = quote(outstandingShares());
        uint256 available = i_asset.balanceOf(address(this));
        deficit = required > available ? required - available : 0;
    }

    /// @inheritdoc IExitWindow
    function isFullyCovered() external view returns (bool) {
        return coverageDeficit() == 0;
    }

    /*//////////////////////////////////////////////////////////////
                       PUBLIC VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IExitWindow
    function quote(uint256 _shares) public view returns (uint256 assets) {
        assets = (_shares * i_rate) / SHARE_PRECISION;
    }

    /// @inheritdoc IExitWindow
    function availableLiquidity() public view returns (uint256) {
        return i_asset.balanceOf(address(this));
    }

    /// @inheritdoc IExitWindow
    function lockedShares() public view returns (uint256) {
        return i_share.balanceOf(address(this));
    }

    /// @inheritdoc IExitWindow
    function outstandingShares() public view returns (uint256 outstanding) {
        uint256 supply = i_share.totalSupply();
        uint256 locked = i_share.balanceOf(address(this));
        // Shares already locked here can never be exited in again — exclude them.
        outstanding = supply > locked ? supply - locked : 0;
    }
}
