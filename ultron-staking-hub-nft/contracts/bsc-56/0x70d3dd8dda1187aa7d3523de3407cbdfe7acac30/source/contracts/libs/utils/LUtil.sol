// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

library LUtil {
    enum PlatformStatus {
        OPENED,
        RUNNING,
        CLOSING,
        CLOSED
    }
    enum GameStatus {
        OPENED,
        RUNNING,
        CLOSING,
        CLOSED
    }
    enum RoundStatus {
        OPEN,
        REFUND,
        GENERATING,
        PROCESSING,
        CALCULATED_WINNERS,
        FUNDED,
        PAYING,
        PAYED,
        CLOSED
    }
    enum WinnerCategory {
        JACKPOT,
        CATEGORY2,
        CATEGORY3,
        CATEGORY4,
        CATEGORY5
    }
    enum Wallets {
        JACKPOT_WALLET,
        CATEGORY2_WALLET,
        CATEGORY3_WALLET,
        CATEGORY4_WALLET,
        CATEGORY5_WALLET,
        BOOSTER_WALLET
    }
    enum Distribution {
        REFERRER,
        REVENUE,
        PLATFORM,
        BURN,
        BUYBACK,
        BUYBACK_RECEIVER,
        CATEGORY2_WALLET,
        CATEGORY3_WALLET,
        CATEGORY4_WALLET,
        CATEGORY5_WALLET,
        BOOSTER_WALLET,
        JACKPOT_WALLET
    }

    struct PrizeWallet {
        string key;
        address wallet;
        uint256 amount;
    }

    struct WinnerPay {
        address recipient;
        uint256 amount;
        uint256 ticketsCount;
        bool isValid;
    }

    /// All the needed info around a ticket
    struct TicketObject {
        uint256 key;
        address owner;
        uint8[] numbers;
        bool isValid;
    }

    struct DistributionFlags {
        bool isBonusAvailable;
        bool isBurnAvailable;
        bool isBuybackAvailable;
        bool isRevenueAvailable;
    }
}
