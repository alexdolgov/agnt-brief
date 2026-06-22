// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

interface IBucketTracker {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event DividendsDistributed(address indexed from, uint256 weiAmount);
    event DividendWithdrawn(address indexed to, uint256 weiAmount);
    event Claim(address indexed account, uint256 amount);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint256);
    function totalDividendsDistributed() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function owner() external view returns (address);
    function distributeDividends(uint256 amount) external;
    function withdrawableDividendOf(address _owner) external view returns (uint256);
    function withdrawnDividendOf(address _owner) external view returns (uint256);
    function accumulativeDividendOf(address _owner) external view returns (uint256);
    function getAccount(address _account)
        external
        view
        returns (address account, uint256 withdrawableDividends, uint256 totalDividends, uint256 lastClaimTime);
    function setBalance(address account, uint256 newBalance) external;
    function processAccount(address account) external returns (bool);

    /// @dev Derived from storage variables marked public
    function lastClaimTimes(address) external view returns (uint256);
    function trackerOwner() external view returns (address);
    function esXaiAddress() external view returns (address);
}
