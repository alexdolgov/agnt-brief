pragma solidity 0.8.19;

interface IStakedVectorETH {
    function stake(uint256 _amount) external;
    function unstake(uint256 _share) external;
}