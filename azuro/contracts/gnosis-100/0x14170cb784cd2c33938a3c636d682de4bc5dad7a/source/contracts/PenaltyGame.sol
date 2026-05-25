// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.18;

import "./interface/IVRFConsumer.sol";
import "./interface/IVRFCoordinator.sol";
import "./libraries/FixedMath.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";

contract PenaltyGame is OwnableUpgradeable, IVRFConsumer {
    using FixedMath for *;

    struct Game {
        address player;
        uint256 betAmount;
    }

    event GameEnded(
        uint256 indexed gameId,
        address indexed player,
        uint256 winnings
    );
    event GameStarted(
        uint256 indexed gameId,
        address indexed player,
        uint256 betAmount
    );
    event LiquidityWithdrawn(uint256 amount);
    event MinBetChanged(uint256 newMinBet);

    error ExceededMaximumMovesLimit(uint256 have, uint256 maxMovesCount);
    error IncorrectDataLengthForGameMoves(uint256 have, uint256 maxMovesCount);
    error InsufficientAvailableLiquidity(
        uint256 have,
        uint256 avaliableLiquidity
    );
    error InsufficientBetAmount(uint256 have, uint256 minBet);
    error GameNotFound(uint256 gameId);
    error MinBetCantBeZero();

    uint256 public constant MAX_MOVES_COUNT = 5;
    uint256 public constant MOVE_SUCCESS_CHANCE = 500000000; // 50%

    mapping(uint256 => Game) public games;

    address public vrfCoordinator;
    address public payableToken;

    uint256 public minBet;
    uint256 public lockedLiquidity;

    function initialize(
        address vrfCoordinator_,
        address token_
    ) external initializer {
        __Ownable_init_unchained();
        vrfCoordinator = vrfCoordinator_;
        payableToken = token_;
        minBet = 1;
    }

    function changeMinBet(uint256 newMinBet) external onlyOwner {
        if (newMinBet == 0) revert MinBetCantBeZero();
        minBet = newMinBet;

        emit MinBetChanged(newMinBet);
    }

    function withdrawLiquidity(uint256 amount) external onlyOwner {
        _checkLiquidityAvailability(amount);
        _withdraw(msg.sender, amount);

        emit LiquidityWithdrawn(amount);
    }

    function fulfillRandomNumbers(
        uint256 requestId,
        uint256[] calldata randomNumbers
    ) external {
        if (msg.sender != vrfCoordinator) {
            revert OnlyCoordinatorCanFulfill(msg.sender, vrfCoordinator);
        }
        _resolveGame(requestId, randomNumbers);
    }

    function startGame(
        uint256 amount,
        IVRFCoordinator.ClientData[] calldata clientData
    ) external {
        if (clientData.length != MAX_MOVES_COUNT)
            revert IncorrectDataLengthForGameMoves(
                clientData.length,
                MAX_MOVES_COUNT
            );
        if (amount < minBet) revert InsufficientBetAmount(amount, minBet);

        _deposit(amount);
        _lockLiquidity(_getMaxPayout(amount));

        uint256 gameId = IVRFCoordinator(vrfCoordinator).requestRandomNumbers(
            clientData
        );
        games[gameId] = Game(msg.sender, amount);

        emit GameStarted(gameId, msg.sender, amount);
    }

    function getOdds(
        uint256 successfulMovesCount
    ) public pure returns (uint256) {
        if (successfulMovesCount > MAX_MOVES_COUNT)
            revert ExceededMaximumMovesLimit(
                successfulMovesCount,
                MAX_MOVES_COUNT
            );

        if (successfulMovesCount == 1) return 1800000000; // 1.8
        if (successfulMovesCount == 2) return 2600000000; // 2.6
        if (successfulMovesCount == 3) return 6200000000; // 6.2
        if (successfulMovesCount == 4) return 12400000000; // 12.4
        if (successfulMovesCount == 5) return 32600000000; // 32.6

        return 0;
    }

    function _deposit(uint256 amount) internal {
        TransferHelper.safeTransferFrom(
            payableToken,
            msg.sender,
            address(this),
            amount
        );
    }

    function _lockLiquidity(uint256 amount) internal {
        _checkLiquidityAvailability(amount);
        lockedLiquidity += amount;
    }

    function _resolveGame(
        uint256 gameId,
        uint256[] calldata randomNumbers
    ) internal {
        if (randomNumbers.length > MAX_MOVES_COUNT)
            revert IncorrectDataLengthForGameMoves(
                randomNumbers.length,
                MAX_MOVES_COUNT
            );

        Game memory game = _getGame(gameId);
        uint256 winnings;
        uint256 successfulMovesCount;
        while (
            successfulMovesCount < randomNumbers.length &&
            randomNumbers[successfulMovesCount] % FixedMath.ONE >=
            MOVE_SUCCESS_CHANCE
        ) ++successfulMovesCount;

        if (successfulMovesCount == randomNumbers.length) {
            winnings = getOdds(successfulMovesCount).mul(game.betAmount);
            _withdraw(game.player, winnings);
        }

        _unlockLiquidity(_getMaxPayout(game.betAmount));

        emit GameEnded(gameId, game.player, winnings);

        delete game;
    }

    function _withdraw(address to, uint256 amount) internal {
        TransferHelper.safeTransfer(payableToken, to, amount);
    }

    function _unlockLiquidity(uint256 amount) internal {
        lockedLiquidity -= amount;
    }

    function _checkLiquidityAvailability(uint256 amount) internal view {
        uint256 availableLiquidity = IERC20(payableToken).balanceOf(
            address(this)
        ) - lockedLiquidity;
        if (amount > availableLiquidity)
            revert InsufficientAvailableLiquidity(amount, availableLiquidity);
    }

    function _getGame(
        uint256 gameId
    ) internal view returns (Game storage game) {
        game = games[gameId];
        if (game.player == address(0)) revert GameNotFound(gameId);
    }

    function _getMaxPayout(uint256 betAmount) internal pure returns (uint256) {
        return betAmount.mul(getOdds(MAX_MOVES_COUNT));
    }
}
