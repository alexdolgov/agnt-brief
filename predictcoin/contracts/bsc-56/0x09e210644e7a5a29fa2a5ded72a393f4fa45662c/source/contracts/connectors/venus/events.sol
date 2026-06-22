pragma solidity ^0.7.0;

contract Events {
    //supply an asset
    event LogDeposit(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    //redeem deposits
    event LogWithdraw(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    //borrow an asset
    event LogBorrow(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    //repay back an asset
    event LogPayback(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );

    //deposit vTokens
    event LogDepositVToken(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 vTokenAmt,
        uint256 getId,
        uint256 setId
    );
    //withdraw vtokens
    event LogWithdrawVToken(
        address indexed token,
        address vToken,
        uint256 tokenAmt,
        uint256 vTokenAmt,
        uint256 getId,
        uint256 setId
    );

    //liquidate borrow
    event LogLiquidate(
        address indexed borrower,
        address indexed tokenToPay,
        address indexed tokenInReturn,
        uint256 tokenAmt,
        uint256 getId,
        uint256 setId
    );
}
