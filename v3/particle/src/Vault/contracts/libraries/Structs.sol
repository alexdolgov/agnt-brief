// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

struct VariableRatePrincipal {
    uint256 principal; // the principal amount
    uint256 principalTimespan; // principal amount across time (for yield estimation)
    uint256 checkpointTimestamp; // the deposit timestamp
}

struct RateMapping {
    uint256 s1; // slope of chunk 1
    uint256 s2; // slope of chunk 2
    uint256 s3; // slope of chunk 3
    uint256 r1; // ratio cutoff between chunk 1 and 2
    uint256 r2; // ratio cutoff between chunk 2 and 3
}

struct FixedRateTerm {
    address owner; // the owner of the deposit
    uint256 principal; // the principal amount
    uint256 yield; // the yield amount, locked at deposit time, released over time until maturity
    uint256 maturityTimestamp; // the maturity timestamp
}

struct VariableRateTerm {
    uint256 principal; // the principal amount
    uint256 mintTimestamp; // the timestamp at the deposit mint
}
