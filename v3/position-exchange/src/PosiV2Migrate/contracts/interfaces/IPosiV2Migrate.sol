interface IPosiV2Migrate {
    function isMigrated(address account) external view returns (bool);
    function convertRate() external view returns (uint256);
    function setIsMigrated(address account, bool value) external;
}