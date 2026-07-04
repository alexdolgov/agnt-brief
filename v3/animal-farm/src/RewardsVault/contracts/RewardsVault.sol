pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";

import "hardhat/console.sol";

contract RewardsVault is Ownable {

    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public immutable pigsTokenAddress;

    uint256 public lastPayout;
    uint256 public payoutRate = 3; //3% a day
    uint256 public distributionInterval = 3600;

    // Events
    event RewardsDistributed(uint256 rewardAmount);
    event UpdatePayoutRate(uint256 payout);
    event UpdateDistributionInterval(uint256 interval);

    constructor(address _pigsTokenAddress){
        pigsTokenAddress = _pigsTokenAddress;
        lastPayout = block.timestamp;
    }

    function payoutDivs() public {
        uint256 dividendBalance = IERC20(busdCurrencyAddress).balanceOf(address(this));

        if (block.timestamp - lastPayout > distributionInterval && dividendBalance > 0) {

            //A portion of the dividend is paid out according to the rate
            uint256 share = dividendBalance * payoutRate / 100 / 24 hours;
            //divide the profit by seconds in the day
            uint256 profit = share * (block.timestamp - lastPayout);

            if (profit > dividendBalance){
                profit = dividendBalance;
            }

            lastPayout = block.timestamp;

            IERC20(busdCurrencyAddress).transfer(pigsTokenAddress, profit);

            emit RewardsDistributed(profit);

        }
    }

    function updatePayoutRate(uint256 _newPayout) external onlyOwner {
        require(_newPayout < 100, 'invalid payout rate');
        payoutRate = _newPayout;
        emit UpdatePayoutRate(payoutRate);
    }

    function updateDistributionInterval(uint256 _newInterval) external onlyOwner {
        require(_newInterval > 0 && _newInterval < 24 hours, 'invalid interval');
        distributionInterval = _newInterval;
        emit UpdateDistributionInterval(distributionInterval);
    }

}