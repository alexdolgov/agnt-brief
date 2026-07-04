// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin/token/ERC20/IERC20.sol";
import "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import "openzeppelin/security/ReentrancyGuard.sol";
import "openzeppelin/access/Ownable.sol";
import "openzeppelin/utils/cryptography/ECDSA.sol";
import "openzeppelin/utils/math/Math.sol";

contract OverflowICO is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    IERC20 public salesToken;
    uint256 public immutable moneyToRaise;
    uint256 public immutable startTime;
    uint256 public immutable endTime;
    uint256 public immutable minCommit;
    uint256 public immutable cap;

    bool public finished;
    bool public distributed;

    uint256 public totalCommitments;
    uint256 public tokensToDistribute;

    mapping(address => uint256) public commitments;
    mapping(address => bool) public refunded;
    mapping(address => bool) public claimed;

    event Commit(address indexed buyer, uint256 amount);
    event Claim(address indexed buyer, uint256 amount);
    event Refund(address indexed buyer, uint256 amount);

    constructor(
        uint256 _moneyToRaise,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _minCommit,
        uint256 _cap
    ) {
        require(
            _startTime >= block.timestamp,
            "Start time must be in the future."
        );
        require(
            _endTime > _startTime,
            "End time must be greater than start time."
        );
        require(_moneyToRaise > 0, "money to raise should be greater than 0");
        moneyToRaise = _moneyToRaise;
        minCommit = _minCommit;
        startTime = _startTime;
        endTime = _endTime;
        cap = _cap;
    }

    function commit() external payable nonReentrant {
        require(
            block.timestamp >= startTime && block.timestamp < endTime,
            "Can only deposit during the sale period."
        );

        commitments[msg.sender] += msg.value;
        require(commitments[msg.sender] <= cap, "Cap exceeded");
        require(commitments[msg.sender] >= minCommit, "below minimum commitment");
        totalCommitments += msg.value;
        emit Commit(msg.sender, msg.value);
    }

    function claimable(address user) public view returns (uint256, uint256) {
        if (commitments[user] == 0) return (0, 0);
        uint256 moneyToSpend = Math.min(
            commitments[user],
            (commitments[user] * moneyToRaise) / totalCommitments
        );
        uint256 moneyToRefund = commitments[user] - moneyToSpend;
        uint256 tokensToReceive = distributed
            ? (tokensToDistribute * moneyToSpend) / moneyToRaise
            : 0;
        return (moneyToRefund, tokensToReceive);
    }

    function refund() external nonReentrant {
        require(
            block.timestamp >= endTime,
            "Can only claim tokens after the sale has ended."
        );
        require(
            commitments[msg.sender] > 0,
            "You have not deposited any Ether."
        );
        require(!refunded[msg.sender], "Already refunded.");
        refunded[msg.sender] = true;

        if (!finished) finish();

        (uint256 moneyAmount, ) = claimable(msg.sender);
        (bool success, ) = msg.sender.call{value: moneyAmount}("");
        require(success, "failed to send Ether");
        emit Refund(msg.sender, moneyAmount);
    }

    function claim() external nonReentrant {
        require(distributed, "Not claimable yet");
        require(
            commitments[msg.sender] > 0,
            "You have not deposited any Ether."
        );
        require(!claimed[msg.sender], "Already claimed.");
        claimed[msg.sender] = true;

        if (!finished) finish();

        (, uint256 tokenAmount) = claimable(msg.sender);
        salesToken.safeTransfer(msg.sender, tokenAmount);
        emit Claim(msg.sender, tokenAmount);
    }

    function finish() public {
        require(
            block.timestamp >= endTime,
            "Can only finish after the sale has ended."
        );
        require(!finished, "Already finished.");
        finished = true;

        (bool success, ) = owner().call{
            value: Math.min(moneyToRaise, totalCommitments)
        }("");
        require(success, "failed to send Ether");
    }

    function distribute(IERC20 salesToken_, uint256 amount) external onlyOwner {
        require(!distributed, "already distributed");
        distributed = true;
        salesToken = salesToken_;
        salesToken.safeTransferFrom(msg.sender, address(this), amount);
        tokensToDistribute = amount;
    }

    receive() external payable {
        revert();
    }
}
