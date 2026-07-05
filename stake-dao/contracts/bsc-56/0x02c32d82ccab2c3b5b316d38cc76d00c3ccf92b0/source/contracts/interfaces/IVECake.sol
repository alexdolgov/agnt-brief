// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVECake {
    /// @notice Return the voting weight of a givne user
    /// @param _user The address of a user
    function balanceOf(address _user) external view returns (uint256);

    function delegator(address _user)
        external
        view
        returns (
            uint104,
            uint104,
            uint40,
            uint8
        );

    function whitelistedCallers(address _user) external view returns (bool);
}
