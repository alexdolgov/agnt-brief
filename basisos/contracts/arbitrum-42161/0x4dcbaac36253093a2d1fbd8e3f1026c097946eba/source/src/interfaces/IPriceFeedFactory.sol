// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IPriceFeedFactory {
    struct BasicReport {
        bytes32 feedId; // The feed ID the report has data for
        uint32 validFromTimestamp; // Earliest timestamp for which price is applicable
        uint32 observationsTimestamp; // Latest timestamp for which price is applicable
        uint192 nativeFee; // Base cost to validate a transaction using the report, denominated in the chain’s native token (WETH/ETH)
        uint192 linkFee; // Base cost to validate a transaction using the report, denominated in LINK
        uint32 expiresAt; // Latest timestamp where the report can be verified on-chain
        int192 price; // DON consensus median price, carried to 18 decimal places
    }

    function verifySignedReport(bytes calldata signedReport, bool isNativeFee) external returns (BasicReport memory);
}
