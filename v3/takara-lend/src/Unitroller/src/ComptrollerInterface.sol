// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

abstract contract ComptrollerInterface {
    /// @notice Indicator that this is a Comptroller contract (for inspection)
    bool public constant isComptroller = true;

    /**
     * Assets You Are In **
     */
    function enterMarkets(address[] calldata tTokens) external virtual returns (uint256[] memory);
    function exitMarket(address tToken) external virtual returns (uint256);

    /**
     * Policy Hooks **
     */
    function mintAllowed(address tToken, address minter, uint256 mintAmount) external virtual returns (uint256);

    function redeemAllowed(address tToken, address redeemer, uint256 redeemTokens) external virtual returns (uint256);

    // Do not remove, still used by TToken
    function redeemVerify(address tToken, address redeemer, uint256 redeemAmount, uint256 redeemTokens)
        external
        pure
        virtual;

    function borrowAllowed(address tToken, address borrower, uint256 borrowAmount) external virtual returns (uint256);

    function repayBorrowAllowed(address tToken, address payer, address borrower, uint256 repayAmount)
        external
        virtual
        returns (uint256);

    function liquidateBorrowAllowed(
        address tTokenBorrowed,
        address tTokenCollateral,
        address liquidator,
        address borrower,
        uint256 repayAmount
    ) external view virtual returns (uint256);

    function seizeAllowed(
        address tTokenCollateral,
        address tTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external virtual returns (uint256);

    function transferAllowed(address tToken, address src, address dst, uint256 transferTokens)
        external
        virtual
        returns (uint256);

    /**
     * Liquidity/Liquidation Calculations **
     */
    function liquidateCalculateSeizeTokens(address tTokenBorrowed, address tTokenCollateral, uint256 repayAmount)
        external
        view
        virtual
        returns (uint256, uint256);
}

// The hooks that were patched out of the comptroller to make room for the supply caps, if we need them
abstract contract ComptrollerInterfaceWithAllVerificationHooks is ComptrollerInterface {
    function mintVerify(address tToken, address minter, uint256 mintAmount, uint256 mintTokens) external virtual;

    // Included in ComptrollerInterface already
    // function redeemVerify(address tToken, address redeemer, uint redeemAmount, uint redeemTokens) virtual external;

    function borrowVerify(address tToken, address borrower, uint256 borrowAmount) external virtual;

    function repayBorrowVerify(
        address tToken,
        address payer,
        address borrower,
        uint256 repayAmount,
        uint256 borrowerIndex
    ) external virtual;

    function liquidateBorrowVerify(
        address tTokenBorrowed,
        address tTokenCollateral,
        address liquidator,
        address borrower,
        uint256 repayAmount,
        uint256 seizeTokens
    ) external virtual;

    function seizeVerify(
        address tTokenCollateral,
        address tTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external virtual;

    function transferVerify(address tToken, address src, address dst, uint256 transferTokens) external virtual;
}
