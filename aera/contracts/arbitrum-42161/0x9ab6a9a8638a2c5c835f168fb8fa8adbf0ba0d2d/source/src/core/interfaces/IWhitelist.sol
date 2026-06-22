// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

interface IWhitelist {
    ////////////////////////////////////////////////////////////
    //                        Events                          //
    ////////////////////////////////////////////////////////////

    event WhitelistSet(address addr, bool isWhitelisted);

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Sets the addr whitelisted status
    /// @param addr The addr address
    /// @param isAddressWhitelisted The whitelisted status of the addr
    function setWhitelisted(address addr, bool isAddressWhitelisted) external;

    /// @notice Checks if the addr is whitelisted
    /// @param addr The addr address
    /// @return True if the addr is whitelisted, false otherwise
    function isWhitelisted(address addr) external view returns (bool);
}
