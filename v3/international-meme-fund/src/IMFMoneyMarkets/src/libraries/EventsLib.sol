// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {Id, MarketParams} from "../interfaces/IIMFMoneyMarkets.sol";

/// @title EventsLib
/// @author Morpho Labs
/// @custom:contact security@morpho.org
/// @notice Library exposing events.
library EventsLib {
    /// @notice Emitted when setting a new owner.
    /// @param newOwner The new owner of the contract.
    event SetOwner(address indexed newOwner);

    /// @notice Emitted when setting a users authorization
    /// @param minter The minter to be authorized or unauthorized.
    /// @param authorized The new authorization status.
    event SetAuthorization(address indexed minter, bool authorized);

    /// @notice Emitted when creating a market.
    /// @param id The market id.
    /// @param marketParams The market that was created.
    event CreateMarket(Id indexed id, MarketParams marketParams);

    /// @notice Emitted on borrow of assets.
    /// @param id The market id.
    /// @param caller The caller.
    /// @param onBehalf The owner of the modified position.
    /// @param receiver The address that received the borrowed assets.
    /// @param assets The amount of assets borrowed.
    /// @param shares The amount of shares minted.
    event Borrow(
        Id indexed id,
        address caller,
        address indexed onBehalf,
        address indexed receiver,
        uint256 assets,
        uint256 shares
    );

    /// @notice Emitted on repayment of assets.
    /// @param id The market id.
    /// @param caller The caller.
    /// @param onBehalf The owner of the modified position.
    /// @param assets The amount of assets repaid. May be 1 over the corresponding market's `totalBorrowAssets`.
    /// @param shares The amount of shares burned.
    event Repay(Id indexed id, address indexed caller, address indexed onBehalf, uint256 assets, uint256 shares);

    /// @notice Emitted on supply of collateral.
    /// @param id The market id.
    /// @param caller The caller.
    /// @param onBehalf The owner of the modified position.
    /// @param assets The amount of collateral supplied.
    event SupplyCollateral(Id indexed id, address indexed caller, address indexed onBehalf, uint256 assets);

    /// @notice Emitted on withdrawal of collateral.
    /// @param id The market id.
    /// @param caller The caller.
    /// @param onBehalf The owner of the modified position.
    /// @param receiver The address that received the withdrawn collateral.
    /// @param assets The amount of collateral withdrawn.
    event WithdrawCollateral(
        Id indexed id, address caller, address indexed onBehalf, address indexed receiver, uint256 assets
    );

    /// @notice Emitted on liquidation of a position.
    /// @param id The market id.
    /// @param caller The caller.
    /// @param borrower The borrower of the position.
    /// @param repaidAssets The amount of assets repaid. May be 1 over the corresponding market's `totalBorrowAssets`.
    /// @param repaidShares The amount of shares burned.
    /// @param seizedAssets The amount of collateral seized.
    /// @param badDebtAssets The amount of assets of bad debt realized.
    /// @param badDebtShares The amount of borrow shares of bad debt realized.
    event Liquidate(
        Id indexed id,
        address indexed caller,
        address indexed borrower,
        uint256 repaidAssets,
        uint256 repaidShares,
        uint256 seizedAssets,
        uint256 badDebtAssets,
        uint256 badDebtShares
    );

    /// @notice Emitted on flash loan.
    /// @param caller The caller.
    /// @param token The token that was flash loaned.
    /// @param assets The amount that was flash loaned.
    event FlashLoan(address indexed caller, address indexed token, uint256 assets);

    /// @notice Emitted when setting an authorization.
    /// @param caller The caller.
    /// @param authorizer The authorizer address.
    /// @param authorized The authorized address.
    /// @param newIsAuthorized The new authorization status.
    event SetAuthorization(
        address indexed caller, address indexed authorizer, address indexed authorized, bool newIsAuthorized
    );

    /// @notice Emitted when setting an authorization with a signature.
    /// @param caller The caller.
    /// @param authorizer The authorizer address.
    /// @param usedNonce The nonce that was used.
    event IncrementNonce(address indexed caller, address indexed authorizer, uint256 usedNonce);

    /// @notice Emitted when accruing interest.
    /// @param id The market id.
    /// @param prevBorrowRate The previous borrow rate.
    /// @param interest The amount of interest accrued.
    event AccrueInterest(Id indexed id, uint256 prevBorrowRate, uint256 interest);

    /// @notice Emitted when setting the interest rate recipient
    /// @param newInterestRecipient The address of the interest rate recipient
    event SetInterestRecipient(address newInterestRecipient);
}
