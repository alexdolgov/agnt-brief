// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
  Emoji Guess (Social Wordle Variant) – On-chain Scores + NFT per Play
  - Daily (UTC) & Overall top-10 leaderboards
  - Max 5 plays per wallet per UTC day
  - An ERC721 is minted per submitted score. The tokenURI embeds JSON with:
      { name, description, attributes[score, day], proof }
  - "proof" can be any string: a content hash, phrase hash, or opaque receipt.
*/

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract EmojiGuess is ERC721 {
    using Strings for uint256;
    using Strings for uint16;
    using Strings for uint32;

    // ----- Types -----
    struct Entry {
        address player;
        uint16 score;
    }

    struct Game {
        address player;
        uint16 score;
        uint32 day;     // UTC day = block.timestamp / 86400
        string proof;   // arbitrary string (e.g., hash)
    }

    // ----- Constants -----
    uint8 public constant MAX_PLAYS_PER_DAY = 5;
    uint8 public constant LEADERBOARD_SIZE = 10;

    // ----- Storage -----
    uint256 public nextTokenId = 1; // token counter
    mapping(uint256 => Game) public games; // tokenId => Game
    mapping(address => mapping(uint32 => uint8)) public plays; // plays per user per day

    // dailyLeaderboard[day] => top-10
    mapping(uint32 => Entry[LEADERBOARD_SIZE]) private dailyLeaderboard;
    // overall top-10
    Entry[LEADERBOARD_SIZE] private overallLeaderboard;

    // ----- Events -----
    event ScoreSubmitted(
        address indexed player,
        uint32 indexed day,
        uint16 score,
        uint256 tokenId,
        string proof
    );

    constructor() ERC721("EmojiGuess Score", "EMOJI") {}

    // ----- Public API -----

    /// @notice Submit a score for today; mints an NFT receipt for the play.
    function submitScore(uint16 score, string calldata proof)
        external
        returns (uint256 tokenId)
    {
        require(score > 0, "Score must be > 0");

        uint32 day = currentDay();
        uint8 played = plays[msg.sender][day];
        require(played < MAX_PLAYS_PER_DAY, "Daily play limit reached");

        // increment plays first (commit)
        plays[msg.sender][day] = played + 1;

        // mint NFT receipt
        tokenId = nextTokenId++;
        _safeMint(msg.sender, tokenId);

        games[tokenId] = Game({
            player: msg.sender,
            score: score,
            day: day,
            proof: proof
        });

        // update leaderboards
        _insertLeaderboard(dailyLeaderboard[day], Entry(msg.sender, score));
        _insertLeaderboard(overallLeaderboard, Entry(msg.sender, score));

        emit ScoreSubmitted(msg.sender, day, score, tokenId, proof);
    }

    /// @notice Remaining plays for a wallet for the current UTC day.
    function playsLeft(address user) external view returns (uint8) {
        uint8 used = plays[user][currentDay()];
        return used >= MAX_PLAYS_PER_DAY ? 0 : MAX_PLAYS_PER_DAY - used;
    }

    /// @notice Fetch today's UTC day index.
    function currentDay() public view returns (uint32) {
        return uint32(block.timestamp / 86400);
    }

    /// @notice Return the daily top-10 for a given day.
    function getDailyLeaderboard(uint32 day)
        external
        view
        returns (Entry[LEADERBOARD_SIZE] memory top)
    {
        return dailyLeaderboard[day];
    }

    /// @notice Return the overall top-10.
    function getOverallLeaderboard()
        external
        view
        returns (Entry[LEADERBOARD_SIZE] memory top)
    {
        return overallLeaderboard;
    }

    // ----- Internal helpers -----

    function _insertLeaderboard(Entry[LEADERBOARD_SIZE] storage board, Entry memory e) internal {
        uint8 i = 0;
        while (i < LEADERBOARD_SIZE && board[i].score >= e.score && board[i].score != 0) {
            unchecked { ++i; }
        }
        if (i >= LEADERBOARD_SIZE) {
            return; // didn't make it
        }

        // shift down
        for (uint8 j = LEADERBOARD_SIZE - 1; j > i; ) {
            board[j] = board[j - 1];
            unchecked { --j; }
        }
        board[i] = e;
    }

    // ----- NFT metadata -----

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_ownerOf(tokenId) != address(0), "Nonexistent token");
        Game memory g = games[tokenId];

        string memory attrs = string.concat(
            "[",
                "{",
                    '"trait_type":"Score","value":', uint256(g.score).toString(),
                "},",
                "{",
                    '"trait_type":"Day","value":', uint256(g.day).toString(),
                "}",
            "]"
        );

        bytes memory json = abi.encodePacked(
            "{",
                '"name":"EmojiGuess #', tokenId.toString(), '",',
                '"description":"On-chain score receipt for Emoji Guess. Proof: ', _escapeJSON(g.proof), '",',
                '"attributes":', attrs,
            "}"
        );

        return string.concat(
            "data:application/json;base64,",
            Base64.encode(json)
        );
    }

    // Escape " and \ for JSON safety
    function _escapeJSON(string memory s) internal pure returns (string memory) {
        bytes memory b = bytes(s);
        bytes memory out = new bytes(_escapedLength(b));
        uint256 k = 0;
        for (uint256 i = 0; i < b.length; i++) {
            bytes1 c = b[i];
            if (c == '"' || c == "\\") {
                out[k++] = "\\";
                out[k++] = c;
            } else {
                out[k++] = c;
            }
        }
        assembly { mstore(out, k) }
        return string(out);
    }

    function _escapedLength(bytes memory b) internal pure returns (uint256 len) {
        len = b.length;
        for (uint256 i = 0; i < b.length; i++) {
            bytes1 c = b[i];
            if (c == '"' || c == "\\") {
                unchecked { ++len; }
            }
        }
        return len;
    }
}