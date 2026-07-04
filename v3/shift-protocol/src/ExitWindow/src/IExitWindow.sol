// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

/// @title  IExitWindow
/// @author Shift Protocol
/// @notice Interface for the ExitWindow add-on — a one-way, fixed-rate share → asset exit.
/// @dev    Generic: bound only to two ERC-20s, never to a specific vault interface, so it works
///         against any vault generation (including v1, which does not expose asset()/share()).
///         Ownership (pause, liquidity management) is provided by OZ Ownable2Step / Pausable and
///         is intentionally not redeclared here. This interface covers only the add-on surface.
interface IExitWindow {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted on every successful exit of shares for assets.
    /// @param  caller    Address that submitted the exit (shares pulled from here).
    /// @param  receiver  Address that received the assets.
    /// @param  sharesIn  Shares pulled in and locked permanently in this contract.
    /// @param  assetsOut Assets paid out at the fixed rate.
    event Exited(address indexed caller, address indexed receiver, uint256 sharesIn, uint256 assetsOut);

    /// @notice Emitted when asset liquidity is added to the contract via fundLiquidity().
    /// @param  from   Address the assets were pulled from.
    /// @param  amount Asset amount added.
    event LiquidityFunded(address indexed from, uint256 amount);

    /// @notice Emitted when the owner withdraws unused asset liquidity.
    /// @param  to     Recipient of the withdrawn assets.
    /// @param  amount Asset amount withdrawn.
    event LiquidityWithdrawn(address indexed to, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                       EXTERNAL STATE-CHANGING
    //////////////////////////////////////////////////////////////*/

    /// @notice Exit `shares` of the share token for assets at the fixed rate.
    /// @dev    Pulls shares from msg.sender (locked permanently — never burned) and pays
    ///         assets to `receiver`. Requires prior share-token approval to this contract.
    /// @param  _shares   Shares to exit. Must be > 0 and yield > 0 assets after rounding.
    /// @param  _receiver Address to receive the assets.
    /// @return assets    Assets paid out.
    function exit(uint256 _shares, address _receiver) external returns (uint256 assets);

    /// @notice Add asset liquidity to the contract. Pulls `_amount` from msg.sender.
    /// @dev    Permissionless — liquidity is simply the contract's asset balance. A raw
    ///         ERC-20 transfer to this contract has the same effect, minus the event.
    /// @param  _amount Asset amount to add.
    function fundLiquidity(uint256 _amount) external;

    /// @notice Withdraw unused asset liquidity. Owner only.
    /// @param  _amount Asset amount to withdraw.
    /// @param  _to     Recipient of the withdrawn assets.
    function withdrawLiquidity(uint256 _amount, address _to) external;

    /*//////////////////////////////////////////////////////////////
                          EXTERNAL VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice Share token accepted by this exit window.
    function share() external view returns (address);

    /// @notice Underlying asset token paid out.
    function asset() external view returns (address);

    /// @notice Immutable rate: asset-decimal units paid per ONE whole (1e18) share.
    /// @dev    Shares are 18-decimal; the rate carries the asset token's own decimals.
    ///         e.g. 1.5 USDC (6-dec) per share → rate = 1_500_000.
    function rate() external view returns (uint256);

    /// @notice Assets (asset-decimal units) paid out for `_shares` (18-dec): shares * rate / 1e18.
    function quote(uint256 _shares) external view returns (uint256 assets);

    /// @notice Asset liquidity currently available to pay out (the contract's asset balance).
    function availableLiquidity() external view returns (uint256);

    /// @notice Shares permanently locked in this contract (received from past exits).
    function lockedShares() external view returns (uint256);

    /// @notice Shares that could still be exited into this contract = totalSupply − lockedShares.
    function outstandingShares() external view returns (uint256);

    /// @notice Assets required to cover exiting every outstanding share at the fixed rate.
    /// @dev    Point-in-time figure; moves as the share total supply changes.
    function requiredLiquidity() external view returns (uint256);

    /// @notice Shortfall between requiredLiquidity() and availableLiquidity(). Zero if covered.
    function coverageDeficit() external view returns (uint256);

    /// @notice True when availableLiquidity() ≥ requiredLiquidity().
    function isFullyCovered() external view returns (bool);
}
