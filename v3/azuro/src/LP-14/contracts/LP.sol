// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./interface/IAccess.sol";
import "./interface/IBetting.sol";
import "./interface/ILP.sol";
import "./interface/IOwnable.sol";
import "./interface/IVault.sol";
import "./libraries/FixedMath.sol";
import "./libraries/SafeCast.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface ILegacyLP {
    function withdrawLiquidity(
        uint48 depositId,
        uint40 percent
    ) external returns (uint128 withdrawnAmount);
}

interface IRelayer {
    function payMaster() external view returns (address);
}

interface IPayMaster {
    function isLocked(uint256 tokenId) external view returns (bool);
}

/// @title Azuro Liquidity Pool managing
contract LP is OwnableUpgradeable, ILP {
    using FixedMath for *;
    using SafeCast for *;

    IOwnable public factory;
    IAccess public access;
    IVault public vault;

    address public token;
    address public dataProvider;

    uint128 public minDepo; // Minimum amount of liquidity deposit

    uint64 public claimTimeout; // Withdraw reward timeout
    uint64 public withdrawTimeout; // Deposit-withdraw liquidity timeout

    mapping(address => CoreData) public cores;

    uint64[3] public fees;

    mapping(address => Reward) public rewards;
    // withdrawAfter[depositId] = timestamp indicating when the liquidity deposit withdrawal will be available.
    mapping(uint48 => uint64) public withdrawAfter;

    address public affiliate;

    address public relayer;

    // used for deposit migration from legacy LP
    address public legacyLP;

    /**
     * @notice Check if Core `core` belongs to this Liquidity Pool and is active.
     */
    modifier isActive(address core) {
        _checkCoreActive(core);
        _;
    }

    /**
     * @notice Check if Core `core` belongs to this Liquidity Pool.
     */
    modifier isCore(address core) {
        checkCore(core);
        _;
    }

    /**
     * @notice Throw if caller is not the Pool Factory.
     */
    modifier onlyFactory() {
        if (msg.sender != address(factory)) revert OnlyFactory();
        _;
    }

    receive() external payable {
        revert("This contract does not accept payments");
    }

    function initialize(
        address access_,
        address vault_,
        address dataProvider_,
        address affiliate_,
        uint128 minDepo_,
        uint64 daoFee,
        uint64 dataProviderFee,
        uint64 affiliateFee
    ) external virtual override initializer {
        if (minDepo_ == 0) revert IncorrectMinDepo();

        __Ownable_init_unchained(msg.sender);
        factory = IOwnable(msg.sender);
        access = IAccess(access_);
        vault = IVault(vault_);
        dataProvider = dataProvider_;
        affiliate = affiliate_;
        minDepo = minDepo_;
        fees[0] = daoFee;
        fees[1] = dataProviderFee;
        fees[2] = affiliateFee;

        address token_ = IVault(vault_).token();
        token = token_;
        // Max approve Vault spending
        TransferHelper.safeApprove(token_, vault_, type(uint256).max);

        _checkFee();
    }

    /**
     * @notice Owner: Set `newAffiliate` as Affiliate.
     */
    function changeAffiliate(address newAffiliate) external onlyOwner {
        affiliate = newAffiliate;
        emit AffiliateChanged(newAffiliate);
    }

    /**
     * @notice Owner: Set `newClaimTimeout` as claim timeout.
     */
    function changeClaimTimeout(uint64 newClaimTimeout) external onlyOwner {
        claimTimeout = newClaimTimeout;
        emit ClaimTimeoutChanged(newClaimTimeout);
    }

    /**
     * @notice Owner: Set `newDataProvider` as Data Provider.
     */
    function changeDataProvider(address newDataProvider) external onlyOwner {
        dataProvider = newDataProvider;
        emit DataProviderChanged(newDataProvider);
    }

    /**
     * @notice Owner: Set `newFee` as type `feeType` fee.
     * @param  newFee fee share where `FixedMath.ONE` is 100% of the Liquidity Pool profit
     */
    function changeFee(FeeType feeType, uint64 newFee) external onlyOwner {
        fees[uint256(feeType)] = newFee;
        _checkFee();
        emit FeeChanged(feeType, newFee);
    }

    /**
     * @notice Owner: Set `newMinDepo` as minimum liquidity deposit.
     */
    function changeMinDepo(uint128 newMinDepo) external onlyOwner {
        if (newMinDepo == 0) revert IncorrectMinDepo();
        minDepo = newMinDepo;
        emit MinDepoChanged(newMinDepo);
    }

    /**
     * @notice Owner: Set `withdrawTimeout` as liquidity deposit withdrawal timeout.
     */
    function changeWithdrawTimeout(
        uint64 newWithdrawTimeout
    ) external onlyOwner {
        withdrawTimeout = newWithdrawTimeout;
        emit WithdrawTimeoutChanged(newWithdrawTimeout);
    }

    /**
     * @notice Owner: Update Core `core` settings.
     *         reinforcementAbility is total ability consist of ordinary + combo
     *         reinforcementAbilityCombo set as part of total ability
     */
    function updateCoreSettings(
        address core,
        CoreState state,
        uint64 reinforcementAbility,
        uint64 reinforcementAbilityCombo,
        uint128 minBet
    ) external onlyOwner isCore(core) {
        if (minBet == 0) revert IncorrectMinBet();
        if (reinforcementAbility > FixedMath.ONE)
            revert IncorrectReinforcementAbility();
        if (state == CoreState.UNKNOWN) revert IncorrectCoreState();

        CoreData storage coreData = cores[core];
        coreData.minBet = minBet;
        coreData.reinforcementAbility = reinforcementAbility;
        coreData.reinforcementAbilityCombo = reinforcementAbilityCombo;
        coreData.state = state;

        emit CoreSettingsUpdated(
            core,
            state,
            reinforcementAbility,
            reinforcementAbilityCombo,
            minBet
        );
    }

    function setLegacyLP(address legacyLP_) external onlyOwner {
        legacyLP = legacyLP_;
        emit LegacyLPSet(legacyLP_);
    }

    function setRelayer(address relayer_) external onlyOwner {
        relayer = relayer_;
        emit RelayerSet(relayer_);
    }

    /**
     * @notice Deposit liquidity in the Liquidity Pool.
     * @notice Emits deposit token to `msg.sender`.
     * @param  amount The token's amount to deposit.
     * @return depositId The deposit ID.
     */
    function addDeposit(uint128 amount) external returns (uint48 depositId) {
        return _transferAddDeposit(msg.sender, amount);
    }

    /**
     * @notice Deposit liquidity in the Liquidity Pool for another account balance.
     * @notice Emits deposit token to `msg.sender`.
     * @param  account The account that will become the owner of the deposit.
     * @param  amount The token's amount to deposit.
     * @return depositId The deposit ID.
     */
    function addDepositFor(
        address account,
        uint128 amount
    ) external returns (uint48 depositId) {
        return _transferAddDeposit(account, amount);
    }

    /**
     * @notice Migrate liquidity from legacy Liquidity Pool deposit(s) into the Liquidity Pool.
     * @notice List of old deposites emits the deposit token to `msg.sender`.
     * @param  oldDepositIds The token deposit ids from the old Liquidity Pool.
     * @return depositId The deposit ID in the Liquidity Pool.
     */
    function migrateDeposits(
        uint48[] calldata oldDepositIds
    ) external returns (uint48 depositId) {
        address legacyLP_ = legacyLP;
        if (legacyLP_ == address(0)) revert IncorrectLegacyLP();

        uint128 amount;
        uint256 deposits = oldDepositIds.length;
        uint40 percent100 = uint40(FixedMath.ONE);
        for (uint i; i < deposits; ++i) {
            IERC721(legacyLP_).transferFrom(
                msg.sender,
                address(this),
                oldDepositIds[i]
            );
            amount += ILegacyLP(legacyLP_).withdrawLiquidity(
                oldDepositIds[i],
                percent100
            );
        }
        depositId = _depositVaultFor(msg.sender, amount);
        emit DepositsMigrated(msg.sender, depositId, oldDepositIds);
    }

    /**
     * @notice Withdraw payout for liquidity deposit.
     * @param  depositId The ID of the liquidity deposit.
     * @param  percent The payout share to withdraw, where `FixedMath.ONE` is 100% of the deposit balance.
     * @return withdrawnAmount The amount of withdrawn liquidity.
     */
    function withdrawDeposit(
        uint48 depositId,
        uint40 percent
    ) external returns (uint128 withdrawnAmount) {
        uint64 time = uint64(block.timestamp);
        uint64 _withdrawAfter = withdrawAfter[depositId];
        if (time < _withdrawAfter)
            revert WithdrawalTimeout(_withdrawAfter - time);
        if (msg.sender != vault.ownerOf(depositId)) revert LiquidityNotOwned();

        withdrawAfter[depositId] = time + withdrawTimeout;
        withdrawnAmount = vault.withdrawDeposit(depositId, percent);

        emit LiquidityRemoved(msg.sender, depositId, percent, withdrawnAmount);
    }

    /**
     * @notice Reward the Factory owner (DAO) or Data Provider with total amount of charged fees.
     * @return claimedAmount claimed reward amount
     */
    function claimReward() external returns (uint128 claimedAmount) {
        Reward storage reward = rewards[msg.sender];
        if ((block.timestamp - reward.claimedAt) < claimTimeout)
            revert ClaimTimeout(reward.claimedAt + claimTimeout);

        int128 rewardAmount = reward.amount;
        if (rewardAmount > 0) {
            reward.amount = 0;
            reward.claimedAt = uint64(block.timestamp);

            claimedAmount = uint128(rewardAmount);
            _withdraw(msg.sender, claimedAmount);
        }
    }

    /**
     * @notice Make bet by bet order: batch of new single bet(s) or combo bet.
     * @notice Emits bet tokens to `bettor`.
     * @notice See {ILP-betOrder}.
     */
    function betOrder(
        address core,
        OrderData calldata order,
        address betOwner,
        bytes calldata data
    ) external isActive(core) returns (uint256[] memory) {
        if (msg.sender != relayer) revert IncorrectRelayer();

        uint128 minBet = _getCore(core).minBet;

        // get bets count and amounts from the `order`
        (uint128 totalAmount, ) = IBetting(core).getOrderBetsAmounts(order);

        _deposit(totalAmount);

        return IBetting(core).putOrder(order, betOwner, minBet, data);
    }

    /**
     * @notice Withdraw payout for bet token `tokenId` from the Core `core`.
     * @return amount The amount of withdrawn payout.
     */
    function withdrawPayout(
        address core,
        uint256 tokenId
    ) external override isCore(core) returns (uint128 amount) {
        return _withdrawPayout(core, tokenId);
    }

    /**
     * @notice Withdraw payouts for bet tokens `tokenIds` from the Core `core`.
     */
    function withdrawPayouts(
        address core,
        uint256[] calldata tokenIds
    ) external override isCore(core) {
        uint256 length = tokenIds.length;
        for (uint256 i; i < length; ++i) {
            _withdrawPayout(core, tokenIds[i]);
        }
    }

    /**
     * @notice Active Core: Change amount of liquidity reserved by a core.
     * @param  deltaReserve value of the change in the amount of liquidity used by a core as a reinforcement
     * @param  isCombo true the amount of liquidity used by a core as a combo reinforcement
     */
    function changeLockedLiquidity(
        int128 deltaReserve,
        bool isCombo
    ) external override isActive(msg.sender) {
        if (deltaReserve > 0) {
            uint128 _deltaReserve = uint128(deltaReserve);

            CoreData storage coreData = _getCore(msg.sender);
            coreData.lockedLiquidity += _deltaReserve;
            if (isCombo) coreData.lockedLiquidityCombo += _deltaReserve;

            vault.lockLiquidity(_deltaReserve);

            (
                uint128 maxLiquidity,
                uint128 maxLiquidityCombo
            ) = getLockedLiquidityLimit(msg.sender);
            if (coreData.lockedLiquidity > maxLiquidity)
                revert LockedLiquidityLimitReached();
            if (isCombo && coreData.lockedLiquidityCombo > maxLiquidityCombo)
                revert LockedLiquidityComboLimitReached();
        } else
            _reduceLockedLiquidity(msg.sender, uint128(-deltaReserve), isCombo);
    }

    /**
     * @notice Factory: Indicate `core` as new active Core.
     */
    function addCore(address core) external override onlyFactory {
        CoreData storage coreData = _getCore(core);
        coreData.minBet = 1;
        coreData.reinforcementAbility = uint64(FixedMath.ONE);
        coreData.reinforcementAbilityCombo = uint64(FixedMath.ONE / 2);
        coreData.state = CoreState.ACTIVE;

        emit CoreSettingsUpdated(
            core,
            CoreState.ACTIVE,
            uint64(FixedMath.ONE),
            uint64(FixedMath.ONE / 2), // 50% as default part for combo
            1
        );
    }

    /**
     * @notice Core: Finalize changes in the balance of Liquidity Pool
     * @param  lockedReserve amount of liquidity reserved by condition
     * @param  finalReserve amount of liquidity that was not demand according to the condition result
     * @param  depositId The ID of the last deposit that shares the income. In case of loss, all deposits bear the loss
     *         collectively.
     */
    function addReserve(
        uint128 lockedReserve,
        uint128 finalReserve,
        uint48 depositId
    ) external override isCore(msg.sender) {
        Reward storage daoReward = rewards[factory.owner()];
        Reward storage dataProviderReward = rewards[dataProvider];
        Reward storage affiliateReward = rewards[affiliate];

        if (finalReserve > lockedReserve) {
            uint128 profit = finalReserve - lockedReserve;
            // add profit to liquidity (reduced by dao/data provider/affiliates rewards)
            profit -= (_chargeReward(daoReward, profit, FeeType.DAO) +
                _chargeReward(
                    dataProviderReward,
                    profit,
                    FeeType.DATA_PROVIDER
                ) +
                _chargeReward(affiliateReward, profit, FeeType.AFFILIATES));

            vault.addLiquidity(profit, depositId);
        } else {
            // remove loss from liquidityTree excluding canceled conditions (when finalReserve = lockedReserve)
            if (lockedReserve - finalReserve > 0) {
                uint128 loss = lockedReserve - finalReserve;
                // remove all loss (reduced by data dao/data provider/affiliates losses) from liquidity
                loss -= (_chargeFine(daoReward, loss, FeeType.DAO) +
                    _chargeFine(
                        dataProviderReward,
                        loss,
                        FeeType.DATA_PROVIDER
                    ) +
                    _chargeFine(affiliateReward, loss, FeeType.AFFILIATES));
                vault.withdrawLiquidityFor(address(this), loss, depositId);
            }
        }
        if (lockedReserve > 0)
            _reduceLockedLiquidity(msg.sender, lockedReserve, false);
    }

    /**
     * @dev Throws if the passed address is not the owner.
     */
    function checkOwner(address owner_) external view {
        if (super.owner() != owner_) {
            revert OwnableUnauthorizedAccount(owner_);
        }
    }

    /**
     * @notice Checks if the deposit token exists (not burned) in the Vault.
     */
    function isDepositExists(
        uint256 depositId
    ) external view override returns (bool) {
        return vault.isDepositExists(depositId);
    }

    /**
     * @notice Get the ID of the most recently made deposit int he Vault.
     */
    function getLastDepositId()
        external
        view
        override
        returns (uint48 depositId)
    {
        return vault.getLastDepositId();
    }

    /**
     * @notice Get bet token `tokenId` payout.
     * @param  core address of the Core where bet was placed
     * @param  tokenId bet token ID
     * @return payout winnings of the token owner
     */
    function viewPayout(
        address core,
        uint256 tokenId
    ) external view isCore(core) returns (uint128) {
        return IBetting(core).viewPayout(tokenId);
    }

    /**
     * @notice Throw if `account` have no access to function with selector `selector` of `target`.
     */
    function checkAccess(
        address account,
        address target,
        bytes4 selector
    ) public {
        access.checkAccess(account, target, selector);
    }

    /**
     * @notice Throw if `core` not belongs to the Liquidity Pool's Cores.
     */
    function checkCore(address core) public view {
        if (_getCore(core).state == CoreState.UNKNOWN) revert UnknownCore();
    }

    /**
     * @notice Get the max amount of liquidity that can be locked by Core `core` conditions and
     *         amount of liquidity that can be locked for Combo
     */
    function getLockedLiquidityLimit(
        address core
    ) public view returns (uint128 maxLiquidity, uint128 maxLiquidityCombo) {
        CoreData storage coredata = _getCore(core);
        maxLiquidity = uint128(
            coredata.reinforcementAbility.mul(vault.getReserve())
        );
        maxLiquidityCombo = uint128(
            coredata.reinforcementAbilityCombo.mul(maxLiquidity)
        );
    }

    /**
     * @notice Deposit liquidity from liquidity pool into the Vault for account.
     * @notice Emits deposit token to `depositor`.
     * @param  account The account that will become the owner of the deposit.
     * @param  amount The token's amount to deposit.
     * @return depositId The deposit ID.
     */
    function _depositVaultFor(
        address account,
        uint128 amount
    ) internal returns (uint48 depositId) {
        if (amount < minDepo) revert SmallDepo();
        depositId = vault.addDeposit(account, amount);
        emit LiquidityAdded(account, depositId, amount);
    }

    /**
     * @dev Deduct a fine from a reward balance.
     * @param reward The reward from which the fine is deducted.
     * @param loss The loss used for calculating the fine.
     * @param feeType The fee type for calculating the fine.
     * @return _reduceDelta(reward.amount, _getShare(loss, feeType)) before reward balance changing.
     */
    function _chargeFine(
        Reward storage reward,
        uint128 loss,
        FeeType feeType
    ) internal returns (uint128) {
        int128 share = _getShare(loss, feeType);
        uint128 reduceDelta = _reduceDelta(reward.amount, share);
        reward.amount -= share;

        return reduceDelta;
    }

    /**
     * @notice Charge a reward to a reward balance.
     * @param reward The reward balance to which the reward is added.
     * @param profit The profit used for calculating the reward.
     * @param feeType The fee type for calculating the reward.
     * @return _addDelta(reward.amount, _getShare(loss, feeType)) before reward balance changing.
     */
    function _chargeReward(
        Reward storage reward,
        uint128 profit,
        FeeType feeType
    ) internal returns (uint128) {
        int128 share = _getShare(profit, feeType);
        uint128 addDelta = _addDelta(reward.amount, share);
        reward.amount += share;

        return addDelta;
    }

    /**
     * @notice Deposit `amount` of `token` tokens from `msg.sender` balance to the contract.
     */
    function _deposit(uint128 amount) internal {
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            amount
        );
    }

    function _reduceLockedLiquidity(
        address core,
        uint128 deltaReserve,
        bool isCombo
    ) internal {
        CoreData storage coredata = _getCore(core);
        coredata.lockedLiquidity -= deltaReserve;
        if (isCombo) coredata.lockedLiquidityCombo -= deltaReserve;
        vault.unlockLiquidity(deltaReserve);
    }

    /**
     * @notice Transfer and add deposit liquidity in the Liquidity Pool.
     * @notice Emits deposit token to `depositor`.
     * @param  account The account that will become the owner of the deposit.
     * @param  amount The token's amount to deposit.
     * @return depositId The deposit ID.
     */
    function _transferAddDeposit(
        address account,
        uint128 amount
    ) internal returns (uint48 depositId) {
        _deposit(amount);
        depositId = _depositVaultFor(account, amount);

        withdrawAfter[depositId] = uint64(block.timestamp) + withdrawTimeout;
    }

    /**
     * @notice Withdraw `amount` of tokens to `to` balance.
     */
    function _withdraw(address to, uint128 amount) internal {
        TransferHelper.safeTransfer(token, to, amount);
    }

    /**
     * @notice Withdraw payout for bet token `tokenId` from the Core `core`.
     * @return amount The amount of withdrawn payout.
     */
    function _withdrawPayout(
        address core,
        uint256 tokenId
    ) internal returns (uint128 amount) {
        address account;
        (account, amount) = IBetting(core).resolvePayout(tokenId);

        if (
            account == IRelayer(relayer).payMaster() &&
            _isLocked(account, tokenId)
        ) revert LockedBetToken(tokenId);

        if (amount > 0) _withdraw(account, amount);

        emit BettorWin(core, account, tokenId, amount);
    }

    /**
     * @notice Throw if `core` not belongs to the Liquidity Pool's active Cores.
     */
    function _checkCoreActive(address core) internal view {
        if (_getCore(core).state != CoreState.ACTIVE) revert CoreNotActive();
    }

    /**
     * @notice Throw if set fees are incorrect.
     */
    function _checkFee() internal view {
        if (
            _getFee(FeeType.DAO) +
                _getFee(FeeType.DATA_PROVIDER) +
                _getFee(FeeType.AFFILIATES) >
            FixedMath.ONE
        ) revert IncorrectFee();
    }

    function _getCore(address core) internal view returns (CoreData storage) {
        return cores[core];
    }

    /**
     * @notice Get current fee type `feeType` profit share.
     */
    function _getFee(FeeType feeType) internal view returns (uint64) {
        return fees[uint256(feeType)];
    }

    function _getShare(
        uint128 amount,
        FeeType feeType
    ) internal view returns (int128) {
        return _getFee(feeType).mul(amount).toUint128().toInt128();
    }

    function _isLocked(
        address account,
        uint256 tokenId
    ) internal view returns (bool) {
        (bool success, bytes memory result) = account.staticcall(
            abi.encodeCall(IPayMaster.isLocked, (tokenId))
        );

        if (!success) return false;

        return (result.length >= 32 && abi.decode(result, (bool)) == true);
    }

    /**
     * @notice Calculate the positive delta between `a` and `a + b`.
     */
    function _addDelta(int128 a, int128 b) internal pure returns (uint128) {
        if (a < 0) {
            int128 c = a + b;
            return (c > 0) ? uint128(c) : 0;
        } else return uint128(b);
    }

    /**
     * @notice Calculate the positive delta between `a - b` and `a`.
     */
    function _reduceDelta(int128 a, int128 b) internal pure returns (uint128) {
        return (a < 0 ? 0 : uint128(a > b ? b : a));
    }
}
