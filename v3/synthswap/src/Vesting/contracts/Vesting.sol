// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Vesting is Ownable {
    using SafeERC20 for IERC20;

    uint256 internal constant periodLength = 1 days;
    uint256 public constant dailyVest = 58219178080000000000;
    uint256 public constant dailyVestLength = 730;
    uint256 public totalShares;
    uint256 public immutable startDate;
    IERC20 internal immutable token;

    struct Recipient {
        uint256 withdrawnAmount;
        uint256 amountPerDay;
    }

    uint256 public totalRecipients;
    mapping(address => Recipient) public recipients;

    event LogRecipientAdded(address recipient, uint256 dailyShare);
    event LogTokensClaimed(address recipient, uint256 amount);

    modifier onlyValidShareAmount(uint256 _dailyShare) {
        require(
            _dailyShare <= dailyVest,
            "Provided _dailyShare should be less than dailyVest"
        );
        require(
            _dailyShare > 0,
            "Provided _dailyShare should be greater than 0"
        );
        _;
    }

    constructor(IERC20 _token) {
        addRecipient(
            0xa341709079B40BbD4Eba2940CE7b142a1C5c77C7,
            58219178080000000000
        );
        token = _token;
        startDate = block.timestamp + 1 days;
    }

    function percDiv(
        uint256 period,
        uint256 _share
    ) public pure returns (uint256) {
        return (period * _share);
    }

    function addRecipient(
        address _recipientAddress,
        uint256 _dailyShare
    ) public onlyOwner onlyValidShareAmount(_dailyShare) {
        require(
            _recipientAddress != address(0),
            "Recepient Address can't be zero address"
        );
        require(
            recipients[_recipientAddress].amountPerDay == 0,
            "Recipient already has values saved"
        );
        totalShares = totalShares + _dailyShare;
        require(totalShares <= dailyVest, "Total shares exceeds dailyShare");
        totalRecipients++;

        recipients[_recipientAddress] = Recipient(0, _dailyShare);
        emit LogRecipientAdded(_recipientAddress, _dailyShare);
    }

    function claim() external {
        require(startDate != 0, "The vesting hasn't started");
        require(block.timestamp >= startDate, "The vesting hasn't started");

        (uint256 owedAmount, uint256 calculatedAmount) = calculateAmounts();
        recipients[msg.sender].withdrawnAmount = calculatedAmount;
        token.safeTransfer(msg.sender, owedAmount);
        emit LogTokensClaimed(msg.sender, owedAmount);
    }

    function canClaim() public view returns (uint256) {
        if (block.timestamp <= startDate) {
            return 0;
        }

        (uint256 owedAmount, uint256 calculatedAmount) = calculateAmounts();
        return owedAmount;
    }

    function calculateAmounts()
        internal
        view
        returns (uint256 _owedAmount, uint256 _calculatedAmount)
    {
        uint256 period = (block.timestamp - startDate) / (periodLength);
        if (period >= dailyVestLength) {
            period = dailyVestLength;
        } else {
            unchecked {
                period = period + 1;
            }
        }
        _calculatedAmount = percDiv(
            period,
            recipients[msg.sender].amountPerDay
        );
        _owedAmount =
            _calculatedAmount -
            recipients[msg.sender].withdrawnAmount;

        return (_owedAmount, _calculatedAmount);
    }
}
