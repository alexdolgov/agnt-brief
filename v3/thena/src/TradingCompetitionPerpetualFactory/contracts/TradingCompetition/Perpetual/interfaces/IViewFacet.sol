// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

enum PositionType {
    LONG,
    SHORT
}

enum OrderType {
    LIMIT,
    MARKET
}

enum QuoteStatus {
    PENDING, //0
    LOCKED, //1
    CANCEL_PENDING, //2
    CANCELED, //3
    OPENED, //4
    CLOSE_PENDING, //5
    CANCEL_CLOSE_PENDING, //6
    CLOSED, //7
    LIQUIDATED, //8
    EXPIRED //9
}

struct LockedValues {
    uint256 cva;
    uint256 lf;
    uint256 partyAmm;
    uint256 partyBmm;
}

struct Quote {
    uint256 id;
    address[] partyBsWhiteList;
    uint256 symbolId;
    PositionType positionType;
    OrderType orderType;
    // Price of quote which PartyB opened in 18 decimals
    uint256 openedPrice;
    uint256 initialOpenedPrice;
    // Price of quote which PartyA requested in 18 decimals
    uint256 requestedOpenPrice;
    uint256 marketPrice;
    // Quantity of quote which PartyA requested in 18 decimals
    uint256 quantity;
    // Quantity of quote which PartyB has closed until now in 18 decimals
    uint256 closedAmount;
    LockedValues initialLockedValues;
    LockedValues lockedValues;
    uint256 maxFundingRate;
    address partyA;
    address partyB;
    QuoteStatus quoteStatus;
    uint256 avgClosedPrice;
    uint256 requestedClosePrice;
    uint256 quantityToClose;
    // handle partially open position
    uint256 parentId;
    uint256 createTimestamp;
    uint256 statusModifyTimestamp;
    uint256 lastFundingPaymentTimestamp;
    uint256 deadline;
    uint256 tradingFee;
}

struct Symbol {
    uint256 symbolId;
    string name;
    bool isValid;
    uint256 minAcceptableQuoteValue;
    uint256 minAcceptablePortionLF;
    uint256 tradingFee;
    uint256 maxLeverage;
    uint256 fundingRateEpochDuration;
    uint256 fundingRateWindowTime;
}

interface ISymmioViewFacet {
    function balanceOf(address user) external view returns (uint256);

    function partyAStats(
        address partyA
    )
        external
        view
        returns (
            bool,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        );

    function balanceInfoOfPartyA(
        address partyA
    )
        external
        view
        returns (uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256);

    function allocatedBalanceOfPartyA(address partyA) external view returns (uint256);

    function withdrawCooldownOf(address user) external view returns (uint256);

    function nonceOfPartyA(address partyA) external view returns (uint256);

    function isSuspended(address user) external view returns (bool);    

    function getSymbol(uint256 symbolId) external view returns (Symbol memory);

    function getSymbols(uint256 start, uint256 size) external view returns (Symbol[] memory);

    function symbolsByQuoteId(uint256[] memory quoteIds) external view returns (Symbol[] memory);

    function symbolNameByQuoteId(uint256[] memory quoteIds) external view returns (string[] memory);

    function symbolNameById(uint256[] memory symbolIds) external view returns (string[] memory);

    function getQuote(uint256 quoteId) external view returns (Quote memory);

    function getQuotesByParent(uint256 quoteId, uint256 size) external view returns (Quote[] memory);

    function quoteIdsOf(address partyA, uint256 start, uint256 size) external view returns (uint256[] memory);

    function getQuotes(address partyA, uint256 start, uint256 size) external view returns (Quote[] memory);

    function quotesLength(address user) external view returns (uint256);

    function partyAPositionsCount(address partyA) external view returns (uint256);

    function getPartyAOpenPositions(address partyA, uint256 start, uint256 size) external view returns (Quote[] memory);

    function getPartyAPendingQuotes(address partyA) external view returns (uint256[] memory);

    function getCollateral() external view returns (address);

}