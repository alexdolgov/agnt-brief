// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

interface IPrivatePresaleV3MerkleTree {
    event Buy(address indexed user, uint amountInToken);

    struct InitializeParams {
        address registry;
        address staking;
        address token;
        address whitelist;
        address projectFundsHolder;
        uint distributedAmount;
        uint startTimestamp;
        uint endTimestamp;
        uint minAllocationInBuyToken;
        uint maxAllocationInBuyToken;
        uint minStakingPower;
        uint priceTokenPerBuyTokenInUQ;
        string linkToCSV;
        bytes32 root;
    }

    struct InfoDetails {
        address token;
        uint distributedAmount;
        uint startTimestamp;
        uint endTimestamp;
        uint totalBought;
        uint amountOfAccountInToken;
        uint minAllocationInBuyToken;
        uint maxAllocationInBuyToken;
        uint minStakingPower;
        uint priceTokenPerBuyTokenInUQ;
        uint32 stakingPowerInitialBreak;
        string linkToCSV;
    }

    struct BuyParams {
        uint amountInBuyToken;
        uint[] idsToUpdate;
        bytes[] signatures;
        address[] signers;
        bytes32[] proof;
    }

    function registry() external view returns (address);

    function staking() external view returns (address);

    function token() external view returns (address);

    function whitelist() external view returns (address);

    function totalBought() external view returns (uint);

    function distributedAmount() external view returns (uint);

    function startTimestamp() external view returns (uint);

    function endTimestamp() external view returns (uint);

    function minAllocationInBuyToken() external view returns (uint);

    function maxAllocationInBuyToken() external view returns (uint);

    function minStakingPower() external view returns (uint);

    function priceTokenPerBuyTokenInUQ() external view returns (uint);

    function buyTokenAmountOf(address) external view returns (uint);

    function amountOf(address) external view returns (uint);

    function info(address) external view returns (InfoDetails memory);

    function buy(BuyParams calldata) external;

    function setPriceTokenPerBuyTokenInUQ(uint) external;

    function isMerkleProofValid(bytes32[] calldata _proof, bytes32 _leaf) external view returns (bool);
}
