// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./interface/IAzuroBet.sol";
import "./interface/ILiveCore.sol";
import "./libraries/FixedMath.sol";
import "./libraries/SafeCast.sol";
import "./libraries/Math.sol";
import "./utils/OrderTools.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";

/// @title Base contract for Azuro cores
contract LiveCore is
    OwnableUpgradeable,
    EIP712Upgradeable,
    OrderTools,
    ILiveCore
{
    using ECDSA for bytes32;
    using FixedMath for *;
    using SafeCast for *;

    mapping(uint256 => Bet) public bets;
    mapping(uint256 => Condition) public conditions;
    // Condition ID => outcome ID => Condition outcome index + 1
    mapping(uint256 => mapping(uint256 => uint256)) internal outcomeNumbers;
    // Condition ID => outcome ID => is winning
    mapping(uint256 => mapping(uint256 => bool)) internal winningOutcomes;
    // wallet used nonces
    mapping(address => mapping(uint256 => bool)) public nonces;

    IAzuroBet public azuroBet;
    ILP public lp;

    /**
     * @notice Throw if caller is not the Liquidity Pool.
     */
    modifier onlyLp() {
        _checkOnlyLp();
        _;
    }

    /**
     * @notice Throw if caller have no access to function with selector `selector`.
     */
    modifier restricted(address sender, bytes4 selector) {
        _checkAccess(sender, address(this), selector);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address azuroBet_,
        address lp_
    ) external override initializer {
        __Ownable_init_unchained(msg.sender);
        __EIP712_init("Live Betting", "1.0.0");
        azuroBet = IAzuroBet(azuroBet_);
        lp = ILP(lp_);
    }

    function getBetAmountCondition(
        uint256 tokenId
    ) external view returns (uint256 conditionId, uint128 amount) {
        Bet storage bet = _bet(tokenId);
        conditionId = bet.conditionId;
        amount = bet.amount;
    }

    function getBetData(
        uint256 tokenId
    )
        external
        view
        returns (uint64 timestemp, ComboPartOdds[] memory comboParts)
    {
        Bet storage bet = _bet(tokenId);
        return (bet.timestamp, bet.comboParts);
    }

    function _bet(uint256 tokenId) internal view returns (Bet storage) {
        return bets[tokenId];
    }

    /**
     * @notice Liquidity Pool: See {IBetting-putOrder}.
     */
    function putOrder(
        OrderData calldata order,
        address betOwner,
        uint256 minBet,
        bytes calldata data
    )
        external
        onlyLp
        restricted(order.oracle, this.putOrder.selector)
        returns (uint256[] memory)
    {
        ClientData memory clientData = getClientData(order);
        if (clientData.expiresAt <= block.timestamp) revert SignatureExpired();
        if (clientData.chainId != block.chainid) revert InvalidChainId();

        _checkSignatures(order, data);

        return
            order.betType == BetType.ORDINARY
                ? _putOrdinaryBets(order, betOwner, minBet)
                : _putComboBet(order, betOwner, minBet);
    }

    /**
     * @notice Reject list of bets
     * Only not resolved condition bets allowed
     */
    function rejectBets(
        RejectedBet[] calldata bets_
    ) external restricted(msg.sender, this.rejectBets.selector) {
        Condition storage condition;
        uint256 conditionId_;

        for (uint i = 0; i < bets_.length; ++i) {
            conditionId_ = bets_[i].conditionId;
            condition = _getCondition(conditionId_);
            _checkConditionNotSettled(condition);
            _rejectConditionBets(
                condition,
                conditionId_,
                bets_[i].tokenIds,
                true
            );
        }
    }

    /**
     * @notice Reject sub-bets in list of combo bets, see structure {ILiveCore-RejectedComboBet}
     * Only not resolved (paid) combo bets and not resolved sub bets allowed
     */
    function rejectComboBets(
        RejectedComboBet[] calldata bets_
    ) external restricted(msg.sender, this.rejectComboBets.selector) {
        Condition storage condition;
        Bet storage bet;
        uint256 comboOdds;
        uint128 newPayout;
        uint256 length;
        uint64 settledAt;

        for (uint256 i; i < bets_.length; ++i) {
            comboOdds = FixedMath.ONE;
            bet = _bet(bets_[i].tokenId);
            length = bet.comboParts.length;

            // Only for combo bet
            if (length == 0) revert IncorrectBetType();
            if (bet.isPaid) revert AlreadyPaid();

            // in the bet find combo sub-bets and reset it (set odds = 1)
            _resetSubBetOdds(
                bets_[i].subBets,
                bet.comboParts,
                bet.amount,
                bet.timestamp
            );

            // recalculate new payout, after sub bet changes
            for (uint256 k; k < length; ++k) {
                ComboPartOdds storage comboPart = bet.comboParts[k];
                condition = _getCondition(comboPart.conditionId);
                settledAt = condition.settledAt;

                if (_isConditionCanceled(condition)) continue;
                if (settledAt > 0 && bet.timestamp >= settledAt) continue;

                if (comboPart.odds > FixedMath.ONE)
                    comboOdds = comboOdds.mul(comboPart.odds);
            }
            newPayout = comboOdds.mul(bet.amount).toUint128();
            _changeLockedLiquidity(
                newPayout.toInt128() - bet.payout.toInt128(),
                true
            );
            bet.payout = newPayout;
            emit BetRejected(bets_[i].tokenId);
        }
    }

    /**
     * @notice Indicate outcome `outcomeWin` as happened in condition `conditionId`.
     * @notice Only condition creator can resolve it.
     * @param resolveData is ILiveCore-ResolveData {conditionId, winningOutcomes, settledAt}
     */
    function resolveConditions(ResolveData[] calldata resolveData) external {
        Condition storage condition;
        address oracle;
        uint128 payout;
        ResolveData memory data;

        for (uint256 i = 0; i < resolveData.length; ++i) {
            data = resolveData[i];
            condition = _getCondition(data.conditionId);
            if (data.winningOutcomes.length != condition.winningOutcomesCount)
                revert IncorrectWinningOutcomesCount();

            oracle = condition.oracle;
            if (msg.sender != oracle) revert OnlyOracle(oracle);
            if (data.settledAt >= block.timestamp) revert IncorrectSettleDate();

            _checkConditionNotSettled(condition);

            condition.settledAt = data.settledAt;

            // find and reject bets >= settledAt
            (uint256 foundIndex, uint256 restLength) = _selectTimes(
                condition.timeBets,
                data.settledAt
            );

            if (restLength > 0) {
                uint256 r;
                uint256[] memory rejectTokens = new uint256[](restLength);
                for (uint t = foundIndex; t < foundIndex + restLength; ++t) {
                    rejectTokens[r++] = condition.timeBets[t].tokenId;
                }

                _rejectConditionBets(
                    condition,
                    data.conditionId,
                    rejectTokens,
                    false
                );
            }

            payout = 0;
            for (uint256 j; j < data.winningOutcomes.length; ++j) {
                payout += condition.payouts[
                    getOutcomeIndex(data.conditionId, data.winningOutcomes[j])
                ];
            }
            _resolveCondition(
                condition,
                data.conditionId,
                ConditionState.RESOLVED,
                data.winningOutcomes,
                payout,
                data.settledAt
            );
        }
    }

    function _addReserve(
        uint128 lockedReserve,
        uint128 finalReserve,
        uint48 depositId,
        bool isCombo
    ) internal {
        lp.addReserve(lockedReserve, finalReserve, depositId, isCombo);
    }

    function _changeByPercent(
        bool isIncrease,
        uint256 amount
    ) internal view returns (uint128) {
        return lp.changeByPercent(isIncrease, amount);
    }

    function _changeLockedLiquidity(
        int128 deltaReserve,
        bool isCombo
    ) internal {
        lp.changeLockedLiquidity(deltaReserve, isCombo);
    }

    /**
     * @notice Throw if `account` have no access to function with selector `selector` of `target`.
     */
    function _checkAccess(
        address account,
        address target,
        bytes4 selector
    ) internal {
        lp.checkAccess(account, target, selector);
    }

    function _checkConditionIds(
        uint256 dataConditionId,
        uint256 subBetConditionId
    ) internal pure {
        if (dataConditionId != subBetConditionId)
            revert IncorrectConditionIds();
    }

    /**
     * @notice Subbets of one combo must be of different conditions
     */
    function _checkUniqueComboParts(ComboPart[] memory parts) internal pure {
        uint256[] memory comboPart = new uint256[](parts.length);
        for (uint i; i < parts.length; ++i) {
            comboPart[i] = parts[i].conditionId;
        }
        (, bool isNotUnique) = Math.isNotUniq(comboPart);
        if (isNotUnique) revert SubBetDuplicated();
    }

    function _getLastDepositId() internal view returns (uint48) {
        return lp.getLastDepositId();
    }

    /**
     * @notice Get odds from the odds array by the index of outcomeId in outcomes array
     * see struct `ConditionData`
     * @return oddsFeed restored feed odds, because in bet parameters passed reduced odds (odds - 1%)
     * @return oddsDec bet parameters passed reduced odds (odds - 1%)
     */
    function _getOdds(
        ConditionData memory data,
        uint128 outcomeId
    ) internal view returns (uint64 oddsFeed, uint64 oddsDec) {
        for (uint256 i; i < data.outcomes.length; ++i) {
            if (data.outcomes[i] == outcomeId) {
                return (
                    uint64(_changeByPercent(true, data.odds[i])), // +1%
                    data.odds[i]
                );
            }
        }
        revert IncorrectOutcomeId();
    }

    /**
     * Make bet of `Combo` type
     */
    function _putComboBet(
        OrderData memory order,
        address betOwner,
        uint256 minBet
    ) internal returns (uint256[] memory tokenIds) {
        ClientComboBetData memory data = abi.decode(
            order.clientBetData,
            (ClientComboBetData)
        );
        if (data.amount < minBet) revert SmallBet();
        ConditionData memory conditionData;
        // owner of bet can be different of order.betOwner, for returnable freebet case
        uint256 tokenId = azuroBet.mint(betOwner);
        tokenIds = new uint256[](1);
        tokenIds[0] = tokenId;
        uint256 comboOdds = FixedMath.ONE;

        Bet storage bet = _bet(tokenId);
        bet.amount = _changeByPercent(false, data.amount);
        bet.timestamp = uint64(block.timestamp);

        SubBetData[] memory subBetData = new SubBetData[](
            data.comboParts.length
        );

        for (uint256 i; i < data.comboParts.length; ++i) {
            ComboPart memory subBet = data.comboParts[i];
            conditionData = order.conditionDatas[i];

            // get live core specific data
            _checkConditionIds(conditionData.conditionId, subBet.conditionId);

            _safeCreateCondition(
                conditionData.conditionId,
                conditionData,
                order.oracle
            );

            (uint64 oddsFeed, uint64 oddsDec) = _getOdds(
                conditionData,
                subBet.outcomeId
            );

            if (oddsDec <= FixedMath.ONE) revert OddsTooSmall();

            subBetData[i] = SubBetData({
                gameId: conditionData.gameId,
                conditionId: conditionData.conditionId,
                conditionKind: conditionData.conditionKind,
                outcomeId: subBet.outcomeId,
                odds: oddsDec
            });

            comboOdds = comboOdds.mul(oddsFeed);
            bet.comboParts.push(
                ComboPartOdds({
                    conditionId: subBet.conditionId,
                    outcomeId: subBet.outcomeId,
                    odds: oddsFeed
                })
            );
        }

        _checkUniqueComboParts(data.comboParts);

        if (comboOdds < data.minOdds) revert OddsTooSmall();

        // nonce only for the first subBet
        uint128 payout = comboOdds.mul(bet.amount).toUint128();

        // check COMBO potential loss limit
        if (payout - bet.amount > conditionData.potentialLossLimit)
            revert PotentialLossLimit();

        // it must be unique for the bettor and bet conditions
        _registerNonce(order.betOwner, data.nonce);

        bet.payout = payout;
        bet.lastDepositId = _getLastDepositId();
        _changeLockedLiquidity((payout - bet.amount).toInt128(), true);

        emit NewLiveBet(
            tokenId,
            order.betOwner,
            data.clientData.affiliate,
            BetType.COMBO,
            data.nonce,
            data.amount,
            subBetData,
            conditionData.potentialLossLimit
        );
    }

    /**
     * @notice Make bets of `Ordinary` types, one or many (batch of ordinary bets)
     */
    function _putOrdinaryBets(
        OrderData calldata order,
        address betOwner,
        uint256 minBet
    ) internal returns (uint256[] memory tokenIds) {
        ClientBetData memory data = abi.decode(
            order.clientBetData,
            (ClientBetData)
        );
        ConditionData memory conditionData;

        if (order.conditionDatas.length != data.bets.length)
            revert IncorrectBetsConditionsCount();
        tokenIds = new uint256[](data.bets.length);

        SubBet memory subBet;
        uint64 oddsFeed;
        uint64 oddsDec;
        uint128 payout;
        uint256 tokenId;

        for (uint256 i; i < data.bets.length; ++i) {
            subBet = data.bets[i];

            if (subBet.amount < minBet) revert SmallBet();

            // get live core specific data
            conditionData = order.conditionDatas[i];

            _checkConditionIds(conditionData.conditionId, subBet.conditionId);

            // nonce must be unique for the bettor and condition
            _registerNonce(order.betOwner, subBet.nonce);

            {
                Condition storage condition = _safeCreateCondition(
                    subBet.conditionId,
                    conditionData,
                    order.oracle
                );
                (oddsFeed, oddsDec) = _getOdds(conditionData, subBet.outcomeId);
                if (oddsDec < subBet.minOdds || oddsDec <= FixedMath.ONE)
                    revert OddsTooSmall();

                //uint256 reducedAmount = subBet.amount.mul(PERCENT99);
                uint128 reducedAmount = _changeByPercent(false, subBet.amount);
                payout = oddsFeed.mul(reducedAmount).toUint128(); // -1%  *0.99
                // owner of bet can be different of order.betOwner, for returnable freebet case
                tokenId = azuroBet.mint(betOwner);
                {
                    Bet storage bet = _bet(tokenId);
                    bet.conditionId = subBet.conditionId;
                    bet.amount = reducedAmount; // -1%  *0.99
                    bet.payout = payout;
                    bet.outcomeId = subBet.outcomeId;
                    bet.timestamp = uint64(block.timestamp);
                    bet.lastDepositId = _getLastDepositId();
                }

                // save time and token id
                condition.timeBets.push(
                    TimeBet({time: block.timestamp, tokenId: tokenId})
                );

                _changeFunds(
                    condition,
                    getOutcomeIndex(
                        conditionData.conditionId,
                        subBet.outcomeId
                    ),
                    reducedAmount,
                    payout
                );

                // check condition payout limit
                if (
                    Math.diffOrZero(
                        Math.maxSum(
                            condition.payouts,
                            conditionData.winningOutcomesCount
                        ),
                        condition.totalNetBets
                    ) > conditionData.potentialLossLimit
                ) revert PotentialLossLimit();
            }

            tokenIds[i] = tokenId;

            SubBetData[] memory subBetData = new SubBetData[](1);
            subBetData[0] = SubBetData({
                gameId: conditionData.gameId,
                conditionId: conditionData.conditionId,
                conditionKind: conditionData.conditionKind,
                outcomeId: subBet.outcomeId,
                odds: oddsDec
            });

            emit NewLiveBet(
                tokenId,
                order.betOwner,
                data.clientData.affiliate,
                BetType.ORDINARY,
                subBet.nonce,
                subBet.amount,
                subBetData,
                conditionData.potentialLossLimit
            );
        }
        return tokenIds;
    }

    function _registerNonce(address bettor, uint256 nonce) internal {
        if (nonce == 0 || nonces[bettor][nonce]) revert InvalidNonce();
        nonces[bettor][nonce] = true;
    }

    /**
     * @notice RReject `Ordinary` type bets,
     *         isNeedRevert = true for standalone bet rejectings,
     *         isNeedRevert = false for rejecting as part of condition resolve
     */
    function _rejectConditionBets(
        Condition storage condition,
        uint256 conditionId,
        uint256[] memory betTokens,
        bool isNeedRevert
    ) internal {
        uint128 amount;
        uint128[] memory payouts = condition.payouts;
        uint128 totalNetBets = condition.totalNetBets;
        uint8 winningOutcomesCount = condition.winningOutcomesCount;
        Bet storage bet;

        int128 reserved = _calcReserve(
            payouts,
            totalNetBets,
            winningOutcomesCount
        ).toInt128();

        for (uint256 i; i < betTokens.length; ++i) {
            bet = _bet(betTokens[i]);
            amount = bet.amount;
            // Only for ordinary bet (not combo)!
            if (bet.comboParts.length > 0) revert IncorrectBetType();
            if (bet.conditionId != conditionId) revert IncorrectConditionId();

            if (bet.payout == amount) {
                if (isNeedRevert) revert AlreadyRejected();
                else continue;
            }
            if (bet.isPaid) {
                if (isNeedRevert) revert AlreadyPaid();
                else continue;
            }

            totalNetBets -= amount;
            payouts[getOutcomeIndex(bet.conditionId, bet.outcomeId)] -= bet
                .payout;
            // reject payout
            bet.payout = amount;

            // chargeback bets
            _rejectFee(amount, bet.conditionId, bet.timestamp);

            emit BetRejected(betTokens[i]);
        }

        // recalculate locked reserves
        int128 newReserve = _calcReserve(
            payouts,
            totalNetBets,
            winningOutcomesCount
        ).toInt128();

        // remove bets, payouts
        condition.totalNetBets = totalNetBets;
        condition.payouts = payouts;

        if (newReserve != reserved)
            _changeLockedLiquidity(newReserve - reserved, false);
    }

    function _rejectFee(
        uint128 reducedAmount,
        uint256 conditionId,
        uint64 timestamp
    ) internal {
        lp.rejectFee(reducedAmount, conditionId, timestamp);
    }

    /**
     * @notice Reset stored sub bet odds by passed sub bet list
     */
    function _resetSubBetOdds(
        ComboSubBet[] calldata inputSubBets,
        ComboPartOdds[] storage subBets,
        uint128 betAmount,
        uint64 timestamp
    ) internal {
        ComboPartOdds storage subBet;
        uint64 one64 = uint64(FixedMath.ONE);
        uint256 conditionId;
        uint256 length = subBets.length;
        for (uint256 j; j < inputSubBets.length; ++j) {
            bool found;
            for (uint256 k; k < length; ++k) {
                subBet = subBets[k];
                conditionId = inputSubBets[j].conditionId;
                if (
                    conditionId == subBet.conditionId &&
                    inputSubBets[j].outcomeId == subBet.outcomeId
                ) {
                    if (subBet.odds == one64) revert AlreadyRejected();

                    // only for not resolved conditions
                    if (_isConditionResolved(_getCondition(conditionId)))
                        revert SubBetConditionResolved(conditionId);

                    subBet.odds = one64;
                    found = true;

                    // chargeback subbet
                    lp.rejectFeeComboPart(
                        betAmount,
                        conditionId,
                        length,
                        k,
                        timestamp
                    );
                    break;
                }
            }
            if (!found) revert IncorrectSubBetsToReset();
        }
    }

    /**
     * @notice Register new condition if not exists or check its state is able to make bet
     */
    function _safeCreateCondition(
        uint256 conditionId,
        ConditionData memory conditionData,
        address oracle
    ) internal returns (Condition storage condition) {
        condition = _getCondition(conditionId);
        if (condition.lastDepositId == 0)
            _createCondition(conditionData, oracle, condition);
        else if (condition.state != ConditionState.CREATED)
            revert ConditionNotRunning();
    }

    /**
     * @notice Find the first recorded element equal or later `settledAt`.
     * @param  timeBets condition bet times list
     * @param  settledAt target timestamp
     * @return foundIndex result found element index
     * @return restLength rest elements count from found element
     */
    function _selectTimes(
        TimeBet[] storage timeBets,
        uint256 settledAt
    ) internal view returns (uint256 foundIndex, uint256 restLength) {
        uint256 length = timeBets.length;
        if (length == 0) return (0, 0);
        if (settledAt < timeBets[0].time) return (0, length);
        if (settledAt > timeBets[length - 1].time) return (0, 0);

        uint256 left;
        uint256 mid;
        uint256 right = length;

        // Binary search for first element >= settledAt
        while (left < right) {
            mid = (right + left) / 2;
            if (timeBets[mid].time >= settledAt) {
                right = mid;
            } else {
                left = mid + 1;
            }
        }

        // Checking if the element is found
        return
            (left < length && timeBets[left].time >= settledAt)
                ? (left, length - left)
                : (0, 0);
    }

    /**
     * @notice See {ILiveCore-cancelConditions}.
     */
    function cancelConditions(uint256[] calldata conditionIds) external {
        Condition storage condition;
        for (uint256 i; i < conditionIds.length; ++i) {
            uint256 conditionId = conditionIds[i];
            condition = _getCondition(conditionId);
            if (msg.sender != condition.oracle)
                _checkAccess(
                    msg.sender,
                    address(this),
                    this.cancelConditions.selector
                );
            _checkConditionNotSettled(condition);

            // chargeback bets
            lp.rejectConditionFee(conditionId);

            _resolveCondition(
                condition,
                conditionId,
                ConditionState.CANCELED,
                new uint128[](0),
                condition.totalNetBets,
                0
            );
        }
    }

    /**
     * @notice Liquidity Pool: Resolve AzuroBet token `tokenId` payout.
     * @notice In the Combo bet case - release reserve
     * @param  tokenId AzuroBet token ID
     * @return owner token owner
     * @return actualPayout of winnings
     */
    function resolvePayout(
        uint256 tokenId
    ) external onlyLp returns (address, uint128) {
        Bet storage bet = _bet(tokenId);

        uint128 actualPayout = viewPayout(tokenId);
        bet.isPaid = true;

        // if bet is combo - change reserve
        if (bet.comboParts.length > 0) {
            uint128 initialPayout = bet.payout;
            _addReserve(
                initialPayout - bet.amount,
                initialPayout - actualPayout,
                bet.lastDepositId,
                true
            );
        }

        return (azuroBet.ownerOf(tokenId), actualPayout);
    }

    /**
     * @notice Get condition by it's ID.
     * @param  conditionId the match or condition ID
     * @return the condition struct
     */
    function getCondition(
        uint256 conditionId
    ) external view returns (Condition memory) {
        return conditions[conditionId];
    }

    /**
     * @notice Get condition's `conditionId` index of outcome `outcomeId`.
     */
    function getOutcomeIndex(
        uint256 conditionId,
        uint128 outcomeId
    ) public view returns (uint256) {
        uint256 outcomeNumber = outcomeNumbers[conditionId][outcomeId];
        if (outcomeNumber == 0) revert WrongOutcome();

        return outcomeNumber - 1;
    }

    /**
     * @notice Check if `outcome` is winning outcome of condition `conditionId`.
     */
    function isOutcomeWinning(
        uint256 conditionId,
        uint128 outcome
    ) public view returns (bool) {
        return winningOutcomes[conditionId][outcome];
    }

    /**
     * @notice Check if condition or game it is bound with is cancelled or not.
     */
    function isConditionCanceled(
        uint256 conditionId
    ) external view returns (bool) {
        return _isConditionCanceled(_getCondition(conditionId));
    }

    /**
     * @notice Get the AzuroBet token `tokenId` payout amount.
     * @param  tokenId AzuroBet token ID
     * @return payout for the token
     */
    function viewPayout(uint256 tokenId) public view virtual returns (uint128) {
        Bet storage bet = _bet(tokenId);
        Condition storage condition;
        ComboPartOdds storage comboPart;

        if (bet.isPaid) revert AlreadyPaid();
        if (bet.lastDepositId == 0) revert BetNotExists();
        uint128 amount = bet.amount;
        uint128 payout = bet.payout;

        // if bet is combo
        // There are different cases in combo:
        // - returned value if all subbets are resolved, canceled, rejected or "bet not in time"
        // - reverted if resolved partially
        // - reverted if no resolved subbet - the case of cashout ability
        uint256 length = bet.comboParts.length;
        if (length > 0) {
            uint256 comboOdds = FixedMath.ONE;
            uint256 resolvedSubbets;
            uint256 canceledSubbets;

            for (uint256 i; i < length; ++i) {
                comboPart = bet.comboParts[i];
                uint256 conditionId = comboPart.conditionId;
                condition = _getCondition(conditionId);

                // count canceled + "out of time" + rejected
                if (
                    _isConditionCanceled(condition) ||
                    (condition.settledAt != 0 &&
                        bet.timestamp >= condition.settledAt) ||
                    (comboPart.odds == FixedMath.ONE)
                ) {
                    ++canceledSubbets;
                    continue;
                }
                if (_isConditionResolved(condition)) {
                    ++resolvedSubbets;
                    // odds > FixedMath.ONE is not rejected subBet
                    if (
                        comboPart.odds > FixedMath.ONE &&
                        !isOutcomeWinning(
                            comboPart.conditionId,
                            comboPart.outcomeId
                        )
                    ) {
                        return 0;
                    }
                }
                comboOdds = comboOdds.mul(comboPart.odds);
            }

            // all sub bets canceled
            if (length == canceledSubbets) return amount;
            if (resolvedSubbets == 0) revert CobmoBetNotResolved();

            // if all subbets resolved
            if (resolvedSubbets == (length - canceledSubbets))
                return uint128(comboOdds.mul(amount));
            // else
            revert ComboBetResolvedPartially();
        } else {
            // rejected bet can be instantly withdrawn
            if (payout == amount) return amount;

            uint256 conditionId = bet.conditionId;
            condition = _getCondition(conditionId);
            if (_isConditionResolved(condition)) {
                // bet not in time
                if (bet.timestamp >= condition.settledAt) return amount;
                if (isOutcomeWinning(bet.conditionId, bet.outcomeId))
                    return payout;
                else return 0;
            }
            // if bet canceled or rejected
            if (_isConditionCanceled(condition)) return amount;

            revert ConditionNotFinished();
        }
    }

    /**
     * @notice Change condition funds and update the locked reserve amount according to the new funds value.
     */
    function _changeFunds(
        Condition storage condition,
        uint256 outcomeIndex,
        uint128 amount,
        uint128 payout
    ) internal {
        uint128[] memory payouts = condition.payouts;
        uint128 totalNetBets = condition.totalNetBets;
        uint8 winningOutcomesCount = condition.winningOutcomesCount;

        int128 reserved = _calcReserve(
            payouts,
            totalNetBets,
            winningOutcomesCount
        ).toInt128();

        payouts[outcomeIndex] += payout;
        totalNetBets += amount;

        int128 newReserve = _calcReserve(
            payouts,
            totalNetBets,
            winningOutcomesCount
        ).toInt128();

        if (newReserve != reserved)
            _changeLockedLiquidity(newReserve - reserved, false);

        condition.payouts[outcomeIndex] = payouts[outcomeIndex];
        condition.totalNetBets = totalNetBets;
    }

    function _checkOnlyLp() internal view {
        if (msg.sender != address(lp)) revert OnlyLp();
    }

    /**
     * @notice Register new condition.
     * @param  conditionData client core condition data
     */
    function _createCondition(
        ConditionData memory conditionData,
        address oracle,
        Condition storage condition
    ) internal {
        uint256 outcomes = conditionData.outcomes.length;
        if (outcomes == 0) revert IncorrectOutcomesCount();

        (uint128 value, bool isNotUnique) = Math.isNotUniq(
            conditionData.outcomes
        );
        if (isNotUnique) revert DuplicateOutcomes(value);

        uint8 winningOutcomesCount = conditionData.winningOutcomesCount;
        if (winningOutcomesCount == 0 || winningOutcomesCount >= outcomes)
            revert IncorrectWinningOutcomesCount();

        condition.lastDepositId = _getLastDepositId();
        condition.winningOutcomesCount = winningOutcomesCount;
        condition.payouts = new uint128[](outcomes);
        condition.oracle = oracle;
        for (uint256 i; i < outcomes; ++i) {
            outcomeNumbers[conditionData.conditionId][
                conditionData.outcomes[i]
            ] = i + 1;
        }

        emit ConditionCreated(
            conditionData.gameId,
            conditionData.conditionId,
            conditionData.outcomes,
            conditionData.odds,
            winningOutcomesCount
        );
    }

    /**
     * @notice Resolves a condition by updating its state and outcome information, updating Liquidity Pool liquidity and
     *         calculating and distributing payouts and rewards to relevant parties.
     * @param  condition the condition pointer
     * @param  conditionId the condition ID
     * @param  result the ConditionState enum value representing the result of the condition
     * @param  winningOutcomes_ the IDs of the winning outcomes of the condition. Set as empty array if the condition is canceled
     * @param  payout the payout amount to be distributed between bettors
     * @param  settledAt end time to accept bets
     */
    function _resolveCondition(
        Condition storage condition,
        uint256 conditionId,
        ConditionState result,
        uint128[] memory winningOutcomes_,
        uint128 payout,
        uint64 settledAt
    ) internal {
        (uint128 value, bool isNotUnique) = Math.isNotUniq(winningOutcomes_);
        if (isNotUnique) revert DuplicateOutcomes(value);

        condition.state = result;
        for (uint256 i; i < winningOutcomes_.length; ++i) {
            winningOutcomes[conditionId][winningOutcomes_[i]] = true;
        }

        uint128 totalNetBets = condition.totalNetBets;
        uint128 lockedReserve = _calcReserve(
            condition.payouts,
            totalNetBets,
            condition.winningOutcomesCount
        );
        uint128 profitReserve = lockedReserve + totalNetBets - payout;

        _addReserve(
            lockedReserve,
            profitReserve,
            condition.lastDepositId,
            false
        );

        // make fee available to claim
        lp.releaseFee(conditionId);

        emit ConditionResolved(
            conditionId,
            uint8(result),
            winningOutcomes_,
            profitReserve.toInt128() - lockedReserve.toInt128(),
            settledAt
        );
    }

    /**
     * @notice Calculate the amount of liquidity to be reserved.
     */
    function _calcReserve(
        uint128[] memory payouts,
        uint256 totalNetBets,
        uint8 winningOutcomesCount
    ) internal pure returns (uint128) {
        return
            Math
                .diffOrZero(
                    Math.maxSum(payouts, winningOutcomesCount),
                    totalNetBets
                )
                .toUint128();
    }

    /**
     * @notice Get condition by it's ID.
     */
    function _getCondition(
        uint256 conditionId
    ) internal view returns (Condition storage) {
        return conditions[conditionId];
    }

    /**
     * @notice Check if condition or game it is bound with is cancelled or not.
     */
    function _isConditionCanceled(
        Condition storage condition
    ) internal view returns (bool) {
        return condition.state == ConditionState.CANCELED;
    }

    /**
     * @notice Check if condition is resolved or not.
     */
    function _isConditionResolved(
        Condition storage condition
    ) internal view returns (bool) {
        return condition.state == ConditionState.RESOLVED;
    }

    function _checkConditionNotSettled(
        Condition storage condition
    ) internal view {
        if (_isConditionResolved(condition) || _isConditionCanceled(condition))
            revert ConditionAlreadyResolved();
    }

    /**
     * @notice Check bettor's and oracle's parameters signatures.
     * @param  order combined parameters see { ILiveCore.OrderData }
     */
    function _checkSignatures(
        OrderData calldata order,
        bytes calldata hashes
    ) internal view {
        (bytes32 structHash, bytes32 messageHash) = abi.decode(
            hashes,
            (bytes32, bytes32)
        );

        if (
            !SignatureChecker.isValidSignatureNow(
                order.betOwner,
                _hashTypedDataV4(structHash),
                order.bettorSignature
            )
        ) revert InvalidBettorSignature();

        if (
            order.oracle !=
            MessageHashUtils.toEthSignedMessageHash(messageHash).recover(
                order.oracleSignature
            )
        ) revert InvalidOracleSignature();
    }
}
