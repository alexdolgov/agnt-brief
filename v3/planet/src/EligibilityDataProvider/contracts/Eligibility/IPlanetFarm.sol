// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IPlanetFarm {
    /**
     * @notice This function provides a list of pool IDs and corresponding shares for a given user. 
     * It is used by the eligibility data provider to calculate whether or not the user is eligible
     * @param _user The address of the user whose pool data is being queried
     * @return usersPoolList array of pool IDs (`uint256[]`) that the user participates in
     *@return userSharesList array of corresponding shares (`uint256[]`) the user holds in each of those pools
     */
    function getUserAccountData(address _user) external view returns (uint256[] memory usersPoolList, uint256[] memory userSharesList);
}