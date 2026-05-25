// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IGuessHook} from "./IGuessHook.sol";

/**
 * @title GuessGame
 * @notice A game where players attempt to guess a secret phrase
 * @dev Players can make free attempts daily and buy additional attempts using tokens
 */
contract GuessGame is Ownable2Step, ReentrancyGuard {
    /* Constants */
    uint256 private constant ONE_DAY = 86400;

    /* Structs */
    /**
     * @notice Tracks a player's attempts in a specific game
     * @dev Used to manage both free and paid attempts per day
     */
    struct PlayerAttempts {
        /// @notice Timestamp of the last attempt update
        uint64 updateTimestamp;
        /// @notice Total number of attempts made in the current day
        uint32 attemptsCount;
        /// @notice Number of paid attempts purchased in the current day
        uint32 paidAttempts;
    }

    /* State variables */
    /// @notice The ERC20 token used for payments
    IERC20 private immutable i_token;

    /// @notice Price for purchasing a bunch of attempts
    uint256 private s_attemptsBunchPrice;
    /// @notice Number of attempts included in each purchased bunch
    uint32 private s_attemptsBunchSize;
    /// @notice Maximum number of paid attempts allowed per day
    uint32 private s_maxPaidAttemptsPerDay;
    /// @notice Number of free attempts allowed per day
    uint32 private s_freeAttemptsPerDay;

    /// @notice Address of the hook contract or address(0) if no hook is set
    address private s_guessHook;

    /// @notice Current game ID
    uint32 private s_gameId;

    /// @notice Mapping of game IDs to player addresses to their attempt data
    mapping(uint32 gameId => mapping(address player => PlayerAttempts)) private s_playerAttempts;

    /// @notice The secret phrase that players are trying to guess
    mapping(uint32 gameId => string secretPhrase) private s_secretPhrases;

    /// @notice The address of the winner of the current game
    mapping(uint32 gameId => address winner) private s_winners;

    /// @notice The total amount of contributions for each game
    mapping(uint32 gameId => uint256 totalContributions) private s_totalContributions;

    /* Events */
    event GameStarted(uint32 indexed gameId);
    event GameEnded(uint32 indexed gameId, address indexed winner, uint256 amount);
    event Guess(uint32 indexed gameId, address indexed player, bytes32 phraseHash);
    event BuyAttempts(uint32 indexed gameId, address indexed player);
    event ParametersChanged(
        uint32 indexed gameId,
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    );

    /* Errors */
    error GuessGame__ZeroAddress();
    error GuessGame__ZeroAmount();
    error GuessGame__NoAttemptsLeft();
    error GuessGame__MaxPaidAttemptsReached();
    error GuessGame__GameEnded();

    /**
     * @notice Initializes the game with the specified parameters
     * @param token The ERC20 token used for payments
     * @param attemptsBunchPrice The price for a bunch of attempts
     * @param attemptsBunchSize The number of attempts in a bunch
     * @param maxPaidAttemptsPerDay Maximum paid attempts allowed per day
     * @param freeAttemptsPerDay Number of free attempts allowed per day
     */
    constructor(
        IERC20 token,
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    ) Ownable(msg.sender) {
        if (address(token) == address(0)) revert GuessGame__ZeroAddress();
        i_token = token;
        _startNewGame(attemptsBunchPrice, attemptsBunchSize, maxPaidAttemptsPerDay, freeAttemptsPerDay, guessHook);
    }

    /**
     * @notice Allows a player to purchase additional guess attempts
     * @dev Transfers tokens from the player to the contract
     * @dev Reverts if the game has ended or the player has reached the max paid attempts for the day
     */
    function buyAttempts() external nonReentrant {
        uint32 gameId = s_gameId;
        if (_isEndedGame(gameId)) revert GuessGame__GameEnded();

        PlayerAttempts memory playerAttempts = s_playerAttempts[gameId][msg.sender];
        uint256 startOfDay = _getStartOfDay();
        uint32 bunchSize = s_attemptsBunchSize;

        if (playerAttempts.updateTimestamp >= startOfDay) {
            if (playerAttempts.paidAttempts + bunchSize > s_maxPaidAttemptsPerDay) {
                revert GuessGame__MaxPaidAttemptsReached();
            }

            playerAttempts.paidAttempts += bunchSize;
        } else {
            playerAttempts.updateTimestamp = uint64(block.timestamp);
            playerAttempts.attemptsCount = 0;
            playerAttempts.paidAttempts = bunchSize;
        }

        s_playerAttempts[gameId][msg.sender] = playerAttempts;

        uint256 attemptsBunchPrice = s_attemptsBunchPrice;
        s_totalContributions[gameId] += attemptsBunchPrice;

        emit BuyAttempts(gameId, msg.sender);

        SafeERC20.safeTransferFrom(i_token, msg.sender, address(this), attemptsBunchPrice);
    }

    /**
     * @notice Allows a player to make a guess by submitting a hash of their phrase
     * @param phraseHash The keccak256 hash of the player's guessed phrase
     * @dev Consumes one attempt and emits a Guess event
     * @dev Reverts if the game has ended or the player has no attempts left
     */
    function guess(bytes32 phraseHash) external {
        uint32 gameId = s_gameId;
        if (_isEndedGame(gameId)) revert GuessGame__GameEnded();

        uint256 startOfDay = _getStartOfDay();
        uint32 freeAttemptsPerDay = s_freeAttemptsPerDay;
        PlayerAttempts memory playerAttempts = s_playerAttempts[gameId][msg.sender];
        if (playerAttempts.updateTimestamp < startOfDay) {
            playerAttempts.attemptsCount = 0;
            playerAttempts.paidAttempts = 0;
        }

        if (playerAttempts.attemptsCount >= freeAttemptsPerDay + playerAttempts.paidAttempts) {
            revert GuessGame__NoAttemptsLeft();
        }

        address guessHook = s_guessHook;
        if (guessHook != address(0)) {
            IGuessHook(guessHook).onGuess(msg.sender, gameId, phraseHash);
        }

        playerAttempts.attemptsCount++;
        playerAttempts.updateTimestamp = uint64(block.timestamp);

        s_playerAttempts[gameId][msg.sender] = playerAttempts;
        emit Guess(gameId, msg.sender, phraseHash);
    }

    /**
     * @notice Sets the winner of the current game and transfers the prize
     * @param winner The address of the winning player
     * @param secretPhrase The correct secret phrase that was guessed
     * @dev Can only be called by the contract owner
     * @dev Transfers all tokens held by the contract to the winner
     */
    function setWinner(address winner, string memory secretPhrase) external onlyOwner {
        if (address(winner) == address(0)) revert GuessGame__ZeroAddress();

        uint32 gameId = s_gameId;
        if (_isEndedGame(gameId)) revert GuessGame__GameEnded();

        s_winners[gameId] = winner;
        s_secretPhrases[gameId] = secretPhrase;

        IERC20 token = i_token;
        uint256 balance = token.balanceOf(address(this));
        SafeERC20.safeTransfer(token, winner, balance);

        emit GameEnded(gameId, winner, balance);
    }

    /**
     * @notice Starts a new game with updated parameters
     * @param attemptsBunchPrice The price for a bunch of attempts
     * @param attemptsBunchSize The number of attempts in a bunch
     * @param maxPaidAttemptsPerDay Maximum paid attempts allowed per day
     * @param freeAttemptsPerDay Number of free attempts allowed per day
     * @param guessHook The address of the hook contract or address(0) if no hook is set
     * @dev Can only be called by the contract owner
     */
    function startNewGame(
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    ) external onlyOwner {
        _startNewGame(attemptsBunchPrice, attemptsBunchSize, maxPaidAttemptsPerDay, freeAttemptsPerDay, guessHook);
    }

    /**
     * @notice Changes the parameters of the game
     * @param attemptsBunchPrice The price for a bunch of attempts
     * @param attemptsBunchSize The number of attempts in a bunch
     * @param maxPaidAttemptsPerDay Maximum paid attempts allowed per day
     * @param freeAttemptsPerDay Number of free attempts allowed per day
     * @param guessHook The address of the hook contract or address(0) if no hook is set
     * @dev Can only be called by the contract owner
     */
    function changeParameters(
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    ) external onlyOwner {
        _changeParameters(attemptsBunchPrice, attemptsBunchSize, maxPaidAttemptsPerDay, freeAttemptsPerDay, guessHook);
    }

    /**
     * @notice Internal function to start a new game with specified parameters
     * @dev Increments the game ID and resets game state
     */
    function _startNewGame(
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    ) private {
        uint32 gameId = s_gameId + 1;
        s_gameId = gameId;

        _changeParameters(attemptsBunchPrice, attemptsBunchSize, maxPaidAttemptsPerDay, freeAttemptsPerDay, guessHook);

        emit GameStarted(gameId);
    }

    function _changeParameters(
        uint256 attemptsBunchPrice,
        uint32 attemptsBunchSize,
        uint32 maxPaidAttemptsPerDay,
        uint32 freeAttemptsPerDay,
        address guessHook
    ) private {
        if (attemptsBunchPrice == 0) revert GuessGame__ZeroAmount();
        if (attemptsBunchSize == 0) revert GuessGame__ZeroAmount();
        if (maxPaidAttemptsPerDay == 0) revert GuessGame__ZeroAmount();

        s_attemptsBunchPrice = attemptsBunchPrice;
        s_attemptsBunchSize = attemptsBunchSize;
        s_maxPaidAttemptsPerDay = maxPaidAttemptsPerDay;

        // if freeAttemptsPerDay is 0, it means that all attempts are paid
        s_freeAttemptsPerDay = freeAttemptsPerDay;
        s_guessHook = guessHook;

        emit ParametersChanged(
            s_gameId, attemptsBunchPrice, attemptsBunchSize, maxPaidAttemptsPerDay, freeAttemptsPerDay, guessHook
        );
    }

    /**
     * @notice Calculates the start of the current day (00:00 UTC)
     * @return The timestamp for the start of the current day
     */
    function _getStartOfDay() private view returns (uint64) {
        return uint64(block.timestamp - (block.timestamp % ONE_DAY)); // safe for block.timestamp
    }

    /**
     * @notice Checks if a game has ended
     * @param gameId The ID of the game to check
     * @return True if the game has ended, false otherwise
     */
    function _isEndedGame(uint32 gameId) private view returns (bool) {
        return s_winners[gameId] != address(0);
    }

    /**
     * @notice Returns the number of attempts left for a player in a current game
     * @param player The address of the player
     * @return The number of attempts left
     */
    function getLeftAttempts(address player) external view returns (uint32) {
        uint32 gameId = s_gameId;
        if (_isEndedGame(gameId)) return 0;

        uint32 freeAttemptsPerDay = s_freeAttemptsPerDay;
        uint256 startOfDay = _getStartOfDay();
        PlayerAttempts memory playerAttempts = s_playerAttempts[s_gameId][player];
        if (playerAttempts.updateTimestamp < startOfDay) {
            return freeAttemptsPerDay;
        } else {
            return freeAttemptsPerDay + playerAttempts.paidAttempts - playerAttempts.attemptsCount;
        }
    }

    /**
     * @notice Returns the token used for payments
     * @return The ERC20 token interface
     */
    function getToken() external view returns (IERC20) {
        return i_token;
    }

    /**
     * @notice Returns the current price for a bunch of attempts
     * @return The price in token units
     */
    function getAttemptsBunchPrice() external view returns (uint256) {
        return s_attemptsBunchPrice;
    }

    /**
     * @notice Returns the number of attempts in each purchased bunch
     * @return The number of attempts per bunch
     */
    function getAttemptsBunchSize() external view returns (uint32) {
        return s_attemptsBunchSize;
    }

    /**
     * @notice Returns the maximum number of paid attempts allowed per day
     * @return The maximum paid attempts limit
     */
    function getMaxPaidAttemptsPerDay() external view returns (uint32) {
        return s_maxPaidAttemptsPerDay;
    }

    /**
     * @notice Returns the number of free attempts allowed per day
     * @return The free attempts count
     */
    function getFreeAttemptsPerDay() external view returns (uint32) {
        return s_freeAttemptsPerDay;
    }

    /**
     * @notice Returns the address of the current game winner, if any
     * @return The winner's address or address(0) if no winner yet
     */
    function getWinner(uint32 gameId) external view returns (address) {
        return s_winners[gameId];
    }

    /**
     * @notice Returns the current game ID
     * @return The game ID
     */
    function getGameId() external view returns (uint32) {
        return s_gameId;
    }

    /**
     * @notice Returns the secret phrase after the game has ended
     * @return The secret phrase
     */
    function getSecretPhrase(uint32 gameId) external view returns (string memory) {
        return s_secretPhrases[gameId];
    }

    /**
     * @notice Returns a player's attempt data for a specific game
     * @param gameId The ID of the game
     * @param player The address of the player
     * @return The player's attempt data
     */
    function getPlayerAttempts(uint32 gameId, address player) external view returns (PlayerAttempts memory) {
        return s_playerAttempts[gameId][player];
    }

    /**
     * @notice Returns the address of the hook contract
     * @return The address of the hook contract
     */
    function getGuessHook() external view returns (address) {
        return s_guessHook;
    }

    /**
     * @notice Returns the total contributions for a specific game
     * @param gameId The ID of the game
     * @return The total contributions
     */
    function getTotalContributions(uint32 gameId) external view returns (uint256) {
        return s_totalContributions[gameId];
    }
}
