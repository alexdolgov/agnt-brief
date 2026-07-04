// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.4;

interface IIDOV3 {

    event Register(address indexed user, uint tickets);
    event Unregister(address indexed user);
    event Buy(address indexed user, uint amountInBuyToken, uint amountInToken);
    event SetMerkleTreeWhiteList(string linkToCSV);
    event PrivateRoundBuy(address indexed account, uint amountInBuyToken, uint amountInToken);
    event PublicRoundBuy(address indexed account, uint amountInBuyToken, uint amountInToken);

    event SetDistributedAmountInToken(address sender, uint distributedAmountInToken);
    event SetRegistrationEndTimestamp(address sender, uint timestamp);
    event SetStartTimestamp(address sender, uint timestamp);
    event SetExclusiveRoundEnd(address sender, uint timestamp);
    event SetOpenRoundEnd(address sender, uint timestamp);
    event SetPrice(address sender, uint end);

    struct Round {
        uint maxEndTimestamp;
        uint priceTokenPerBuyTokenInUQ;
    }

    struct Range {
        uint128 allocation;
        uint128 registeredUserCount;
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
        uint openRoundMinStakingPower;
        uint128 rangeStep;
        Round exclusiveRound;
        Round openRound;
        Range[] ranges;
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
        string linkToCsv;
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
        uint maxAllocationInBuyToken;
        uint[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
        bytes32[] proof;
    }

    function registry() external view returns (address);
    function staking() external view returns (address);
    function buyToken() external view returns (address);
    function referralPool() external view returns (address);
    function referrersData() external view returns (address);
    function whitelist() external view returns (address);
    function lotteryInfo() external view returns (address);
    function randomGenerator() external view returns (address);
    function merkleTreeWhiteList() external view returns (address);

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
    function maxAllocationInToken() external view returns (uint);
    function estimatedTotalRaiseInBuyToken() external view returns (uint);
    function rangeStep() external view returns (uint128);

    function lotteryTicketsOf(address) external view returns (uint);
    function amountOf(address) external view returns (uint);

    function info(address _account) external view returns (InfoIDODetails memory _details);
    function setMerkleTreeWhiteList(string calldata _linkToCSV, bytes32 _root) external;
    function setDistributedAmountInToken(uint _distributedAmountInToken) external;
    function setRegistrationEndTimestamp(uint _registrationEndTimestamp) external;
    function setStartTimestamp(uint _startTimestamp) external;
    function setExclusiveRoundEnd(uint _endTimestamp) external;
    function setOpenRoundEnd(uint _endTimestamp) external;
    function setPrice(uint _priceTokenPerBuyTokenInUQ) external;
    function setRangeAllocations(uint128[] calldata _allocations) external;
    function requestSeed(string calldata _linkToCSV, bytes32 _root, uint128[] calldata _allocations, uint _openRoundMaxAllocationInBuyToken, uint _allocationPerTicketInBuyToken) external;
    function register(RegisterParams calldata registerParams) external;
    function unregister() external;
    function buy(BuyParams calldata buyParams) external;
    function victoryTicketsCount(address _account) external view returns (uint count);
    function isMerkleProofValid(bytes32[] calldata _proof, address _account, bytes32 _leaf) external view returns (bool);
}