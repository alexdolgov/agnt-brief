// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

interface IVesting {
    struct UserVestingInfo {
        uint256 amount;
        uint256 start;
        uint256 claimed;
        uint256 vestingCliffSnapshot;
        uint256 vestingPeriodSnapshot;
    }

    event VestingCliffChanged(uint256 newValue);
    event VestingPeriodChanged(uint256 newValue);

    event VestedTokens(address indexed user, uint256 amount);
    event Claimed(address indexed user, uint256 vestingId, uint256 amount);

    function TOKEN() external view returns (address);
    function vestingCliff() external view returns (uint256);
    function vestingPeriod() external view returns (uint256);

    function vestTokensFor(address user, uint256 amount) external;
    function claimAll() external;
    function claim(uint256 vestingId) external;
    function claimableTotal(address user) external view returns(uint256 total);
    function claimable(
        address user,
        uint256 vestingId
    ) external view returns (uint256);
    function userVestingInfo(
        address user
    ) external view returns (UserVestingInfo[] memory);
}
