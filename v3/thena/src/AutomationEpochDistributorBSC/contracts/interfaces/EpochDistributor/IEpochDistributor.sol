// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IEpochDistributor{
    struct EpochData {
        uint256 amount;         // total amount to distribute
        uint256 opBNBAmount;    // amount to send to opBNB
        uint256 totalWeights;   // total votes
        uint256 timestamp;      // the start of the epoch
        uint256 poolsLength;     // epoch pools (from 0 to poolsLength)
    }

    

    function checkUpKeep_BSC() external view returns(bool);
    function checkUpKeep_opBNB() external view returns(bool);
    function amountsPerEpoch(uint256 epoch) external view returns(EpochData memory);
    function currentEpoch() external view returns(uint256);
    function lastPool() external view returns(uint256);
    function distribute(uint256 batch) external; 
    function distribute(uint256 from, uint256 to, uint256 poolsLength, address[] calldata pools, uint256 totalAmount, uint256 totalWeights, uint256 timestamp) external;
    function distributeOpBNB() external payable;
    function cc_flag() external view returns(uint8);

    function estimateL0Fee() external view returns(uint256);
    function estimateCCIPFee() external view returns(uint256);
    function estimateZkBridgeFee() external view returns(uint256);
   
}
