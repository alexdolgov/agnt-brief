// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "./interfaces/IMintedBurnableERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

using SafeERC20 for IERC20;

/// @notice Tic-Tac-Toe is a simple demo game
/// @custom:security-contact security@fantom.foundation
contract TicTacToe is UUPSUpgradeable, OwnableUpgradeable {

    uint8 public constant boardSize = 5;
    uint8 public constant rowToFinish = 4;

    enum Player { None, One, Two }
    enum Result { None, PlayerOneWon, PlayerTwoWon, Draw }
    enum Direction { Right, Down, RightDown, LeftDown }

    struct Game {
        address playerOne;
        address playerTwo;
        Result result;
        Player turn;
        Player[boardSize][boardSize] board;
    }

    mapping(uint256 gameId => Game game) public games;
    uint256 public gamesCount;
    address public prizeToken;

    event GameCreated(uint256 gameId, address playerOne);
    event PlayerJoined(uint256 gameId, address playerTwo);
    event MadeMove(uint256 gameId, uint8 x, uint8 y, Player player);
    event GameOver(uint256 gameId, Result result);
    event PrizeTokenSet(address prizeToken);

    error NotInitialized();
    error GameDoesNotExist(uint256 gameId);
    error GameAlreadyTaken(uint256 gameId);
    error GameAlreadyFinished(uint256 gameId);
    error NotYourTurn(uint256 gameId, address currentPlayer);
    error SpaceOccupied(uint256 gameId, uint8 x, uint8 y);
    error NotFinal(uint256 gameId, uint8 i);
    error MintingFailed();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// Initialize contract after the deployment.
    function initialize(address _owner) external initializer {
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
    }

    function newGame() public returns (uint256 gameId) {
        if (owner() == address(0)) {
            revert NotInitialized();
        }

        Game memory game;
        game.turn = Player.One;
        game.playerOne = msg.sender;

        gameId = ++gamesCount;
        games[gameId] = game;

        emit GameCreated(gameId, msg.sender);
        return gameId;
    }

    function joinGame(uint256 gameId) public {
        if (games[gameId].playerOne == address(0)) {
            revert GameDoesNotExist(gameId);
        }
        if (games[gameId].playerTwo != address(0)) {
            revert GameAlreadyTaken(gameId);
        }
        games[gameId].playerTwo = msg.sender;
        emit PlayerJoined(gameId, msg.sender);
    }

    function makeMove(uint256 gameId, uint8 x, uint8 y) public {
        Game storage game = games[gameId];
        _makeMove(gameId, game, x, y);
        nextPlayer(game);
    }

    function makeFinalMove(uint256 gameId, uint8 x, uint8 y, uint8 x1, uint8 y1, Direction direction) public {
        Game storage game = games[gameId];
        _makeMove(gameId, game, x, y);
        validateFinal(gameId, x1, y1, direction);

        Result result;
        if (game.turn == Player.One) {
            result = Result.PlayerOneWon;
        } else {
            result = Result.PlayerTwoWon;
        }
        game.result = Result.PlayerTwoWon;

        bool minted = IMintedBurnableERC20(prizeToken).mint(currentPlayer(game), 1);
        if (!minted) {
            revert MintingFailed();
        }

        emit GameOver(gameId, result);
    }

    function getGameBoard(uint256 gameId, uint8 x, uint8 y) public view returns (Player) {
        return games[gameId].board[x][y];
    }

    function setPrizeToken(address _prizeToken) external onlyOwner {
        prizeToken = _prizeToken;
        emit PrizeTokenSet(_prizeToken);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function _makeMove(uint256 gameId, Game storage game, uint8 x, uint8 y) private {
        if (game.result != Result.None) {
            revert GameAlreadyFinished(gameId);
        }
        address current = currentPlayer(game);
        if (current != msg.sender) {
            revert NotYourTurn(gameId, current);
        }

        if (game.board[x][y] != Player.None) {
            revert SpaceOccupied(gameId, x, y);
        }
        Player player = game.turn;
        game.board[x][y] = player;

        emit MadeMove(gameId, x, y, player);
    }

    function validateFinal(uint256 gameId, uint8 x, uint8 y, Direction direction) private view {
        Game storage game = games[gameId];
        Player turn = game.turn;

        for (uint8 i = 0; i < rowToFinish; i++) {
            if (game.board[x][y] != turn) {
                revert NotFinal(gameId, i);
            }
            if (direction == Direction.Down || direction == Direction.LeftDown || direction == Direction.RightDown) {
                y++;
            }
            if (direction == Direction.Right || direction == Direction.RightDown) {
                x++;
            }
            if (direction == Direction.LeftDown) {
                x--;
            }
        }
    }

    function currentPlayer(Game storage game) private view returns (address) {
        if (game.turn == Player.One) {
            return game.playerOne;
        }
        if (game.turn == Player.Two) {
            return game.playerTwo;
        }
        return address(0);
    }

    function nextPlayer(Game storage game) private {
        if (game.turn == Player.One) {
            game.turn = Player.Two;
        } else if (game.turn == Player.Two) {
            game.turn = Player.One;
        } else {
            revert();
        }
    }
}
