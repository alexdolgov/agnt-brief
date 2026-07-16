// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IQuestion {
    /**
     * @dev Struct representing an external source.
     * @param noOfOracles The number of oracles involved in the external source.
     * @param rewardPerOracle The reward allocated for each oracle.
     * @param loyaltyFee The loyalty fee associated with the external source.
     * @param totalExternalSourceCost The total cost of the external source.
     * @param totalOracleReward The total reward for all oracles.
     * @param startTime The start time of the external source.
     * @param endTime The end time of the external source.
     * @param numberOfOptions The total number of options available for the external source.
     * @param externalSourceURI The URI containing the external source details.
     * @param creator The address of the creator of the external source.
     */
    struct ExternalSourceInfo {
        uint256 noOfOracles;
        uint256 rewardPerOracle;
        uint256 loyaltyFee;
        uint256 totalExternalSourceCost;
        uint256 totalOracleReward;
        uint256 startTime;
        uint256 endTime;
        uint256 numberOfOptions;
        string externalSourceURI;
        address creator;
    }

    function winnerOption() external returns (uint256);

    function timeExtended() external returns (uint256);

    function winnerFinalized() external returns (bool);

    function getExternalSource() external view returns (ExternalSourceInfo memory);

    function calculateWinnerReadOnly() external view returns (uint256 option, uint256 reward);

    function refund() external;
}
