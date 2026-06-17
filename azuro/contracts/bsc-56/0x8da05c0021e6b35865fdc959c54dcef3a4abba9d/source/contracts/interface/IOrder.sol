// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

interface IOrder {
    enum BetType {
        ORDINARY,
        COMBO
    }

    enum ConditionKind {
        PREMATCH,
        LIVE
    }

    struct ClientBetData {
        ClientData clientData;
        SubBet[] bets;
    }

    struct ClientComboBetData {
        ClientData clientData;
        uint64 minOdds;
        uint128 amount;
        uint256 nonce;
        ComboPart[] comboParts;
    }

    struct ClientData {
        string attention;
        address affiliate;
        address core;
        uint256 expiresAt;
        uint256 chainId;
        uint256 relayerFeeAmount;
        bool isFeeSponsored;
        bool isBetSponsored;
        bool isSponsoredBetReturnable; // true - bet belongs to paymaster, false - bet belongs bet owner
    }

    struct ComboPart {
        uint256 conditionId;
        uint128 outcomeId;
    }

    struct ComboPartOdds {
        uint256 conditionId;
        uint128 outcomeId;
        uint64 odds;
    }

    struct ConditionData {
        uint256 gameId;
        uint256 conditionId;
        ConditionKind conditionKind;
        uint64[] odds;
        uint128[] outcomes;
        uint128 potentialLossLimit;
        uint8 winningOutcomesCount;
    }

    struct OrderData {
        address betOwner;
        ConditionData[] conditionDatas;
        BetType betType;
        address oracle;
        bytes clientBetData;
        bytes bettorSignature;
        bytes oracleSignature;
    }

    struct SubBet {
        uint256 conditionId;
        uint128 outcomeId;
        uint64 minOdds;
        uint128 amount;
        uint256 nonce;
    }
}
