// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {BeatPot} from "./BeatPot.sol";


contract BeatPotWithdrawalQueue  {
    using SafeERC20 for IERC20;


    struct WithdrawalRequest {      
        uint256 sharesAmount;
        bool isWithdrawn;
    }

    BeatPot public beatpot;
    IERC20 public token;
    mapping (uint256 => uint256) public withdrawalShares; // round id => shares
    mapping (uint256 => uint256) public totalWithdrawalAmount; // round id => total withdrawal amount sent by the beatpot contract
    mapping (uint256 => mapping (address => WithdrawalRequest)) public withdrawalRequests; // round id => player address => withdrawal request

    event WithdrawalRequested(address indexed user, uint256 indexed roundId, uint256 sharesAmount);
    event WithdrawalClaimed(address indexed user, uint256 indexed roundId, uint256 tokenAmount);
    event TotalWithdrawalAmountUpdated(uint256 indexed roundId, uint256 totalAmount);


    error InvalidSharesAmount();
    error OnlyBeatPot();
    error WithdrawalAlreadyClaimed();
    error RoundNotCompleted();
    
    modifier onlyBeatPot() {
        if (msg.sender != address(beatpot)) revert OnlyBeatPot();
        _;
    }

    constructor(address _beatpot) {
        beatpot = BeatPot(_beatpot);
        token = beatpot.token();
    }

    function requestWithdrawal(uint256 _sharesAmount) external{
        uint256 roundId = beatpot.roundId();
        WithdrawalRequest storage withdrawalRequest = withdrawalRequests[roundId][msg.sender];

        if (_sharesAmount == 0) revert InvalidSharesAmount();

       withdrawalRequest.sharesAmount += _sharesAmount;
       withdrawalShares[roundId] += _sharesAmount;
       IERC20(address(beatpot)).safeTransferFrom(msg.sender, address(this), _sharesAmount);
       emit WithdrawalRequested(msg.sender, roundId, withdrawalRequest.sharesAmount);
    }

    function claimWithdrawal(uint256 _roundId) external{
        uint256 currentRoundId = beatpot.roundId();
        if (currentRoundId <= _roundId) revert RoundNotCompleted();
        WithdrawalRequest storage withdrawalRequest = withdrawalRequests[_roundId][msg.sender];

        if (withdrawalRequest.isWithdrawn) revert WithdrawalAlreadyClaimed();

        withdrawalRequest.isWithdrawn = true;
        uint256 tokenAmount = totalWithdrawalAmount[_roundId] * withdrawalRequest.sharesAmount / withdrawalShares[_roundId];
        token.safeTransfer(msg.sender, tokenAmount);
        emit WithdrawalClaimed(msg.sender, _roundId, tokenAmount);
    }

    function updateTotalWithdrawalAmount(uint256 _roundId, uint256 _amount) external onlyBeatPot{
        beatpot.burnShares(address(this), withdrawalShares[_roundId]);
        totalWithdrawalAmount[_roundId] += _amount;
        emit TotalWithdrawalAmountUpdated(_roundId, _amount);
    }
}