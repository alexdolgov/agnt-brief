// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IUrmFortressTower {
    // Returns the tower's contribution to the Fortress defense calculation formula and URM supply accounting.
    function fortressData() external view returns (uint256 usdcPooled, uint256 usdcStored, uint256 urmPooled, uint256 urmStored, uint256 urmBorrowed);
    // called by Fortress to offer URM; tower returns how much it wants and whether to trigger sync
    function fortressPreSync(uint256 urmRequestable) external view returns (bool syncRequested, uint256 urmRequested);
    // called by Fortress after transferring URM to trigger sync; tower reads its own balance change
    // a URM request without a sync request is ignored; the Fortress only runs sync (and transfers URM) when syncRequested is true
    function fortressSync() external;
}
