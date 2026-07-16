// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for the YieldManager
interface IYieldManager {

    /// Sets the wanted affiliate
    /// @dev sets the value of the sponsor variable at a client object
    /// @param client the mapping entry point
    /// @param sponsor the address to set as a sponsor
    function setAffiliate(address client, address sponsor) external;

    /// Gets the factors for user and sponsor
    /// @dev returns the client and sponsor factors
    /// @param user the client to look up
    /// @param typer the type (sponsor or client mode)
    function getUserFactors(
        address user,
        uint typer
    ) external view returns (uint, uint, uint, uint);

    /// Gets the wanted affiliate
    /// @dev gets the value of the sponsor variable at a client object
    /// @param client the mapping entry point
    function getAffiliate(address client) external view returns (address);
}
