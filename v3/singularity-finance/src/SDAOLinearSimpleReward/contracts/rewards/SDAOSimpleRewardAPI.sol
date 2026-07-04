// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

// Interface for holding and managing emission of rewards for single reward token
// - reward contract can collect accrued reward tokens
interface SDAOSimpleRewardAPI {

    event UpdatedRewardEmission(uint256 amount, uint256 start, uint256 end);
    event ReservedForUser(address user, address token, uint256 rewards);
    event ClaimedByUser(address user, address token, uint256 amount);
    event CommissionFromUser(address user, address token, uint256 amount);



    struct UserInfo {
        uint256 shares; // user shares
        uint256 rewardFloor; // reward floor to calculate pending
        uint256 reserved; // reserved for user
    }
    
    struct RewardTokenInfo {
          address rewardToken; // token to be distributed as rewards
          uint256 balance; // total claimed and held for reward contract to collect
          uint256 totalAmount; // total amount to be distributed during emissionPeriod
          uint256 emissionPeriod; // emission period in seconds to distribute these reward tokens
          uint256 startOfEmission; // start time of emissions
          uint256 endOfEmission; // last time when these rewards are emitted
          uint256 lastClaim; // last time when rewards have been claimed
    }

    function depositContract() external view returns (address);
    function rewardToken() external view returns (address);
    function getRewardInfo() external view returns (RewardTokenInfo memory);
    
    function changeUserShares(address _user, uint256 _newShares) external;
    function pendingForUser(address _user) external view returns (uint256 pendingRewards);
    function claimableForUser(address _user) external view returns (uint256 claimable);
    function claimForUser(address _user) external returns (uint256 claimed);
}
