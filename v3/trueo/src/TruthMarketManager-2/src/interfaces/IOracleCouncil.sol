// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IOracleCouncil {
    /* ========== VIEWS / VARIABLES ========== */
    function isOracleCouncilMember(address _councilMember) external view returns (bool);

    function isMarketClosedForDisputes(address _market) external view returns (bool);

    function closeMarketForDisputes(address _market) external;

    function isMarketLastClosedDisputeExists(address _market) external view returns (bool);

    function getLastClosedDispute(address _market) external view returns (Dispute memory);

    function reopenMarketForDisputes(address _market) external;

    struct Dispute {
        address disputorAddress;
        string disputeString;
        uint256 disputeCode;
        uint256 disputeTimestamp;
        uint256 originalOutcomeFromResolver;
        uint256 winningPosition;
        bool isResolverPunished;
        bool isDisputorPunished;
    }
}
