pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

struct UserRecord {
    uint256 recordId;
    uint256 totalReward; // total amount of tokens recieved as reward
    uint256 amountStaked;
    uint256 lockPeriod;
    uint256 depositDateInSeconds;
    address payable user;
    bool hasWithdrawn;
}

struct RecordIndex {
    bool exists;
    uint256 index;
}

interface IStaking {
    function getLengthOfUserRecords() external view returns (uint256);

    function getUserRecordByAddress(address _user)
        external
        view
        returns (
            uint256 recordId,
            uint256 totalReward,
            uint256 amountStaked,
            uint256 lockPeriod,
            uint256 depositDateInSeconds,
            address user,
            bool hasWithdrawn
        );

    //function getUserRecords() external view returns (UserRecord [] memory);
    function getUserRecordById(uint256 _recordId)
        external
        view
        returns (
            uint256 recordId,
            uint256 totalReward,
            uint256 amountStaked,
            uint256 lockPeriod,
            uint256 depositDateInSeconds,
            address user,
            bool hasWithdrawn
        );

    function getLockPeriodList() external view returns (uint256[] memory);

    function getLockPeriodListLength() external view returns (uint256);

    function getUserRecordByIndex(uint256 index)
        external
        view
        returns (
            uint256 recordId,
            uint256 totalReward,
            uint256 amountStaked,
            uint256 lockPeriod,
            uint256 depositDateInSeconds,
            address payable user,
            bool hasWithdrawn
        );

    function getRecordIndex(address user) external view returns (uint256);

    function stake(uint256 amount, uint256 _lockPeriod)
        external
        returns (uint256);

    function withdraw(uint256 depositRecordId) external;
}
