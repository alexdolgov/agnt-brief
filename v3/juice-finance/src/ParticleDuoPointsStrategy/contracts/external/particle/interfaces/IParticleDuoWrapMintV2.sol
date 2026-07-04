// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

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

/// @notice CoreRef interface
interface IParticleDuoVault {
    ///////////////////
    // CORE REF
    ///////////////////
    function emergency() external view returns (bool);
    function startEmergency() external;
    function stopEmergency() external;

    /////////////
    // VAULT
    /////////////
    function MATURITY() external view returns (uint256);
    function positionFeeRate() external view returns (uint256);
    function rateMapping() external view returns (RateMapping memory);
}

/// @notice Interface for Particle Duo Fixed Rate Contract that is initialized by WrapMintV2
interface IParticleDuoFixedRate {
    function id() external view returns (uint256);
    function principal() external view returns (uint256);
    function yield() external view returns (uint256);
    function maturityTimestamp() external view returns (uint256);
}

/// @dev https://github.com/Particle-Platforms/vault-contract/blob/main/contracts/periphery/WrapMintV2.sol
interface IParticleDuoWrapMintV2 {
    function TOKEN() external view returns (address);
    function VAULT() external view returns (address);
    function duoAssetToken() external view returns (address);

    /**
     * @notice mint a fixed rate contract (represented as NFT), input with ERC20 token
     * @dev all principals are segregated into individual fixedRateContract (nontransferrable) controlled by LPs, for
     * better security
     */
    function mintFixedRate(
        address exchange,
        address token,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 minLockedYield,
        bytes calldata data
    )
        external
        returns (address fixedRateContract, uint256 amountOut, uint256 lockedYield);

    /**
     * @notice mint a fixed rate contract (represented as NFT), input with ETH
     */
    function mintFixedRateEth(
        address exchange,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 minLockedYield,
        bytes calldata data
    )
        external
        payable
        returns (address fixedRateContract, uint256 amountOut, uint256 lockedYield);

    /**
     * @notice burn a fixed rate contract, together with asset token, receiving principal and yield
     * @param fixedRate the fixed rate contract to burn
     * @param amount the amount of fixed rate contract to burn
     * @return yieldToUnlock the amount of yield to unlock
     * @return yieldToRelease the amount of yield to release
     */
    function burnFixedRate(
        address fixedRate,
        uint256 amount
    )
        external
        returns (uint256 yieldToUnlock, uint256 yieldToRelease);

    /**
     * @notice withdraw the principal of fixed rate contract, at emergency, bypassing vault
     * @param fixedRate the fixed rate contract to withdraw
     * @param amount the amount of principal to withdraw
     */
    function withdrawFixedRate(address fixedRate, uint256 amount) external;
}
