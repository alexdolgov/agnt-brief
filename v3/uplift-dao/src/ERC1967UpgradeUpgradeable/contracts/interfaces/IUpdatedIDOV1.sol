// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IUpdatedIDOV1 {

    event SetEaseInBP(address sender, uint16 easeInBP);
    event SetOpenRoundEnd(address sender, uint end);
    event SetPrice(address sender, uint end);
    event Register(address indexed user, uint tickets);
    event Unregister(address indexed user);
    event Buy(address indexed user, uint amountInBuyToken, uint amountInToken);

    struct Round {
        uint maxEndTimestamp;
        uint priceTokenPerBuyTokenInUQ;
    }

    struct InitializeParams {
        address registry;
        address staking;
        address buyToken;
        address projectFundsHolder;
        address referrerBreakageFundsHolder;
        address referralPool;
        address whitelist;
        address referrersData;
        address lotteryInfo;
        address randomGenerator;
        uint distributedAmountInToken;
        uint registrationStartTimestamp;
        uint registrationEndTimestamp;
        uint startTimestamp;
        uint maxTicketsPerUser;
        uint allocationPerTicketInBuyToken;
        uint openRoundMinStakingPower;
        uint openRoundMaxAllocationInBuyToken;
        uint32 placements;
        uint16 easeInBP;
        Round exclusiveRound;
        Round openRound;
    }

    struct InfoIDODetails {
        address buyToken;
        address referralPool;
        uint distributedAmountInToken;
        uint registrationStartTimestamp;
        uint registrationEndTimestamp;
        uint startTimestamp;
        uint totalBoughtInToken;
        uint lotteryTicketsOfAccount;
        uint stakingPowerOfAccount;
        uint amountOfAccountInToken;
        uint availableRewardToClaim;
        uint lastIDOParticipationOfAccount;
        uint stakingPowerForOneTicket;
        uint openRoundMinStakingPower;
        uint allocationPerTicketInBuyToken;
        uint openRoundMaxAllocationInBuyToken;
        uint maxTicketsPerUser;
        uint32 stakingPowerInitialBreak;
        uint32 participationBreak;
        Round exclusiveRound;
        Round openRound;
    }

    struct RegisterParams {
        uint[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
    }

    struct BuyParams {
        uint amountInBuyToken;
        uint[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
    }

    function registry() external view returns (address);
    function staking() external view returns (address);
    function buyToken() external view returns (address);
    function referralPool() external view returns (address);
    function referrersData() external view returns (address);
    function whitelist() external view returns (address);
    function lotteryInfo() external view returns (address);
    function randomGenerator() external view returns (address);

    function totalTickets() external view returns (uint);
    function totalBoughtInToken() external view returns (uint);
    function distributedAmountInToken() external view returns (uint);
    function registrationStartTimestamp() external view returns (uint);
    function registrationEndTimestamp() external view returns (uint);
    function startTimestamp() external view returns (uint);
    function maxTicketsPerUser() external view returns (uint);
    function allocationPerTicketInBuyToken() external view returns (uint);
    function openRoundMinStakingPower() external view returns (uint);
    function openRoundMaxAllocationInBuyToken() external view returns (uint);
    function placements() external view returns (uint32);
    function easeInBP() external view returns (uint16);
    function maxAllocationInToken() external view returns (uint);

    function lotteryTicketsOf(address) external view returns (uint);
    function amountOf(address) external view returns (uint);

    function info(address _account) external view returns (InfoIDODetails memory _details);
    function setEaseInBP(uint16 _easeInBP) external;
    function setOpenRoundEnd(uint _endTimestamp) external;
    function setPrice(uint _priceTokenPerBuyTokenInUQ) external;
    function requestSeed() external;
    function register(RegisterParams calldata registerParams) external;
    function unregister() external;
    function buy(BuyParams calldata buyParams) external;
    function victoryTicketsCount(address _account) external view returns (uint count);
}