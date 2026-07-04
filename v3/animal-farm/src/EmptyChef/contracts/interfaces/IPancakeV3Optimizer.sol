interface IPancakeV3Optimizer {
    function totalSupply() external view returns (uint256);

    function shareCount(address) external view returns (uint256);
}
