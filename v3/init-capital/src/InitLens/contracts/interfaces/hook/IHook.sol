// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

interface IHook {
    /// @dev get last user's position id
    /// @param _user user address
    /// @return posId last user's position id
    function lastPosIds(address _user) external view returns (uint posId);

    /// @dev get the init position id (nft id)
    /// @param _user user address
    /// @param _posId position id
    /// @return initPosId init position id (nft id)
    function initPosIds(address _user, uint _posId) external view returns (uint initPosId);
}
