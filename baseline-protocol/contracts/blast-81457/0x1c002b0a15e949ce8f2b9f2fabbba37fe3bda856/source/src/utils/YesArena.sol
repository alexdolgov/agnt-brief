// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {Owned} from "solmate/auth/Owned.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {BlastClaimer} from "src/utils/BlastClaimer.sol";


contract YesArena is Owned {
    using FixedPointMathLib for uint256;

    // events/errors
    event Deposited(address indexed user, uint256 indexed depositNumber, uint256 indexed amount, string graffiti);
    event Claim( address indexed user, uint256 indexed amount);

    error GameAlreadyStarted();
    error GameNotStarted();
    error AlreadyWinner();
    error Paused();
    error AlreadyClaimed();
    error GameEnded();
    error NotClaimable();
    error DepositPriceTooHigh();

    // deps
    ERC20 public immutable YES;
    address public afterburner = 0x677106B51c025391f7C5c0cCC7C37f15E95f1A32;

    // params
    uint256 public immutable FEE_RATE;
    uint256 public immutable GROWTH_RATE;
    uint256 public immutable INITIAL_GAME_TIME;

    // state
    bool public started;
    bool public claimed;
    bool public paused;
    uint256 public startTime;
    uint256 public totalGameTime;
    uint256 public timeIncrement;
    uint256 public depositPrice;
    uint256 public depositNumber;
    address public winner;

    constructor(
        address _YES,
        uint256 _initialDepositPrice,
        uint256 _feeRate,
        uint256 _growthRate,
        uint256 _initialGameTime,
        uint256 _timeIncrement,
        address _blast,
        address _blastGovernor
    ) Owned(msg.sender) {
        YES = ERC20(_YES);
        depositPrice = _initialDepositPrice;
        FEE_RATE = _feeRate;
        GROWTH_RATE = _growthRate;
        INITIAL_GAME_TIME = _initialGameTime;
        timeIncrement = _timeIncrement;

        if (_blast != address(0)) {
            BlastClaimer.configure(_blast, _blastGovernor);
        }
    }

    function begin() external onlyOwner {
        if (started) revert GameAlreadyStarted();
        startTime = block.timestamp;
        totalGameTime = INITIAL_GAME_TIME;
        started = true;
    }

    function deposit(uint256 _maxDeposit, string memory _graffiti) external {
        // validations
        if (paused) revert Paused();
        if (!started) revert GameNotStarted();
        if (msg.sender == winner) revert AlreadyWinner();
        if (block.timestamp > startTime + totalGameTime) revert GameEnded();
        if (depositPrice > _maxDeposit) revert DepositPriceTooHigh();

        // pull YES first
        uint256 price = depositPrice;
        YES.transferFrom(msg.sender, address(this), price);
        YES.transfer(afterburner, price.mulWad(FEE_RATE));

        // internal state
        winner = msg.sender;
        depositNumber++;
        depositPrice = price.mulWad(GROWTH_RATE);

        // increment the totalGameTime if we are past the initial game time
        uint256 timeLeft = startTime + totalGameTime - block.timestamp;
        if (timeLeft < INITIAL_GAME_TIME) {
            totalGameTime += FixedPointMathLib.min(
                timeIncrement,
                INITIAL_GAME_TIME - timeLeft
            );
        }

        // emit the deposit event
        emit Deposited(msg.sender, depositNumber, price, _graffiti);
    }


    function claim() external onlyOwner {
        if (paused) revert Paused();
        if (!started) revert GameNotStarted();
        if (claimed) revert AlreadyClaimed();
        if (block.timestamp < startTime + totalGameTime) revert NotClaimable();

        claimed = true;

        uint256 jackpot = YES.balanceOf(address(this));

        YES.transfer(winner, jackpot);

        emit Claim(winner, jackpot);
    }

    function setTimeIncrement(uint256 _timeIncrement) external onlyOwner {
        timeIncrement = _timeIncrement;
    }

    function updateAfterburner(address _afterburner) external onlyOwner {
        afterburner = _afterburner;
    }

    function emergencyWithdraw(address _token, uint256 _amount) external onlyOwner {
        ERC20(_token).transfer(owner, _amount);
    }

    function setPaused(bool _paused) external onlyOwner {
        paused = _paused;
    }

}

