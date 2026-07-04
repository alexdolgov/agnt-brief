// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./interfaces/ILGE.sol";

contract UiDataProvider {
    uint256 public constant GRACE_PERIOD = 90 days;

    ILGE public immutable lge;
    uint256 public immutable lgeEnd; // 2 weeks after LGE start

    struct UserData {
        uint256 totalRaisedUsdt;
        uint256 totalHbrBought;
        uint256 totalOwed;
        uint256 pending;
        uint256 totalClaimed;
        uint256 userHbrLeft;
    }

    constructor(address _lge) {
        lge = ILGE(_lge);
        lgeEnd = lge.lgeEnd();
    }

    // @dev: this function is used to get the total claimed
    // @param user: the user's address
    function getTotalClaimed(address user) public view returns (uint256 totalClaimed) {
        (, uint256 claimed) = lge.userShares(user);
        totalClaimed = claimed;
    }

    // @dev: this function is used to get the user's Harbor left
    // @param user: the user's address
    function getUserHbrLeft(address user) public view returns (uint256 hbrLeft) {
        (, uint256 totalClaimed) = lge.userShares(user);
        hbrLeft = lge.totalOwed(user) - totalClaimed;
    }

    // @dev: this function is used to get the pending Harbor
    // @param user: the user's address
    function getPending(address user) public view returns (uint256 pending) {
        if (block.timestamp < lgeEnd + GRACE_PERIOD) {
            pending = 0; // prevents revert
        } else {
            pending = lge.pending(user);
        }
    }


    // @dev: this function is used to get the user's data
    // @param user: the user's address
    function getUserData(address user) public view returns (UserData memory userData) {
        userData.totalHbrBought = lge.hbrBought();
        userData.totalRaisedUsdt = lge.totalRaisedUsdt();
        userData.totalOwed = lge.totalOwed(user);
        userData.pending = getPending(user);
        userData.totalClaimed = getTotalClaimed(user);
        userData.userHbrLeft = getUserHbrLeft(user);
    }
}