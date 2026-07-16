// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./interface/IAccess.sol";
import "./interface/ICoreBase.sol";
import "./interface/ILP.sol";
import "./interface/IOwnable.sol";
import "./interface/IWNative.sol";
import "./libraries/FixedMath.sol";
import "./libraries/SafeCast.sol";
import "./utils/LiquidityTree.sol";
import "./utils/OwnableUpgradeable.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";

/// @title Azuro Liquidity Pool managing
contract LP is
    LiquidityTree,
    OwnableUpgradeable,
    ERC721EnumerableUpgradeable,
    ILP
{
    using FixedMath for uint64;
    using SafeCast for uint256;
    using SafeCast for uint128;

    IOwnable public factory;
    IAccess public access;

    address public token;
    address public dataProvider;

    uint128 public minDepo; // Minimal amount of liquidity deposit
    uint128 public lockedLiquidity; // Liquidity reserved by conditions

    uint64 public claimTimeout; // Withdraw reward timeout
    uint64 public withdrawTimeout; // Deposit-withdraw liquidity timeout
    uint64 public reinforcementAbility;

    mapping(uint256 => Game) public games;

    mapping(address => CoreState) public cores;

    uint64[3] public fees;

    mapping(address => Reward) public rewards;
    // withdrawAfter[depNum] = timestamp when liquidity withdraw will be available
    mapping(uint48 => uint64) public withdrawAfter;
    mapping(address => uint128) public override coreAffRewards; // Affiliate rewards by Core's conditions

    /**
     * @notice Throw if caller is not the Pool Factory.
     */
    modifier onlyFactory() {
        if (msg.sender != address(factory)) revert OnlyFactory();
        _;
    }

    /**
     * @notice Throw if caller have no access to function with selector `selector`.
     */
    modifier restricted(bytes4 selector) {
        checkAccess(msg.sender, address(this), selector);
        _;
    }

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
        _checkCore(core);
        _;
    }

    receive() external payable {
        require(msg.sender == token);
    }

    function initialize(
        address access_,
        address dataProvider_,
        address token_,
        uint64 daoFee,
        uint64 dataProviderFee,
        uint64 affiliateFee
    ) external virtual override initializer {
        __Ownable_init();
        __ERC721_init("Azuro LP NFT token", "LP-AZR");
        __liquidityTree_init();
        factory = IOwnable(msg.sender);
        access = IAccess(access_);
        dataProvider = dataProvider_;
        token = token_;
        fees[0] = daoFee;
        fees[1] = dataProviderFee;
        fees[2] = affiliateFee;
        _checkFee();
        minDepo = uint128(FixedMath.ONE);
        reinforcementAbility = uint64(FixedMath.ONE); // 100%
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
     * @notice Owner: Set `newMinDepo` as minimal liquidity deposit.
     */
    function changeMinDepo(uint128 newMinDepo) external onlyOwner {
        if (newMinDepo < FixedMath.ONE) revert MinDepoNotSufficient();
        minDepo = newMinDepo;
        emit MinDepoChanged(newMinDepo);
    }

    /**
     * @notice Owner: Set `newReinforcementAbility` as share of liquidity intended to conditions reinforcement.
     * @param  newReinforcementAbility reinforcement share where `FixedMath.ONE` is 100% of deposited liquidity
     */
    function changeReinforcementAbility(uint64 newReinforcementAbility)
        external
        onlyOwner
    {
        if (newReinforcementAbility > FixedMath.ONE)
            revert IncorrectReinforcementAbility();
        reinforcementAbility = newReinforcementAbility;
        emit ReinforcementAbilityChanged(newReinforcementAbility);
    }

    /**
     * @notice Owner: Set `withdrawTimeout` as liquidity deposit withdrawal timeout.
     */
    function changeWithdrawTimeout(uint64 newWithdrawTimeout)
        external
        onlyOwner
    {
        withdrawTimeout = newWithdrawTimeout;
        emit WithdrawTimeoutChanged(newWithdrawTimeout);
    }

    /**
     * @notice Owner: Indicate if `core` is an active Core or not.
     */
    function updateCore(address core, bool active)
        external
        onlyOwner
        isCore(core)
    {
        _updateCore(core, active);
    }

    /**
     * @notice Indicate the game `gameId` as canceled.
     * @param  gameId the game ID
     */
    function cancelGame(uint256 gameId)
        external
        restricted(this.cancelGame.selector)
    {
        Game storage game = _getGame(gameId);
        if (game.canceled) revert GameAlreadyCanceled();

        lockedLiquidity -= game.lockedLiquidity;
        game.canceled = true;
        emit GameCanceled(gameId);
    }

    /**
     * @notice create new game.
     * @param  gameId the match or condition ID according to oracle's internal numbering
     * @param  ipfsHash hash of detailed info about the game stored in the IPFS
     * @param  startsAt timestamp when the game starts
     */
    function createGame(
        uint256 gameId,
        bytes32 ipfsHash,
        uint64 startsAt
    ) external restricted(this.createGame.selector) {
        Game storage game = games[gameId];
        if (game.startsAt > 0) revert GameAlreadyCreated();
        if (gameId == 0) revert IncorrectGameId();
        if (startsAt < block.timestamp) revert IncorrectTimestamp();

        game.ipfsHash = ipfsHash;
        game.startsAt = startsAt;

        emit NewGame(gameId, ipfsHash, startsAt);
    }

    /**
     * @notice Set `startsAt` as new game `gameId` start time.
     * @param  gameId the game ID
     * @param  startsAt new timestamp when the game starts
     */
    function shiftGame(uint256 gameId, uint64 startsAt)
        external
        restricted(this.shiftGame.selector)
    {
        Game storage game = _getGame(gameId);
        game.startsAt = startsAt;
        emit GameShifted(gameId, startsAt);
    }

    /**
     * @notice Deposit liquidity in the Liquidity Pool.
     * @notice Emits deposit token to `msg.sender`.
     * @param  amount token's amount to deposit
     */
    function addLiquidity(uint128 amount) external {
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            amount
        );
        _addLiquidity(amount);
    }

    /**
     * @notice Deposit liquidity in the Liquidity Pool via sending native tokens with msg.value.
     * @notice Emits deposit token to `msg.sender`.
     */
    function addLiquidityNative() external payable {
        IWNative(token).deposit{value: msg.value}();
        _addLiquidity(msg.value.toUint128());
    }

    /**
     * @notice Withdraw payout for liquidity deposit.
     * @param  depNum deposit token ID
     * @param  percent payout share to withdraw where `FixedMath.ONE` is 100% of deposit payout
     */
    function withdrawLiquidity(
        uint48 depNum,
        uint40 percent,
        bool isNative
    ) external {
        uint128 withdrawAmount = _withdrawLiquidity(depNum, percent);
        if (isNative) {
            IWNative(token).withdraw(withdrawAmount);
            TransferHelper.safeTransferETH(msg.sender, withdrawAmount);
        } else {
            TransferHelper.safeTransfer(token, msg.sender, withdrawAmount);
        }
    }

    /**
     * @notice Withdraw affiliate profit share based on the contribution to betting traffic.
     * @notice The gas cost of the function is directly proportional to the number of elements of
               the array of all conditions contributed by the affiliate that are not rewarded yet.
     * @param  core address of the Core traffic to which should be rewarded
     * @param  data core specific params
     * @return claimedAmount claimed reward amount
     */
    function claimAffiliateReward(address core, bytes calldata data)
        external
        isCore(core)
        returns (uint256 claimedAmount)
    {
        claimedAmount = ICoreBase(core).resolveAffiliateReward(
            msg.sender,
            data
        );
        if (claimedAmount > 0) {
            TransferHelper.safeTransfer(token, msg.sender, claimedAmount);
            emit AffiliateRewarded(msg.sender, claimedAmount);
        }
    }

    /**
     * @notice Reward the Factory owner (DAO) or Data Provider with total amount of charged fees.
     * @return claimedAmount claimed reward amount
     */
    function claimReward() external returns (uint256 claimedAmount) {
        Reward storage reward = rewards[msg.sender];
        if ((block.timestamp - reward.claimedAt) < claimTimeout)
            revert ClaimTimeout(reward.claimedAt + claimTimeout);

        int128 rewardAmount = reward.amount;
        if (rewardAmount <= 0) return 0;

        reward.amount = 0;
        reward.claimedAt = uint64(block.timestamp);

        claimedAmount = uint128(rewardAmount);
        TransferHelper.safeTransfer(token, msg.sender, claimedAmount);
    }

    /**
     * @notice Make new bet.
     * @notice Emits bet token(s) to `msg.sender`.
     * @notice See {ILP-bet}.
     */
    function bet(
        address core,
        uint128 amount,
        uint64 expiresAt,
        ICoreBase.BetData calldata data
    ) external override returns (uint256) {
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            amount
        );
        return _bet(msg.sender, core, amount, expiresAt, data);
    }

    /**
     * @notice Make new bet for `bettor`.
     * @notice Emits bet token(s) to `bettor`.
     * @param  bettor wallet for emitting bet token(s)
     * @param  core address of the Core the bet is intended
     * @param  amount amount of tokens to bet
     * @param  expiresAt the time before which bet should be made
     * @param  data customized bet data
     */
    function betFor(
        address bettor,
        address core,
        uint128 amount,
        uint64 expiresAt,
        ICoreBase.BetData calldata data
    ) external override returns (uint256) {
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            amount
        );
        return _bet(bettor, core, amount, expiresAt, data);
    }

    /**
     * @notice Make new bet via sending native tokens with msg.value.
     * @notice Emits bet token(s) to `msg.sender`.
     * @param  core address of the Core the bet is intended
     * @param  expiresAt the time before which bet should be made
     * @param  data customized bet data
     */
    function betNative(
        address core,
        uint64 expiresAt,
        ICoreBase.BetData calldata data
    ) external payable override returns (uint256) {
        IWNative(token).deposit{value: msg.value}();
        return _bet(msg.sender, core, msg.value.toUint128(), expiresAt, data);
    }

    function withdrawPayout(
        address core,
        uint256 tokenId,
        bool isNative
    ) external override isCore(core) {
        uint128 amount = ICoreBase(core).resolvePayout(msg.sender, tokenId);
        if (amount > 0) {
            emit BettorWin(core, msg.sender, tokenId, amount);
            if (isNative) {
                IWNative(token).withdraw(amount);
                TransferHelper.safeTransferETH(msg.sender, amount);
            } else {
                TransferHelper.safeTransfer(token, msg.sender, amount);
            }
        }
    }

    /**
     * @notice Active Core: Add condition `conditionId` to the game `gameId` enumeration.
     */
    function addCondition(uint256 gameId, uint256 conditionId)
        external
        override
        isActive(msg.sender)
        returns (uint64)
    {
        Game storage game = _getGame(gameId);
        if (game.canceled) revert GameCanceled_();

        game.conditions.push(Condition(msg.sender, conditionId));
        return game.startsAt;
    }

    /**
     * @notice Active Core: Change amount of liquidity reserved by the game `gameId`.
     * @param  gameId the game ID
     * @param  deltaReserve value of the change in the amount of liquidity used by the game as a reinforcement
     */
    function changeLockedLiquidity(uint256 gameId, int128 deltaReserve)
        external
        override
        isActive(msg.sender)
    {
        if (deltaReserve > 0) {
            uint128 _deltaReserve = uint128(deltaReserve);
            games[gameId].lockedLiquidity += _deltaReserve;
            lockedLiquidity += _deltaReserve;
            if (lockedLiquidity > reinforcementAbility.mul(getReserve()))
                revert NotEnoughLiquidity();
        } else _reduceLockedLiquidity(gameId, uint128(-deltaReserve));
    }

    /**
     * @notice Factory: Indicate `core` as an active Core.
     */
    function addCore(address core) external override onlyFactory {
        _updateCore(core, true);
    }

    /**
     * @notice Core: Finalize changes in the balance of Liquidity Pool
     *         after the game `gameId` condition's resolve.
     * @param  gameId the game ID
     * @param  lockedReserve amount of liquidity reserved by condition
     * @param  finalReserve amount of liquidity that was not demand according to the condition result
     */
    function addReserve(
        uint256 gameId,
        uint128 lockedReserve,
        uint128 finalReserve,
        uint48 leaf
    ) external override isCore(msg.sender) returns (uint128 affiliatesReward) {
        Reward storage dataProviderRewards = rewards[dataProvider];
        Reward storage daoRewards = rewards[factory.owner()];

        if (finalReserve > lockedReserve) {
            uint128 profit = finalReserve - lockedReserve;
            uint128 netProfit = profit;

            // increase oracle rewards
            uint128 dataProviderReward = _getFee(FeeType.DATA_PROVIDER)
                .mul(profit)
                .toUint128();
            netProfit -= _addDelta(
                dataProviderRewards.amount,
                dataProviderReward
            );
            dataProviderRewards.amount += dataProviderReward.toInt128();
            // increase DAO rewards
            uint128 daoReward = _getFee(FeeType.DAO).mul(profit).toUint128();
            netProfit -= _addDelta(daoRewards.amount, daoReward);
            daoRewards.amount += daoReward.toInt128();
            // calc affiliate rewards
            affiliatesReward = _getFee(FeeType.AFFILIATE)
                .mul(profit)
                .toUint128();

            // add profit to core aff accumulator, save raw rewards
            coreAffRewards[msg.sender] += affiliatesReward;

            // add profit to liquidity (reduced by oracle/dao's rewards)
            _addLimit(netProfit - affiliatesReward, leaf);
        } else {
            // remove loss from liquidityTree excluding canceled conditions (when finalReserve = lockedReserve)
            if (lockedReserve - finalReserve > 0) {
                uint128 loss = lockedReserve - finalReserve;
                uint128 netLoss = loss;

                // reduce oracle loss
                uint128 oracleLoss = _getFee(FeeType.DATA_PROVIDER)
                    .mul(loss)
                    .toUint128();
                netLoss -= _reduceDelta(dataProviderRewards.amount, oracleLoss);
                dataProviderRewards.amount -= oracleLoss.toInt128();
                // reduce DAO rewards
                uint128 daoLoss = _getFee(FeeType.DAO).mul(loss).toUint128();
                netLoss -= _reduceDelta(daoRewards.amount, daoLoss);
                daoRewards.amount -= daoLoss.toInt128();

                // remove all loss (reduced by oracle/dao's losses) from liquidity
                _remove(netLoss);
            }
        }
        if (lockedReserve > 0) _reduceLockedLiquidity(gameId, lockedReserve);
    }

    /**
     * @notice Get the start time of the game `gameId` and whether it was canceled.
     */
    function getGameInfo(uint256 gameId)
        external
        view
        override
        returns (uint64, bool)
    {
        Game storage game = games[gameId];
        return (game.startsAt, game.canceled);
    }

    /**
     * @notice Get total reserved liquidity.
     */
    function getReserve() public view override returns (uint128 reserve) {
        return treeNode[1].amount;
    }

    /**
     * @notice Get ID of the last added leaf to the liquidity tree.
     */
    function getLeaf() external view override returns (uint48 leaf) {
        return (nextNode - 1);
    }

    /**
     * @notice Check if game `gameId` is canceled.
     */
    function isGameCanceled(uint256 gameId)
        external
        view
        override
        returns (bool)
    {
        return games[gameId].canceled;
    }

    /**
     * @notice Get bet token `tokenId` payout for `msg.sender`.
     * @param  core address of the Core where bet was placed
     * @param  tokenId bet token ID
     * @return payout winnings of the sender
     */
    function viewPayout(address core, uint256 tokenId)
        external
        view
        isCore(core)
        returns (uint128 payout)
    {
        (, payout) = ICoreBase(core).viewPayout(msg.sender, tokenId);
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
     * @notice Deposit liquidity in the Liquidity Pool.
     * @notice Emits deposit token to `msg.sender`.
     * @param  amount token's amount to deposit
     */
    function _addLiquidity(uint128 amount) internal {
        if (amount < minDepo) revert AmountNotSufficient();

        uint48 leaf = _nodeAddLiquidity(amount);

        withdrawAfter[leaf] = uint64(block.timestamp) + withdrawTimeout;
        _mint(msg.sender, leaf);
        emit LiquidityAdded(msg.sender, leaf, amount);
    }

    /**
     * @notice Make new bet.
     * @param  bettor wallet for emitting bet token(s)
     * @param  core address of the Core the bet is intended
     * @param  amount amount of tokens to bet
     * @param  expiresAt the time before which bet should be made
     * @param  data customized bet data
     */
    function _bet(
        address bettor,
        address core,
        uint128 amount,
        uint64 expiresAt,
        ICoreBase.BetData memory data
    ) internal isActive(core) returns (uint256) {
        if (block.timestamp >= expiresAt) revert BetExpired();
        // owner is default affiliate
        if (data.affiliate == address(0)) data.affiliate = owner();
        return ICoreBase(core).putBet(bettor, amount, data);
    }

    function _reduceLockedLiquidity(uint256 gameId, uint128 deltaReserve)
        internal
    {
        games[gameId].lockedLiquidity -= deltaReserve;
        lockedLiquidity -= deltaReserve;
    }

    /**
     * @notice Indicate if `core` is an active Core or not.
     */
    function _updateCore(address core, bool active) internal {
        cores[core] = active ? CoreState.ACTIVE : CoreState.INACTIVE;
        emit CoreUpdated(core, active);
    }

    /**
     * @notice Resolve payout for liquidity deposit.
     * @param  depNum deposit token ID
     * @param  percent payout share to resolve where `FixedMath.ONE` is 100% of deposit payout
     */
    function _withdrawLiquidity(uint48 depNum, uint40 percent)
        internal
        returns (uint128 withdrawAmount)
    {
        uint64 time = uint64(block.timestamp);
        uint64 _withdrawAfter = withdrawAfter[depNum];
        if (time < _withdrawAfter)
            revert WithdrawalTimeout(_withdrawAfter - time);
        if (msg.sender != ownerOf(depNum)) revert LiquidityNotOwned();

        withdrawAfter[depNum] = time + withdrawTimeout;
        uint128 topNodeAmount = getReserve();
        withdrawAmount = _nodeWithdrawPercent(depNum, percent);

        if (withdrawAmount == 0) revert NoLiquidity();

        // check withdrawAmount allowed in ("node #1" - "active condition reinforcements")
        if (withdrawAmount > (topNodeAmount - lockedLiquidity))
            revert LiquidityIsLocked();
        emit LiquidityRemoved(msg.sender, depNum, withdrawAmount);
    }

    /**
     * @notice Throw if `core` not belongs to the Liquidity Pool's Cores.
     */
    function _checkCore(address core) internal view {
        if (_getCoreState(core) == CoreState.UNKNOWN) revert UnknownCore();
    }

    /**
     * @notice Throw if `core` not belongs to the Liquidity Pool's active Cores.
     */
    function _checkCoreActive(address core) internal view {
        if (_getCoreState(core) != CoreState.ACTIVE) revert CoreNotActive();
    }

    /**
     * @notice Get `CoreState` by core address.
     */
    function _getCoreState(address core) internal view returns (CoreState) {
        return cores[core];
    }

    /**
     * @notice Throw if set fees are incorrect.
     */
    function _checkFee() internal view {
        if (
            _getFee(FeeType.DAO) +
                _getFee(FeeType.DATA_PROVIDER) +
                _getFee(FeeType.AFFILIATE) >
            FixedMath.ONE
        ) revert IncorrectFee();
    }

    /**
     * @notice Get game by it's ID.
     */
    function _getGame(uint256 gameId) internal view returns (Game storage) {
        Game storage game = games[gameId];
        if (game.startsAt == 0) revert GameNotExists();

        return game;
    }

    /**
     * @notice Get current fee type `feeType` profit share.
     */
    function _getFee(FeeType feeType) internal view returns (uint64) {
        return fees[uint256(feeType)];
    }

    /**
     * @notice Calculate the positive delta between `a` and `a + b`.
     */
    function _addDelta(int128 a, uint128 b) internal pure returns (uint128) {
        if (a < 0) {
            int128 c = a + b.toInt128();
            return (c > 0) ? uint128(c) : 0;
        } else return b;
    }

    /**
     * @notice Calculate the positive delta between `a - b` and `a`.
     */
    function _reduceDelta(int128 a, uint128 b) internal pure returns (uint128) {
        return (a < 0 ? 0 : (a > b.toInt128() ? b : uint128(a)));
    }
}
