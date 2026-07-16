// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IChronicleVAO_Centrifuge_JAAA_Reader {
    /// @notice Returns the oracle's current value.
    /// @dev Reverts if:
    ///      - Not yet poked
    /// @return val The oracle's current value.
    function read() external view returns (uint val);

    /// @notice Returns the oracle's current value.
    /// @return ok True if previously poked, false otherwise.
    /// @return val The oracle's current value if it exists, zero otherwise.
    function tryRead() external view returns (bool ok, uint val);

    /// @notice Returns the oracle's current value and its age.
    /// @dev Reverts if:
    ///      - Not yet poked
    /// @return val The oracle's current value.
    /// @return age The value's age.
    function readWithAge() external view returns (uint val, uint age);

    /// @notice Returns the oracle's current value and its age.
    /// @return ok True if previously poked, false otherwise.
    /// @return val The oracle's current value if it exists, zero otherwise.
    /// @return age The value's age if value exists, zero otherwise.
    function tryReadWithAge()
        external
        view
        returns (bool ok, uint val, uint age);
}
