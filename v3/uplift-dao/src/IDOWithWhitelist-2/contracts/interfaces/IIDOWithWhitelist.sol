// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.8;

import { IRefundIDO } from "./IRefundIDO.sol";

interface IIDOWithWhitelist is IRefundIDO {
    struct Round {
        uint32 maxEndTimestamp;
        uint256 priceTokenPerBuyTokenInUQ;
    }

    struct Range {
        uint128 allocation;
        uint128 registeredUserCount;
    }

    struct InitializeParams {
        address registry;
        address staking;
        address buyToken;
        address referralPool;
        address referrersData;
        address whitelist;
        address randomGenerator;
        address projectFundsHolder;
        address referrerBreakageFundsHolder;
        uint128 stakingPowerForOneTicket;
        uint256 distributedAmountInToken;
        uint32 registrationStartTimestamp;
        uint32 registrationEndTimestamp;
        uint32 startTimestamp;
        uint16 maxTicketsPerUser;
        uint256 openRoundMinStakingPower;
        uint128 rangeStep;
        Round exclusiveRound;
        Round openRound;
        Range[] ranges;
    }

    struct RegisterParams {
        uint256[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
    }

    struct BuyParams {
        uint256 amountInBuyToken;
        uint256 maxAllocationInBuyToken;
        uint256[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
        bytes32[] proof;
    }

    struct InfoIDODetails {
        address buyToken;
        address referralPool;
        uint256 distributedAmountInToken;
        uint256 registrationStartTimestamp;
        uint256 registrationEndTimestamp;
        uint256 startTimestamp;
        uint256 totalBoughtInToken;
        uint256 lotteryTicketsOfAccount;
        uint256 stakingPowerOfAccount;
        uint256 amountOfAccountInToken;
        uint256 availableRewardToClaim;
        uint256 lastIDOParticipationOfAccount;
        uint256 stakingPowerForOneTicket;
        uint256 openRoundMinStakingPower;
        uint256 allocationPerTicketInBuyToken;
        uint256 openRoundMaxAllocationInBuyToken;
        uint256 maxTicketsPerUser;
        uint32 stakingPowerInitialBreak;
        uint32 participationBreak;
        string linkToCsv;
        Round exclusiveRound;
        Round openRound;
    }

    function staking() external view returns (address);

    function buyToken() external view returns (address);

    function referralPool() external view returns (address);

    function referrersData() external view returns (address);

    function whitelist() external view returns (address);

    function randomGenerator() external view returns (address);

    function totalTickets() external view returns (uint256);

    function stakingPowerForOneTicket() external view returns (uint128);

    function maxTicketsPerUser() external view returns (uint16);

    function totalBoughtInToken() external view returns (uint256);

    function rangeStep() external view returns (uint128);

    function purchaseRateInBP() external view returns (uint16);

    function estimatedTotalRaiseInBuyToken() external view returns (uint256);

    function distributedAmountInToken() external view returns (uint256);

    function registrationStartTimestamp() external view returns (uint32);

    function registrationEndTimestamp() external view returns (uint32);

    function startTimestamp() external view returns (uint32);

    function allocationPerTicketInBuyToken() external view returns (uint256);

    function openRoundMinStakingPower() external view returns (uint256);

    function openRoundMaxAllocationInBuyToken() external view returns (uint256);

    function lotteryTicketsOf(address) external view returns (uint256);

    function setMerkleTreeWhiteList(string calldata linkToCSV_, bytes32 root_) external;

    function setDistributedAmountInToken(uint256 distributedAmountInToken_) external;

    function setRegistrationEndTimestamp(uint32 registrationEndTimestamp_) external;

    function setStartTimestamp(uint32 startTimestamp_) external;

    function setExclusiveRoundEnd(uint32 endTimestamp_) external;

    function setOpenRoundEnd(uint32 endTimestamp_) external;

    function setPrice(uint256 priceTokenPerBuyTokenInUQ_) external;

    function setRangeAllocations(uint128[] calldata allocations_) external;

    function register(RegisterParams calldata registerParams_) external;

    function unregister() external;

    function requestSeed(
        string calldata linkToCSV_,
        bytes32 root_,
        uint128[] calldata allocations_,
        uint16 purchaseRateInBP_,
        uint256 openRoundMaxAllocationInBuyToken_,
        uint256 allocationPerTicketInBuyToken_
    ) external;

    function buy(BuyParams calldata buyParams_) external;

    function info(address account_) external view returns (InfoIDODetails memory _details);

    function victoryTicketsCount(address account_) external view returns (uint256 count);

    function isMerkleProofValid(bytes32[] calldata proof_, bytes32 leaf_) external view returns (bool);

    event Register(address indexed user, uint256 tickets);
    event Unregister(address indexed user);
    event Buy(address indexed user, uint256 amountInBuyToken, uint256 amountInToken);
    event SetMerkleTreeWhiteList(string linkToCSV);
    event PrivateRoundBuy(address indexed account, uint256 amountInBuyToken, uint256 amountInToken);
    event PublicRoundBuy(address indexed account, uint256 amountInBuyToken, uint256 amountInToken);

    event SetDistributedAmountInToken(address sender, uint256 distributedAmountInToken);
    event SetRegistrationEndTimestamp(address sender, uint32 timestamp);
    event SetStartTimestamp(address sender, uint32 timestamp);
    event SetExclusiveRoundEnd(address sender, uint32 timestamp);
    event SetOpenRoundEnd(address sender, uint32 timestamp);
    event SetPrice(address sender, uint256 end);
}
