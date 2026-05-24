// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../utils/CalUtils.sol";
import "../utils/ChainUtils.sol";
import "../utils/Errors.sol";
import "./AppPoolConfig.sol";

/// @title LpPool Storage
/// @dev Library for LP pool storage and management
library LpPool {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;
    using SafeCast for uint256;
    using SafeCast for int256;
    using SafeMath for uint256;

    /// @dev Struct to store properties of the liquidity pool
    /// @param stakeToken The address of the pool
    /// @param stakeTokenName the name of the pool, e.g. elfWETH,elfBTC,elfSOL...
    /// @param baseToken The address of the base token, e.g. WBTC
    /// @param symbol The market symbol
    /// @param baseTokenBalance  LpPool.TokenBalance
    /// @param stableTokens Set of stable token addresses in this pool
    /// @param stableTokenBalances Mapping of stable token addresses to their balance
    /// @param tradingFeeRewards LpPool.FeeRewards
    /// @param borrowingFee LpPool.BorrowingFee
    /// @param apr Annual percentage rate (APR) of this pool
    /// @param totalClaimedRewards Total rewards claimed from this pool
    struct Props {
        address stakeToken;
        string stakeTokenName;
        address baseToken;
        bytes32 symbol;
        TokenBalance baseTokenBalance;
        EnumerableSet.AddressSet stableTokens;
        mapping(address => TokenBalance) stableTokenBalances;
        mapping(address => FeeRewards) tradingFeeRewards;
        BorrowingFee borrowingFee;
        uint256 apr;
        uint256 totalClaimedRewards;
    }

    /// @dev Struct to store token balance details
    /// @param amount Total amount of the token, it may be come from mint, fee rewards, rebalance or pool PNL.
    /// @param liability Liability associated with the token
    /// @param holdAmount Amount of the token that is currently held, holdAmount will increase when increasing position (margin)
    /// @param unsettledAmount Unsettled amount of the token, the transition when actual assets or funding fees are not received after the pool has made a profit
    /// @param fundingAmount The settled funding amount
    /// @param lossAmount Loss amount of the token, When a user makes a profit by shorting in the corresponding market, resulting in a loss for the USD pool, the loss will be recorded for this pool
    struct TokenBalance {
        uint256 amount;
        uint256 liability;
        uint256 holdAmount;
        uint256 unsettledAmount;
        int256 fundingSettledAmount;
        uint256 lossAmount;
    }

    /// @dev Struct to store fee rewards details
    /// @param amount Total amount of fee token
    /// @param unsettledAmount Unsettled amount of fee token
    struct FeeRewards {
        uint256 amount;
        uint256 unsettledAmount;
    }

    /// @dev Struct to store borrowing fee details
    /// @param totalBorrowingFee The total amount of borrowing fees accumulated
    /// @param totalRealizedBorrowingFee The total amount of borrowing fees that have been realized
    /// @param cumulativeBorrowingFeePerToken The cumulative borrowing fee per token
    /// @param lastUpdateTime The last time the borrowing fee were updated
    struct BorrowingFee {
        uint256 totalBorrowingFee;
        uint256 totalRealizedBorrowingFee;
        uint256 cumulativeBorrowingFeePerToken;
        uint256 lastUpdateTime;
    }

    /// @dev Struct to cache pool token update event data
    /// @param stakeToken The address of the pool
    /// @param token The address of the token
    /// @param preAmount The previous amount of the token
    /// @param preLiability The previous liability of the pool
    /// @param preHoldAmount The previous hold amount of the token
    /// @param preUnsettledAmount The previous unsettled amount of the token
    /// @param preLossAmount The previous loss amount of the pool
    /// @param amount The current amount of the token
    /// @param liability The current liability of the pool
    /// @param holdAmount The current hold amount of the token
    /// @param unsettledAmount The current unsettled amount of the token
    /// @param lossAmount The current loss amount of the pool
    /// @param updateBlock The block number when the update occurred
    struct PoolTokenUpdateEventCache {
        address stakeToken;
        address token;
        uint256 preAmount;
        uint256 preLiability;
        uint256 preHoldAmount;
        uint256 preUnsettledAmount;
        uint256 preLossAmount;
        int256 preFundingSettledAmount;
        uint256 amount;
        uint256 liability;
        uint256 holdAmount;
        uint256 unsettledAmount;
        uint256 lossAmount;
        int256 fundingSettledAmount;
        uint256 updateBlock;
    }

    /// @dev Event emitted when pool token is updated
    /// @param stakeToken The address of the pool
    /// @param token The address of the token
    /// @param preBalance TokenBalance
    /// @param balance TokenBalance
    /// @param updateBlock The block number when the update occurred
    event PoolTokenUpdateEvent(
        address stakeToken,
        address token,
        TokenBalance preBalance,
        TokenBalance balance,
        uint256 updateBlock
    );

    /// @dev Event emitted when pool collateral token is updated
    /// @param stakeToken The address of the stake token
    /// @param collateral The address of the collateral token
    /// @param preAmount The previous amount of the collateral token
    /// @param amount The new amount of the collateral token
    /// @param updateBlock The block number when the update occurred
    event PoolCollateralTokenUpdateEvent(
        address stakeToken,
        address collateral,
        uint256 preAmount,
        uint256 amount,
        uint256 updateBlock
    );

    /// @dev Event emitted when pool borrowing fee is updated
    /// @param stakeToken The address of the stake token
    /// @param borrowingFee The updated borrowing fee details
    event PoolBorrowingFeeUpdateEvent(address stakeToken, BorrowingFee borrowingFee);

    /// @dev Loads LpPool.Props
    /// @param stakeToken The address of the stake token
    /// @return self LpPool.Props
    function load(address stakeToken) public pure returns (Props storage self) {
        bytes32 s = keccak256(abi.encode("xyz.elfi.storage.LpPool", stakeToken));

        assembly {
            self.slot := s
        }
    }

    /// @dev Adds base token to the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to add
    function addBaseToken(Props storage self, uint256 amount) external {
        addBaseToken(self, amount, true);
    }

    /// @dev Adds base token to the liquidity pool with an option to emit event
    /// @param self LpPool.Props
    /// @param amount The amount of base token to add
    /// @param needEmitEvent Boolean indicating whether to emit event
    function addBaseToken(Props storage self, uint256 amount, bool needEmitEvent) public {
        if (amount == 0) {
            return;
        }
        if (needEmitEvent) {
            PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
                self.stakeToken,
                self.baseToken,
                self.baseTokenBalance
            );
            self.baseTokenBalance.amount += amount;
            cache.amount = self.baseTokenBalance.amount;
            _emitPoolUpdateEvent(cache);
        } else {
            self.baseTokenBalance.amount += amount;
        }
    }

    /// @dev Subtracts base token from the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to subtract
    function subBaseToken(Props storage self, uint256 amount) external {
        subBaseToken(self, amount, true);
    }

    /// @dev Subtracts base token from the liquidity pool with an option to emit event
    /// @param self LpPool.Props
    /// @param amount The amount of base token to subtract
    /// @param emitEvent Boolean indicating whether to emit event
    function subBaseToken(Props storage self, uint256 amount, bool emitEvent) public {
        if (amount == 0) {
            return;
        }
        require(self.baseTokenBalance.amount >= amount, "base token amount less than sub amount!");
        if (emitEvent) {
            PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
                self.stakeToken,
                self.baseToken,
                self.baseTokenBalance
            );
            self.baseTokenBalance.amount -= amount;
            cache.amount = self.baseTokenBalance.amount;
            _emitPoolUpdateEvent(cache);
        } else {
            self.baseTokenBalance.amount -= amount;
        }
    }

    /// @dev Holds base token in the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to hold
    function holdBaseToken(Props storage self, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        require(
            isHoldAmountAllowed(self.baseTokenBalance, getPoolLiquidityLimit(self), amount),
            "hold failed with balance not enough"
        );
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.holdAmount += amount;
        cache.holdAmount = self.baseTokenBalance.holdAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev UnHolds base token in the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to unhold
    function unHoldBaseToken(Props storage self, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        require(self.baseTokenBalance.holdAmount >= amount, "sub hold bigger than hold");
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.holdAmount -= amount;
        cache.holdAmount = self.baseTokenBalance.holdAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds unsettled base token to the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to add
    function addUnsettleBaseToken(Props storage self, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.unsettledAmount += amount;
        cache.unsettledAmount = self.baseTokenBalance.unsettledAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Settles base token in the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to settle
    function settleBaseToken(Props storage self, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.unsettledAmount -= amount;
        self.baseTokenBalance.amount += amount;
        cache.unsettledAmount = self.baseTokenBalance.unsettledAmount;
        cache.amount = self.baseTokenBalance.amount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds unsettled base token to the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to change
    function addBaseTokenFundingAmount(Props storage self, int256 amount) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.fundingSettledAmount += amount;
        cache.fundingSettledAmount = self.baseTokenBalance.fundingSettledAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Settles base token in the liquidity pool
    /// @param self LpPool.Props
    /// @param amount The amount of base token to settle
    function settleBaseTokenFundingAmount(Props storage self, int256 amount, bool isCrossMargin) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            self.baseToken,
            self.baseTokenBalance
        );
        self.baseTokenBalance.fundingSettledAmount -= amount;
        if (amount > 0 && isCrossMargin) {
            self.baseTokenBalance.unsettledAmount += amount.toUint256();
        } else if (amount > 0 && !isCrossMargin) {
            self.baseTokenBalance.amount += amount.toUint256();
        } else {
            require(
                self.baseTokenBalance.amount.toInt256() + amount >= 0,
                "settle base token funding amount overflow!"
            );
            self.baseTokenBalance.amount -= (-amount).toUint256();
        }

        cache.fundingSettledAmount = self.baseTokenBalance.fundingSettledAmount;
        cache.unsettledAmount = self.baseTokenBalance.unsettledAmount;
        cache.amount = self.baseTokenBalance.amount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds stable token to the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to add
    function addStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        if (self.stableTokens.contains(stableToken)) {
            self.stableTokenBalances[stableToken].amount += amount;
        } else {
            self.stableTokens.add(stableToken);
            self.stableTokenBalances[stableToken].amount = amount;
        }
        cache.amount = self.stableTokenBalances[stableToken].amount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Subtracts stable token from the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to subtract
    function subStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        self.stableTokenBalances[stableToken].amount -= amount;
        cache.amount = self.stableTokenBalances[stableToken].amount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Holds stable token in the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to hold
    function holdStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        require(
            isHoldAmountAllowed(self.stableTokenBalances[stableToken], getPoolLiquidityLimit(self), amount),
            "hold failed with balance not enough"
        );
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        self.stableTokenBalances[stableToken].holdAmount += amount;
        cache.holdAmount = self.stableTokenBalances[stableToken].holdAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev UnHolds stable token in the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to unHold
    function unHoldStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        require(self.stableTokenBalances[stableToken].holdAmount >= amount, "sub hold bigger than hold");
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        self.stableTokenBalances[stableToken].holdAmount -= amount;
        cache.holdAmount = self.stableTokenBalances[stableToken].holdAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds unsettled stable token to the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to add
    function addUnsettleStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        self.stableTokenBalances[stableToken].unsettledAmount += amount;
        cache.unsettledAmount = self.stableTokenBalances[stableToken].unsettledAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Settles stable token in the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to settle
    function settleStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        TokenBalance storage balance = self.stableTokenBalances[stableToken];

        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(self.stakeToken, stableToken, balance);
        balance.unsettledAmount -= amount;

        balance.amount += amount;
        cache.unsettledAmount = balance.unsettledAmount;
        cache.amount = balance.amount;

        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds unsettled stale tokens funding amount
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to add
    function addStableTokenFundingAmount(Props storage self, address stableToken, int256 amount) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(
            self.stakeToken,
            stableToken,
            self.stableTokenBalances[stableToken]
        );
        self.stableTokenBalances[stableToken].fundingSettledAmount += amount;
        cache.fundingSettledAmount = self.stableTokenBalances[stableToken].fundingSettledAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Settles stable token funding amount
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to settle
    function settleStableTokenFundingAmount(
        Props storage self,
        address stableToken,
        int256 amount,
        bool isCrossMargin
    ) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        TokenBalance storage balance = self.stableTokenBalances[stableToken];

        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(self.stakeToken, stableToken, balance);
        balance.fundingSettledAmount -= amount;
        if (amount > 0 && isCrossMargin) {
            balance.unsettledAmount += amount.toUint256();
        } else if (amount > 0 && !isCrossMargin) {
            balance.amount += amount.toUint256();
        }
        cache.fundingSettledAmount = balance.fundingSettledAmount;
        cache.amount = balance.amount;
        cache.unsettledAmount = balance.unsettledAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Adds loss stable token to the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to add
    function addLossStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        TokenBalance storage balance = self.stableTokenBalances[stableToken];
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(self.stakeToken, stableToken, balance);
        balance.lossAmount += amount;
        cache.lossAmount = balance.lossAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Subtracts loss stable token from the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @param amount The amount of stable token to subtract
    function subLossStableToken(Props storage self, address stableToken, uint256 amount) external {
        if (amount == 0) {
            return;
        }
        if (!self.stableTokens.contains(stableToken)) {
            self.stableTokens.add(stableToken);
        }
        TokenBalance storage balance = self.stableTokenBalances[stableToken];
        require(balance.lossAmount >= amount, "sub loss stable token overflow!");
        PoolTokenUpdateEventCache memory cache = _convertBalanceToCache(self.stakeToken, stableToken, balance);
        balance.lossAmount -= amount;
        cache.lossAmount = balance.lossAmount;
        _emitPoolUpdateEvent(cache);
    }

    /// @dev Gets the list of stable tokens in the liquidity pool
    /// @param self LpPool.Props
    /// @return The list of stable token addresses
    function getStableTokens(Props storage self) external view returns (address[] memory) {
        return self.stableTokens.values();
    }

    /// @dev Gets the balance of a stable token in the liquidity pool
    /// @param self LpPool.Props
    /// @param stableToken The address of the stable token
    /// @return The balance of the stable token
    function getStableTokenBalance(
        Props storage self,
        address stableToken
    ) external view returns (TokenBalance storage) {
        return self.stableTokenBalances[stableToken];
    }

    /// @dev Gets the liquidity limit of the liquidity pool
    /// @param self LpPool.Props
    /// @return The liquidity limit of the pool
    function getPoolLiquidityLimit(Props storage self) public view returns (uint256) {
        return AppPoolConfig.getLpPoolConfig(self.stakeToken).poolLiquidityLimit;
    }

    /// @dev Gets the list of collateral tokens and their amounts in the liquidity pool
    /// @param collateralTokenAmounts The mapping of collateral token amounts
    /// @return tokens The list of collateral token addresses
    /// @return amounts The list of collateral token amounts
    function getCollateralTokenAmounts(
        EnumerableMap.AddressToUintMap storage collateralTokenAmounts
    ) external view returns (address[] memory tokens, uint256[] memory amounts) {
        tokens = collateralTokenAmounts.keys();
        amounts = new uint256[](tokens.length);
        for (uint256 i; i < tokens.length; i++) {
            amounts[i] = collateralTokenAmounts.get(tokens[i]);
        }
    }

    /// @dev Checks if a token amount can be subtracted from the liquidity pool
    /// @param self LpPool.Props
    /// @param token The address of the token
    /// @param amount The amount of the token
    /// @return True if the amount can be subtracted, false otherwise
    function isSubAmountAllowed(Props storage self, address token, uint256 amount) internal view returns (bool) {
        TokenBalance storage balance = token == self.baseToken
            ? self.baseTokenBalance
            : self.stableTokenBalances[token];
        if (balance.amount < amount) {
            return false;
        }
        if (balance.amount - balance.holdAmount < amount) {
            return false;
        }
        uint256 poolLiquidityLimit = getPoolLiquidityLimit(self);
        if (poolLiquidityLimit > 0) {
            return
                CalUtils.mulRate(balance.amount - amount + balance.unsettledAmount, poolLiquidityLimit) >=
                balance.holdAmount;
        }
        return true;
    }

    /// @dev Checks if a hold amount is allowed for a token balance
    /// @param balance The token balance
    /// @param poolLiquidityLimit The liquidity limit of the pool
    /// @param amount The amount to hold
    /// @return True if the hold amount is allowed, false otherwise
    function isHoldAmountAllowed(
        TokenBalance storage balance,
        uint256 poolLiquidityLimit,
        uint256 amount
    ) public view returns (bool) {
        if (poolLiquidityLimit == 0) {
            return balance.amount + balance.unsettledAmount - balance.holdAmount >= amount;
        } else {
            return
                CalUtils.mulRate(balance.amount + balance.unsettledAmount, poolLiquidityLimit) - balance.holdAmount >=
                amount;
        }
    }

    /// @dev Checks if the liquidity pool exists
    /// @param self LpPool.Props
    function checkExists(Props storage self) external view {
        if (self.baseToken == address(0)) {
            revert Errors.PoolNotExists();
        }
    }

    /// @dev Checks if the liquidity pool exists
    /// @param self LpPool.Props
    /// @return True if the pool exists, false otherwise
    function isExists(Props storage self) external view returns (bool) {
        return self.baseToken != address(0);
    }

    /// @dev Emits the PoolBorrowingFeeUpdateEvent event
    /// @param self LpPool.Props
    function emitPoolBorrowingFeeUpdateEvent(Props storage self) external {
        emit PoolBorrowingFeeUpdateEvent(self.stakeToken, self.borrowingFee);
    }

    /// @dev Converts a token balance to a cache for emitting events
    /// @param stakeToken The address of the stake token
    /// @param token The address of the token
    /// @param balance The token balance
    /// @return cache The cache for emitting events
    function _convertBalanceToCache(
        address stakeToken,
        address token,
        TokenBalance storage balance
    ) internal view returns (PoolTokenUpdateEventCache memory cache) {
        cache.stakeToken = stakeToken;
        cache.token = token;
        cache.preAmount = balance.amount;
        cache.preLiability = balance.liability;
        cache.preHoldAmount = balance.holdAmount;
        cache.preUnsettledAmount = balance.unsettledAmount;
        cache.preLossAmount = balance.lossAmount;
        cache.amount = balance.amount;
        cache.liability = balance.liability;
        cache.holdAmount = balance.holdAmount;
        cache.unsettledAmount = balance.unsettledAmount;
        cache.lossAmount = balance.lossAmount;
        cache.updateBlock = ChainUtils.currentBlock();
    }

    /// @dev Emits the PoolTokenUpdateEvent event
    /// @param cache The cache for emitting the event
    function _emitPoolUpdateEvent(PoolTokenUpdateEventCache memory cache) internal {
        emit PoolTokenUpdateEvent(
            cache.stakeToken,
            cache.token,
            TokenBalance(
                cache.preAmount,
                cache.preLiability,
                cache.preHoldAmount,
                cache.preUnsettledAmount,
                cache.preFundingSettledAmount,
                cache.preLossAmount
            ),
            TokenBalance(
                cache.amount,
                cache.liability,
                cache.holdAmount,
                cache.unsettledAmount,
                cache.fundingSettledAmount,
                cache.lossAmount
            ),
            cache.updateBlock
        );
    }
}
