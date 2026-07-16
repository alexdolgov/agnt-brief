// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ICurve} from "./interfaces/ICurve.sol";
import {IPortal, IPortalCore, IPortalGame, IPortalTypes, IDexLauncher} from "./interfaces/IPortal.sol";
import {IToken} from "./interfaces/IToken.sol";
import {ClonesUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import {AddressUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/AddressUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ECDSAUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";
import {PortalBase} from "./PortalBase.sol";
import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @title The implementation of the PortalGame
/// @notice Including the game related functions of the Portal
contract PortalGame is IPortalGame, PortalBase {
    /// The duration of a duel in blocks
    uint24 internal immutable DUEL_DURATION_BLOCKS;
    /// DexLauncher Implementation
    address internal immutable DEX_LAUNCHER_IMPL;
    /// Daily start timestamp of each day 0 ~ 86399 second of each day
    /// i.e: 0 => 00:00:00, 86399 => 23:59:59 UTC
    uint256 internal immutable DAILY_START_TIME;
    /// The maximum number of duels per day 
    uint32 internal immutable MAX_DUELS_PER_DAY;
    /// The orgnizer role
    /// @dev When the orgnizer role calls the `transitGameState` function,
    ///      we will also try to transist the game day.
    bytes32 public constant ORGANIZER_ROLE = keccak256("ORGANIZER_ROLE");

    // constants
    uint256 public constant MIN_GAME_SUPPLY_THRESHOLD = 3e8 ether; // 30% supply
    uint256 public constant MIN_DEX_SUPPLY_THRESHOLD = 5e8 ether; // 50% supply
    uint256 internal constant SECONDS_PER_DAY = 86400;

    constructor(
        ICurve _curve,
        IToken _tokenImpl,
        address dexLauncher_,
        uint24 duelDuration_,
        uint256 dailyStartTime_,
        uint32 maxDuelsPerDay_
    ) PortalBase(_curve, _tokenImpl) {
        curve = _curve;
        tokenImpl = _tokenImpl;
        DUEL_DURATION_BLOCKS = duelDuration_;
        DEX_LAUNCHER_IMPL = dexLauncher_;
        DAILY_START_TIME = dailyStartTime_;
        MAX_DUELS_PER_DAY = maxDuelsPerDay_;
    }

    /// @inheritdoc IPortalGame
    function addGameTokens(uint256[] calldata ids) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        // loop through the ids
        for (uint256 i = 0; i < ids.length; i++) {
            address token = _tokenByNonce(ids[i]);
            _joinGame(token);
        }
    }

    /// @inheritdoc IPortalGame
    function getRound(uint256 id) public view override returns (RoundState memory) {
        // get the current round of the game
        PackedGameState memory gameState = game;

        if (gameState.status == GameStatus.Pending) {
            revert GameNotStarted();
        }

        uint256 currentRound = gameState.roundId;
        if (id > currentRound || id == INVALID_ROUND_ID) {
            revert RoundNotFound(id);
        }

        // get round state
        PackedRoundState memory round = rounds[uint32(id)];

        address addrA = _tokenByNonce(round.tokenA);
        address addrB = _tokenByNonce(round.tokenB);

        // find the delta reserve of the two tokens
        //  - preparation phase: both zero
        //  - battle phase:  calculated by the difference of the reserve before and in the battle
        //  - resolved phase: read from the roundResults
        uint256 deltaReserveA = 0;
        uint256 deltaReserveB = 0;
        if (round.status == RoundStatus.Resolved) {
            PackedRoundResult memory result = roundResults[uint32(id)];
            deltaReserveA = result.deltaTokenA;
            deltaReserveB = result.deltaTokenB;
        } else if (round.status == RoundStatus.Duel) {
            PackedTokenState memory tokenA = tokens[addrA];
            PackedTokenState memory tokenB = tokens[addrB];
            deltaReserveA = tokenA.reserve - tokenA.reserveBeforeBattle;
            deltaReserveB = tokenB.reserve - tokenB.reserveBeforeBattle;
        }

        // possibly return computed status
        RoundStatus status = round.status;

        // time dependent status transition
        if (status == RoundStatus.Duel && block.number >= round.startBlock + round.roundDuration) {
            status = RoundStatus.Resolving;
        }

        return RoundState(
            uint32(id),
            status,
            addrA,
            addrB,
            deltaReserveA,
            deltaReserveB,
            round.startBlock,
            round.startBlock + round.roundDuration
        );
    }

    /// @inheritdoc IPortalGame
    function getGame() external view override returns (GameState memory state) {
        PackedGameState memory gameState = game;

        return GameState(
            gameState.status,
            gameState.roundId,
            gamesQueue.meta.champion,
            gamesQueue.meta.nextSeq,
            gamesQueue.meta.total,
            gameState.todayStartTimeStamp,
            gameState.todayEndSeq
        );
    }

    /// @inheritdoc IPortalGame
    function getLatestRound() external view returns (RoundState memory state) {
        return getRound(game.roundId);
    }

    /// @inheritdoc IPortalGame
    function startGame() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        // get the current game state
        PackedGameState memory gameState = game;
        if (gameState.status != GameStatus.Pending) {
            revert GameNotPending();
        }

        // start the game
        gameState.status = GameStatus.Live;
        gameState.roundId = INVALID_ROUND_ID;

        // flush game state
        game = gameState;

        // emit event
        emit GameStarted();

        // then transist the game state
        _transitGameState(true);
    }

    function transitGameState() external payable override {
        _transitGameState(hasRole(ORGANIZER_ROLE, _msgSender()));
    }

    /// @dev transit the game state if needed
    function _transitGameState(bool tryStartNextGameDay) internal {
        PackedGameState memory gameState = game;

        if (gameState.status == GameStatus.Live) {
            // should we start the next round?
            // assume we should start the next round
            bool startNextRound = true;

            // 1. transit the current round
            if (gameState.roundId != INVALID_ROUND_ID) {
                RoundStatus postStatus = _transitRound(gameState.roundId);
                // if last round is resolved, we should try to start the next round
                startNextRound = postStatus == RoundStatus.Resolved;
            }

            // 2. start next round if needed
            if (startNextRound) {
                _tryStartNewRound(true, tryStartNextGameDay);
            }
        }

        // if the game is not live, we do nothing.
    }

    /// @dev transit the state of a round if needed
    /// @return the new status of the round
    function _transitRound(uint32 _round) internal returns (RoundStatus) {
        PackedRoundState memory state = rounds[_round];

        // the initial status of this round
        RoundStatus status = state.status;

        // state machine transition
        while (true) {
            if (status == RoundStatus.Duel) {
                // if the current round is in battle, we check if we need to transit to resolved
                if (block.number >= state.startBlock + uint64(state.roundDuration)) {
                    // find the winner & the loser

                    address winnerAddr;
                    address loserAddr;
                    {
                        address addrA = _tokenByNonce(state.tokenA);
                        address addrB = _tokenByNonce(state.tokenB);

                        PackedTokenState memory tokenA = tokens[addrA];
                        PackedTokenState memory tokenB = tokens[addrB];

                        uint96 deltaReserveA = tokenA.reserve - tokenA.reserveBeforeBattle;
                        uint96 deltaReserveB = tokenB.reserve - tokenB.reserveBeforeBattle;

                        {
                            // backup battle results to roundResults
                            roundResults[_round] = PackedRoundResult(deltaReserveA, deltaReserveB);
                        }

                        // if tokenB has more delta reserve, tokenB wins.
                        // otherwise , tokenA wins.
                        (winnerAddr, loserAddr) = deltaReserveA >= deltaReserveB ? (addrA, addrB) : (addrB, addrA);
                    }

                    PackedTokenState memory winner = tokens[winnerAddr];
                    PackedTokenState memory loser = tokens[loserAddr];

                    // update the status of the winner and loser
                    winner.status = TokenStatus.Tradable;
                    loser.status = TokenStatus.Killed;

                    // all reserve from the loser is moved to the winner
                    uint96 eth = loser.reserve;

                    winner.reserve += eth;
                    winner.reserveBeforeBattle = winner.reserve;
                    loser.reserve = 0;
                    loser.reserveBeforeBattle = 0;

                    // flush token states to storage
                    tokens[winnerAddr] = winner;
                    tokens[loserAddr] = loser;

                    // estimate the increase of winner token supply due to the reserve change
                    uint256 amount = curve.estimateSupply(winner.reserve) - IToken(winnerAddr).totalSupply();

                    if (amount > 0) {
                        // mint the winner token to address(this) for later to be
                        // redeemed by the loser holders
                        IToken(winnerAddr).mint(address(this), amount);

                        // estimate the post price of the winner token
                        uint256 postPrice = curve.price(IToken(winnerAddr).totalSupply());

                        // conversion rate in wad
                        // each loser token can be redeemed for X wad of winner token
                        uint256 rate = (1 ether * amount) / IToken(loserAddr).totalSupply();
                        redeemRates[loserAddr][winnerAddr] = rate;

                        emit RoundResultResolved(
                            block.timestamp, _round, winnerAddr, loserAddr, rate, eth, amount, postPrice
                        );
                    } else {
                        // estimate the post price of the winner token
                        uint256 postPrice = curve.price(IToken(winnerAddr).totalSupply());

                        emit RoundResultResolved(block.timestamp, _round, winnerAddr, loserAddr, 0, 0, 0, postPrice);
                    }

                    // mutate the GameQueue
                    {
                        // first try add to DEX
                        if (_tryLaunchToDex(winnerAddr)) {
                            // if the winner token is added to the dex, it will not play in the next round
                            gamesQueue.meta.champion = address(0);
                            // rennounce winner token's owner role
                            OwnableUpgradeable(winnerAddr).renounceOwnership();
                        } else {
                            // if the winner token has not been added to the dex, it becomes the champion
                            // And will be put into the duel of the next round
                            gamesQueue.meta.champion = winnerAddr;
                        }
                    }

                    status = RoundStatus.Resolved;
                }
            }
            break;
        }

        // update round status if needed
        if (state.status != status) {
            state.status = status;

            // flush round state to storage
            rounds[_round] = state;
        }

        return status;
    }

    /// @dev try to start a new round
    /// @param skipLastRoundCheck if true, skip the last round check
    /// @param tryStartNextGameDay if true, try to start the next game day
    function _tryStartNewRound(bool skipLastRoundCheck, bool tryStartNextGameDay) internal {
        // get the current game state
        PackedGameState memory gameState = game;
        // get the current game queue meta
        GameQueueMeta memory meta = gamesQueue.meta;

        // 1.  check the status of the last round, it must be resolved
        if (!skipLastRoundCheck) {
            // get the last round state
            PackedRoundState memory round = rounds[gameState.roundId];

            // premise check
            if (round.status != RoundStatus.Resolved) {
                // silently ignore
                return;
            }
        }

        // 2. the next game day has not come yet
        if (block.timestamp < gameState.todayStartTimeStamp) {
            // another day is scheduled, but not yet come. 
            // silently ignore
            return;
        }

        // 3. premise check: There are more than 2 tokens left can be put into duels
        //   - non-zero champion + at least 1 token available
        //   - or, zero champion + at least 2 tokens available
        if (
            (meta.champion == address(0) && gameState.todayEndSeq - meta.nextSeq < 2)
                || (meta.champion != address(0) && gameState.todayEndSeq - meta.nextSeq < 1)
        ) {
            // all duels from the last day ends
            {
                // try to launch last champion to DEX
                if (meta.champion != address(0)) {
                    if (_tryLaunchToDex(meta.champion)) {
                        // rennounce champion's owner role
                        OwnableUpgradeable(meta.champion).renounceOwnership();
                        // reset the champion
                        meta.champion = address(0);
                        // flush the game queue meta
                        gamesQueue.meta = meta;
                    }
                }
            }

            // only try to transit the game day if tryStartNextGameDay is true
            if (tryStartNextGameDay) {
                // check if we need to start the next game day (i.e, still enough tokens in the queue)
                // the similar condition like the outter if-block, but using the total instead of todayEndSeq
                if (
                    (meta.champion == address(0) && meta.total - meta.nextSeq < 2)
                        || (meta.champion != address(0) && meta.total - meta.nextSeq < 1)
                ) {
                    return;
                }

                // - DAILY_START_TIME is the UTC start time of each day
                // - the new todayStartTimeStamp must be gte block.timestamp

                uint256 secPastStart = (block.timestamp - DAILY_START_TIME) % SECONDS_PER_DAY;
                uint256 startTime = block.timestamp + (secPastStart > 0 ? SECONDS_PER_DAY - secPastStart : 0);

                if (startTime - block.timestamp < SECONDS_PER_DAY / 2) {
                    // Can only start the next game day at least 12 hours before it starts.
                    // If less than 12 hours, we delay one more day
                    startTime += SECONDS_PER_DAY;
                }

                gameState.todayStartTimeStamp = uint64(startTime);

                // For MAX_DUELS_PER_DAY duels, we need MAX_DUELS_PER_DAY + 1 tokens, if no token
                // could reach to the DEX. 
                uint32 wanted = MAX_DUELS_PER_DAY + 1; 
                if(meta.champion != address(0)){
                    // if there is a champion, we need one less token from the queue 
                    wanted--;
                }

                gameState.todayEndSeq = meta.total - meta.nextSeq > wanted
                    ? meta.nextSeq + wanted
                    : meta.total;

                // flush the game state
                game = gameState;
                emit GameDayStarted(gameState.todayStartTimeStamp, meta.nextSeq, gameState.todayEndSeq);
            }

            // silently ignore
            return;
        }

        // get the next round id
        uint32 nextRound = gameState.roundId == INVALID_ROUND_ID ? 0 : gameState.roundId + 1;

        // get the next two tokens
        address tokenA;
        address tokenB;

        if (meta.champion == address(0)) {
            // if there is no champion, we need to pick two tokens from the queue
            tokenA = gamesQueue.gameTokens[meta.nextSeq];
            meta.nextSeq++;
            tokenB = gamesQueue.gameTokens[meta.nextSeq];
            meta.nextSeq++;
        } else {
            // if there is a champion, we need to pick one token from the queue
            tokenA = meta.champion;
            meta.champion = address(0);
            tokenB = gamesQueue.gameTokens[meta.nextSeq];
            meta.nextSeq++;
        }

        // start new round
        {
            // get the token states
            PackedTokenState memory stateA = tokens[tokenA];
            PackedTokenState memory stateB = tokens[tokenB];

            // verify that the two tokens are tradable and in game
            if (stateA.status != TokenStatus.Tradable || stateA.inGame != 1) {
                revert InvalidTokenForBattle(tokenA);
            }

            if (stateB.status != TokenStatus.Tradable || stateB.inGame != 1) {
                revert InvalidTokenForBattle(tokenB);
            }

            // change the status of both token
            stateA.status = TokenStatus.InDuel;
            stateB.status = TokenStatus.InDuel;

            PackedRoundState memory round = PackedRoundState({
                status: RoundStatus.Duel,
                startBlock: uint64(block.number),
                roundDuration: DUEL_DURATION_BLOCKS,
                tokenA: stateA.id,
                tokenB: stateB.id
            });

            // flush round state
            rounds[nextRound] = round;

            // flush token states
            tokens[tokenA] = stateA;
            tokens[tokenB] = stateB;
        }

        // flush the queue meta
        gamesQueue.meta = meta;

        // flush the game state
        gameState.roundId = nextRound;
        game = gameState;

        // emit event
        emit RoundStarted(block.timestamp, nextRound, tokenA, tokenB, block.number + DUEL_DURATION_BLOCKS, meta.nextSeq);
    }

    /// @dev add token to dex
    /// @return true if the token is added to the dex
    function _tryLaunchToDex(address token) internal returns (bool) {
        // check if the supply of the token is greater than the threshold
        if (IToken(token).totalSupply() < gameConfig.dexSupplyThreshold) {
            return false;
        }

        (bool success, bytes memory err) =
            DEX_LAUNCHER_IMPL.delegatecall(abi.encodeWithSelector(IDexLauncher.luanchToDEX.selector, token));
        if (!success) {
            _revert(err);
        }

        return true;
    }

    function pauseGame() external override onlyRole(GUARDIAN_ROLE) {
        PackedGameState memory gameState = game;
        if (gameState.status != GameStatus.Live) {
            revert GameNotLive();
        }
        gameState.status = GameStatus.Paused;
        game = gameState;
        emit GamePaused();
    }

    /// @inheritdoc IPortalGame
    function resumeGame() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        PackedGameState memory gameState = game;
        if (gameState.status != GameStatus.Paused) {
            revert GameNotPaused();
        }
        gameState.status = GameStatus.Live;
        game = gameState;
        emit GameResumed();
    }

    /// @inheritdoc IPortalGame
    function setThresholds(uint256 gameSupplyThreshold, uint256 dexSupplyThreshold)
        external
        override
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        // check the thresholds
        if (gameSupplyThreshold < MIN_GAME_SUPPLY_THRESHOLD) {
            revert InvalidGameSupplyThreshold();
        }

        if (dexSupplyThreshold < MIN_DEX_SUPPLY_THRESHOLD) {
            revert InvalidDEXSupplyThreshold();
        }
        gameConfig.gameSupplyThreshold = gameSupplyThreshold;
        gameConfig.dexSupplyThreshold = dexSupplyThreshold;
        emit ThresholdsChanged(gameSupplyThreshold, dexSupplyThreshold);
    }

    /// @inheritdoc IPortalGame
    function getGameQueue(uint256 seq) external view override returns (address token) {
        if (seq >= gamesQueue.meta.total) {
            revert SeqNotFound(seq);
        }

        return gamesQueue.gameTokens[uint32(seq)];
    }

    /// @inheritdoc IPortalGame
    function DEX_SUPPLY_THRESHOLD() external view override returns (uint256) {
        return gameConfig.dexSupplyThreshold;
    }

    /// @inheritdoc IPortalGame
    function GAME_SUPPLY_THRESHOLD() external view override returns (uint256) {
        return gameConfig.gameSupplyThreshold;
    }
}
