// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

library FeeRewards {
    using EnumerableMap for EnumerableMap.AddressToUintMap;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeMath for uint256;

    bytes32 private constant FEE_REWARDS = keccak256("xyz.elfi.storage.FeeRewards");
    bytes32 private constant FEE_AMOUNT_PREFIX = keccak256(abi.encode("FEE_AMOUNT_PREFIX"));

    uint256 private constant STAKING_REWARDS = 0;
    uint256 private constant DAO_REWARDS = 1;

    function generateFeeAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(FEE_AMOUNT_PREFIX, market, token));
    }

    struct Props {
        mapping(bytes32 => MarketRewards) marketTradingRewards;
        mapping(address => MarketRewards) poolRewards;
        mapping(uint256 => StakingRewards) stakingRewards;
    }

    struct MarketRewards {
        EnumerableSet.AddressSet tokens;
        mapping(address => uint256) feeAmount;
        mapping(address => uint256) unsettledFeeAmount;
        EnumerableSet.AddressSet collateralTokens;
        mapping(address => uint256) collateralFeeAmount;
        uint256 cumulativeRewardsPerStakeToken;
        uint256[] lastRewardsPerStakeTokenDeltas;
    }

    struct StakingRewards {
        EnumerableSet.AddressSet tokens;
        mapping(bytes32 => uint256) feeAmount;
        mapping(bytes32 => uint256) unsettledFeeAmount;
        EnumerableSet.AddressSet collateralTokens;
        mapping(bytes32 => uint256) collateralFeeAmount;
    }

    struct CumulativeRewardsPerStakeTokenData {
        uint256 cumulativeRewardsPerStakeToken;
        uint256 feeAmount;
        uint256 totalSupply;
    }

    event UpdateFeeRewardsCumulativeEvent(
        address[] stakeTokens,
        CumulativeRewardsPerStakeTokenData[] cumulativeRewardsPerStakeToken
    );

    function load() public pure returns (Props storage self) {
        bytes32 s = FEE_REWARDS;
        assembly {
            self.slot := s
        }
    }

    function loadPoolRewards(address stakeToken) public view returns (MarketRewards storage) {
        return load().poolRewards[stakeToken];
    }

    function loadMarketTradingRewards(bytes32 symbol) public view returns (MarketRewards storage) {
        return load().marketTradingRewards[symbol];
    }

    function loadStakingRewards() public view returns (StakingRewards storage) {
        return load().stakingRewards[STAKING_REWARDS];
    }

    function loadDaoRewards() public view returns (StakingRewards storage) {
        return load().stakingRewards[DAO_REWARDS];
    }

    function addFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        self.feeAmount[token] = self.feeAmount[token] + fee;
    }

    function subFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        self.feeAmount[token] = self.feeAmount[token] - fee;
    }

    function setFeeAmountZero(MarketRewards storage self, address token) external {
        self.feeAmount[token] = 0;
    }

    function addUnsettleFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        self.unsettledFeeAmount[token] = self.unsettledFeeAmount[token] + fee;
    }

    function subUnsettleFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        self.unsettledFeeAmount[token] = self.unsettledFeeAmount[token] - fee;
    }

    function addCollateralFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        if (!self.collateralTokens.contains(token)) {
            self.collateralTokens.add(token);
        }
        self.collateralFeeAmount[token] = self.collateralFeeAmount[token] + fee;
    }

    function subCollateralFeeAmount(MarketRewards storage self, address token, uint256 fee) external {
        self.collateralFeeAmount[token] = self.collateralFeeAmount[token] - fee;
    }

    function getFeeTokens(MarketRewards storage self) external view returns (address[] memory) {
        return self.tokens.values();
    }

    function getCollateralFeeTokens(MarketRewards storage self) external view returns (address[] memory) {
        return self.collateralTokens.values();
    }

    function getFeeAmount(MarketRewards storage self, address token) external view returns (uint256) {
        return self.feeAmount[token];
    }

    function getUnsettleFeeAmount(MarketRewards storage self, address token) external view returns (uint256) {
        return self.unsettledFeeAmount[token];
    }

    function getCollateralFeeAmount(MarketRewards storage self, address token) external view returns (uint256) {
        return self.collateralFeeAmount[token];
    }

    function getCumulativeRewardsPerStakeToken(MarketRewards storage self) external view returns (uint256) {
        return self.cumulativeRewardsPerStakeToken;
    }

    function addLastRewardsPerStakeTokenDelta(
        MarketRewards storage self,
        uint256 delta,
        uint256 maxIntervals
    ) external {
        if (maxIntervals == 0) {
            if (self.lastRewardsPerStakeTokenDeltas.length > 0) {
                self.lastRewardsPerStakeTokenDeltas = new uint[](0);
            }
            return;
        }
        if (
            self.lastRewardsPerStakeTokenDeltas.length == 0 || self.lastRewardsPerStakeTokenDeltas.length > maxIntervals
        ) {
            self.lastRewardsPerStakeTokenDeltas = new uint[](maxIntervals);
        }
        if (maxIntervals == 1) {
            self.lastRewardsPerStakeTokenDeltas[0] = delta;
            return;
        }
        for (uint i = 1; i < maxIntervals; i++) {
            self.lastRewardsPerStakeTokenDeltas[i - 1] = self.lastRewardsPerStakeTokenDeltas[i];
        }
        self.lastRewardsPerStakeTokenDeltas[maxIntervals - 1] = delta;
    }

    function getPoolRewardsPerStakeTokenDeltaLimit(
        MarketRewards storage self,
        uint256 limit
    ) external view returns (uint256 deltaLimit) {
        if (limit == 0 || self.lastRewardsPerStakeTokenDeltas.length == 0) {
            return 0;
        }
        for (uint256 i; i < self.lastRewardsPerStakeTokenDeltas.length; i++) {
            deltaLimit += self.lastRewardsPerStakeTokenDeltas[i];
        }
    }

    function addFeeAmount(StakingRewards storage self, address market, address token, uint256 fee) external {
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        bytes32 key = generateFeeAmountKey(market, token);
        self.feeAmount[key] = self.feeAmount[key] + fee;
    }

    function addUnsettleFeeAmount(StakingRewards storage self, address market, address token, uint256 fee) external {
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        bytes32 key = generateFeeAmountKey(market, token);
        self.unsettledFeeAmount[key] = self.unsettledFeeAmount[key] + fee;
    }

    function subUnsettleFeeAmount(StakingRewards storage self, address market, address token, uint256 fee) external {
        bytes32 key = generateFeeAmountKey(market, token);
        self.unsettledFeeAmount[key] = self.unsettledFeeAmount[key] - fee;
    }

    function addCollateralFeeAmount(StakingRewards storage self, address market, address token, uint256 fee) external {
        if (!self.collateralTokens.contains(token)) {
            self.collateralTokens.add(token);
        }
        bytes32 key = generateFeeAmountKey(market, token);
        self.collateralFeeAmount[key] = self.collateralFeeAmount[key] + fee;
    }

    function getFeeAmount(StakingRewards storage self, address market, address token) external view returns (uint256) {
        bytes32 key = generateFeeAmountKey(market, token);
        return self.feeAmount[key];
    }

    function getUnsettleFeeAmount(
        StakingRewards storage self,
        address market,
        address token
    ) external view returns (uint256) {
        bytes32 key = generateFeeAmountKey(market, token);
        return self.unsettledFeeAmount[key];
    }

    function getCollateralFeeAmount(
        StakingRewards storage self,
        address market,
        address token
    ) external view returns (uint256) {
        bytes32 key = generateFeeAmountKey(market, token);
        return self.collateralFeeAmount[key];
    }

    function getFeeTokens(StakingRewards storage self) external view returns (address[] memory) {
        return self.tokens.values();
    }

    function getCollateralFeeTokens(StakingRewards storage self) external view returns (address[] memory) {
        return self.collateralTokens.values();
    }

    function emitUpdateFeeRewardsCumulativeEvent(
        address[] memory stakeTokens,
        CumulativeRewardsPerStakeTokenData[] memory cumulativeRewardsPerStakeToken
    ) external {
        emit UpdateFeeRewardsCumulativeEvent(stakeTokens, cumulativeRewardsPerStakeToken);
    }
}
