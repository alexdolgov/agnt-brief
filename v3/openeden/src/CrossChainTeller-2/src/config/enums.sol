// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

enum Role {
    Investor,
    InvestorBeta,
    Investor_Reserve1,
    Investor_Reserve2,
    Investor_Reserve3,
    Investor_Reserve4,
    Investor_Reserve5,
    System_FundAdmin,
    System_FundReserves,
    System_Entitlements,
    System_Teller,
    System_Oracle,
    System_Messenger,
    System_CCTP,
    System_Reserve1,
    System_Reserve2,
    System_Reserve3,
    System_Reserve4,
    System_Reserve5,
    Custodian_Centralized,
    Custodian_Decentralized
}

enum ExecuteMode {
    Single,
    Batch
}
