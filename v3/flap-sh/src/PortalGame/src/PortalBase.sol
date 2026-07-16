// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ICurve} from "./interfaces/ICurve.sol";
import {IPortal, IPortalCore, IPortalGame, IPortalTypes} from "./interfaces/IPortal.sol";
import {IToken} from "./interfaces/IToken.sol";
import {ClonesUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/ClonesUpgradeable.sol";
import {AddressUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/AddressUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin-contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ECDSAUpgradeable} from "@openzeppelin-contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";

// v1.5.0

/// @title  The Portal Base contract
/// @notice Including Storage Definitions and Shared Functions
contract PortalBase is IPortalTypes, AccessControlUpgradeable {
    // internal types

    /// @dev packed game state
    struct PackedGameState {
        GameStatus status; // 8bit: the status of the game
        uint32 roundId; // 32bit: current round id when status == GameStatus.Started
        uint64 todayStartTimeStamp; // 64bit: the start timestamp of the latest day
        uint32 todayEndSeq; // 32bit: only the tokens in the queue before this seq can be put into duels today
    }

    /// @dev Game Queue meta, We split the meta part and the queue mapping part to save gas
    struct GameQueueMeta {
        address champion; // The last champion of the game
        uint32 nextSeq; // 32bit: the next sequence number of the game
        uint32 total; // 32bit: the total number of tokens in the game (including killed tokens)
    }

    /// @dev Game queue: The tokens in the queue are waiting to be in a queue for a duel
    struct GamesQueue {
        GameQueueMeta meta;
        mapping(uint32 seq => address token) gameTokens;
        mapping(address token => uint32) tokenSeqs;
    }

    /// @dev Game Configuratons
    struct GameConfig {
        uint256 gameSupplyThreshold; // the supply threshold for a token to be added to the game
        uint256 dexSupplyThreshold; // the supply threshold for a winner token to be added to the dex
    }

    /// @dev packed token state
    struct PackedTokenState {
        TokenStatus status; // 8bit: the status of the token
        uint8 curveType; // 8bit: reserved, always 0 at the moment
        uint8 inGame; // 8bit: is the token in game or not
        uint32 id; // 32bit: the id of the token
        uint96 reserve; // 96bit: the current reserve of the token
        uint96 reserveBeforeBattle; // 96bit: the reserve of the token before the battle
        TokenMode mode; // 8bit: the mode of the token
    }

    /// @dev packed round state
    struct PackedRoundState {
        RoundStatus status; // 8bit: the status of the current round
        uint64 startBlock; // 64bit: the start block of the round
        uint24 roundDuration; // 24bit: the number of blocks lasting for the round
        uint32 tokenA; // 32bit: the id of tokenA
        uint32 tokenB; // 32bit: the id of tokenB
    }

    /// @dev packed round result
    struct PackedRoundResult {
        uint96 deltaTokenA; // 96bit: the final delta reserve of tokenA
        uint96 deltaTokenB; // 96bit: the final delta reserve of tokenB
    }

    // constants

    /// The max supply of each created token
    uint256 internal constant maxSupply = 1_000_000_000 ether;
    /// This role can pause the game
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");
    /// This role sign the proof of a whitelisted token creator
    bytes32 public constant WHITELIST_SIGNER_ROLE = keccak256("WHITELIST_SIGNER_ROLE");
    /// Invalid Round id is the max value of uint32
    uint32 internal constant INVALID_ROUND_ID = type(uint32).max;

    // bit mask for bit flags

    /// The bit mask for the global switch , if off, all functions are disabled
    uint256 internal constant CB_BIT_MASK_GLOBAL_SWITCH = 1;
    /// The bit mask for the trade feature (bit 1)
    uint256 internal constant CB_BIT_MASK_TRADE = 2;

    // Immutables

    /// The implementation of the token
    IToken internal immutable tokenImpl;

    /// The Curve of each token
    ICurve internal immutable curve;

    // internal states

    /// A _nonce used as the seed for creating new token
    uint256 internal _nonce;

    /// @dev mapping from tokenAddress To PackedTokenState
    mapping(address => PackedTokenState) internal tokens;

    /// @dev the game state
    PackedGameState internal game;

    /// @dev the game queue
    GamesQueue internal gamesQueue;

    /// @dev the rounds in the game
    mapping(uint32 roundId => PackedRoundState) internal rounds;

    /// @dev the results of the previous rounds (does not include non-resolved rounds)
    mapping(uint32 roundId => PackedRoundResult) internal roundResults;

    /// @dev redeem rates in WAD for killed tokens, src token => dst Token => rate
    mapping(address srcToken => mapping(address dstToken => uint256)) internal redeemRates;

    /// @dev bit flags
    uint256 internal bitFlags;

    /// @dev game config
    GameConfig internal gameConfig;

    /// @dev whitelist token creators, address => number of tokens created
    /// obsolete: put here to avoid future storage layout conflicts
    mapping(address => uint256) internal _obsoleteWhiteListedTokenCreators;

    /// @dev check-in data
    ///  address => last check in timestamp
    mapping(address => uint256) internal checkIns;

    constructor(ICurve curve_, IToken tokenImpl_) {
        curve = curve_;
        tokenImpl = tokenImpl_;
    }

    function _tokenByNonce(uint256 nonce_) internal view returns (address) {
        return ClonesUpgradeable.predictDeterministicAddress(
            address(tokenImpl), keccak256(abi.encode(nonce_, address(this)))
        );
    }

    /// @dev join a token to the game
    function _joinGame(address token) internal {
        PackedTokenState memory tokenState = tokens[token];
        if (tokenState.mode == TokenMode.MODE_NO_DUEL) {
            revert InvalidTokenModeForGame(token, tokenState.mode);
        }
        if (tokenState.status != TokenStatus.Tradable) {
            revert TokenNotTradable(token);
        }
        if (tokenState.inGame == 1) {
            revert TokenAlreadyInGame(token);
        }

        tokenState.inGame = 1;

        // mutate game state & game queue

        // flush the token state
        tokens[token] = tokenState;
        // increase total number of tokens in the game
        uint32 seq = gamesQueue.meta.total++;

        gamesQueue.gameTokens[seq] = token;
        // FIXME: if we don't return "seq" in getToken, we can save 20K gas
        //        Or, better way to pack it somewhere else?
        gamesQueue.tokenSeqs[token] = seq;

        emit GameJoined(tokenState.id, seq);
    }

    /// @dev check bit flags
    /// If a bit is off, means the feature is disabled
    function _checkBitFlags(uint256 mask) internal view returns (bool) {
        // We only check the bits in the mask are set
        // And ignore the bits that are not in the mask
        //
        //  -  mask => with only checking bits set
        //  -  mask ^ bitFlags =>
        //          XOR: all checking bits should be unset, if
        //          they are set in the bitFlags.
        //  - _ & mask, ignore the bits that are not in the mask
        //
        return (mask ^ bitFlags) & mask == 0;
    }

    /// @dev _revert with returnData
    function _revert(bytes memory returndata) internal pure {
        if (returndata.length > 0) {
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert CallReverted();
        }
    }
}
