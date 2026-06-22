// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "./libraries/Int256Utils.sol";
import "./interfaces/IGradualRelease.sol";

contract GradualRelease is IGradualRelease, ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using Int256Utils for uint256;

    address public immutable MYX;
    uint256 public immutable DELAY_UNTIL;
    uint256 public immutable TOTAL_AMOUNT;
    uint256 public immutable TIME_LOCK;

    address public gov;
    uint256[] public releaseTimes;
    uint256 public claimedAmount;
    mapping(bytes32 => bool) public queuedTransactions;

    modifier onlyGov() {
        require(msg.sender == gov || msg.sender == owner(), "onlyGov");
        _;
    }

    constructor(
        address _myx,
        address _owner,
        uint256 _delayUntil,
        uint256 _totalAmount,
        uint256 _timeLock,
        uint256[] memory _releaseTimes
    ) Ownable(_owner) {
        require(_myx != address(0), "Invalid token address");
        require(_delayUntil > block.timestamp, "Delay Until must be the future time");
        require(_releaseTimes.length > 0, "Release times required");

        MYX = _myx;
        DELAY_UNTIL = _delayUntil;
        TOTAL_AMOUNT = _totalAmount;
        TIME_LOCK = _timeLock;
        gov = _owner;
        releaseTimes =  _releaseTimes;
    }

    function isDelay() public view returns (bool){
        return block.timestamp < DELAY_UNTIL;
    }

    function canClaimAmount() public view returns (uint256){
        uint256 releasedCount;
        for (uint256 i = 0; i < releaseTimes.length; i++) {
            if (block.timestamp >= releaseTimes[i]){
                releasedCount++;
            }
        }
        return TOTAL_AMOUNT * releasedCount / releaseTimes.length  - claimedAmount;
    }

    function setGov(address _gov) external onlyOwner {
        address old = gov;
        gov = _gov;
        emit UpdateGovAddress(msg.sender, old, _gov);
    }

    function claimToken(
        uint256 amount,
        address receiver
    ) public nonReentrant onlyGov {
        require(!isDelay(), "claimToken: Delaying.");
        require(amount <= canClaimAmount(), "claimToken: Insufficient released tokens.");

        claimedAmount += amount;
        IERC20(MYX).safeTransfer(receiver, amount);

        emit Withdrew(MYX, amount, msg.sender, receiver);
    }


    function urgentRelease(
        address receiver,
        uint256 eta
    ) public onlyOwner {
        require(
            eta >= block.timestamp + TIME_LOCK,
            "urgentRelease: Estimated execution block must satisfy delay."
        );

        bytes32 hash = keccak256(abi.encode(MYX, receiver, eta));
        queuedTransactions[hash] = true;

        emit UrgentRelease(hash, MYX, receiver, eta);
    }

    function cancelUrgentRelease(
        address receiver,
        uint256 eta
    ) public onlyOwner {
        bytes32 hash = keccak256(abi.encode(MYX, receiver, eta));
        queuedTransactions[hash] = false;

        emit CancelUrgentRelease(hash, MYX, receiver, eta);
    }

    function executeUrgentRelease(
        address receiver,
        uint256 eta
    ) public onlyOwner {
        bytes32 hash = keccak256(abi.encode(MYX, receiver, eta));
        require(queuedTransactions[hash], "Transaction hasn't been queued.");
        require(block.timestamp >= eta, "Transaction hasn't surpassed time lock.");

        queuedTransactions[hash] = false;
        _urgentClaim(receiver);

        emit ExecuteUrgentRelease(hash, MYX, receiver, eta);
    }

    function _urgentClaim(address receiver) internal {
        require(receiver != address(0), "Invalid recipient address");

        uint256 amount = IERC20(MYX).balanceOf(address(this));
        require(amount > 0, "_urgentClaim: No tokens available to claim.");

        claimedAmount += amount;
        IERC20(MYX).safeTransfer(receiver, amount);

        emit Withdrew(MYX, amount, msg.sender, receiver);
    }


}