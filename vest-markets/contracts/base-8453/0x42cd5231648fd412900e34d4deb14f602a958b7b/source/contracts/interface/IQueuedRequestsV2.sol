// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

interface IQueuedRequestsV2 {
    enum NetworkType {
        EVM,
        SOLANA
    }

    enum Type {
        LP_ADD,
        LP_SCHEDULE_WITHDRAW,
        LP_IMMEDIATE_WITHDRAW,
        ACCOUNT_BALANCE_WITHDRAW,
        CANCEL_REQUEST,
        EXECUTE_ORDER,
        PROCESS_QUEUED_REQUESTS,
        DEPOSIT,
        LIQUIDATE_POSITION,
        LINK_ACCOUNT
    }

    struct Settings {
        uint256 removed; //total count of removed requests
        uint256 last; //last id
    }

    struct Data {
        address account;
        address signer;
        Type requestType;
        bytes args;
        uint256 timestamp;
    }

    struct DataForExchange {
        address account;
        bytes args;
    }

    struct DataWithId {
        uint256 id;
        address account;
        bytes args;
    }

    struct InputArgsStruct {
        uint256 value;
    }

    struct AccountBalanceWithdrawArgs {
        address recipient;
        address token;
        uint256 amount;
    }

    struct KeeperWithdrawArgs {
        uint256 value;
        int256 yield;
        uint256 penalty;
        uint256 sharesToBurn;
    }

    struct KeeperLiquidityAddArgs {
        uint256 sharesToMint;
    }

    struct MultiTypeRequestV2 {
        bytes32 id;
        bytes requestData;
        bytes requestDataSign;
    }

    enum RequestType {
        ORDER,
        LP,
        TRANSFER,
        TRANSFER_SOL,
        ISOLATE_ORDER
    }

    struct MultiTypeRequestV3 {
        address account;
        RequestType requestType;
        bytes requestArgs; // encoding of request
        bytes signature;
        address signer;
        bytes signatureProof; // encoding of request
        NetworkType networkType;
    }
}
