// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

import {EnumerableSet} from '@openzeppelin-contracts/utils/structs/EnumerableSet.sol';

struct PosInfo {
    uint collCredit_e36;
    uint borrCredit_e36;
    uint health_e18;
    uint16 mode;
    address viewer;
    address owner;
}
/// @title Init Lens Interface

interface IInitLens {
    /// @dev get hook's user position info
    /// @param _hook hook address
    /// @param _user user address
    /// @param _posId hook's position id
    /// @return posInfo position info
    function getPosInfo(address _hook, address _user, uint _posId) external returns (PosInfo memory posInfo);

    /// @dev get mode's pool borrowable amount
    /// @param _mode mode
    /// @param _pool pool address
    /// @return borrowableAmt borrowable amount for the pool of the mode
    function modeBorrowableAmt(uint16 _mode, address _pool) external returns (uint borrowableAmt);

    /// @dev get position's pool borrowable amount
    /// @param _hook hook address
    /// @param _user user address
    /// @param _posId hook's position id
    /// @param _pool pool address
    /// @return borrowableAmt borrowable amount for the pool of the position
    function posBorrowableAmt(address _hook, address _user, uint _posId, address _pool)
        external
        returns (uint borrowableAmt);

    /// @dev get position info from viewer with index
    /// @param _viewer position viewer
    /// @param _index viewer's index
    /// @return posInfo position info
    function viewerPosInfoAt(address _viewer, uint _index) external returns (PosInfo memory posInfo);

    /// @dev get list of position info from viewer with list of indices
    /// @param _viewer position viewer
    /// @param _indices list of viewer's indices
    /// @return posInfos list of position info
    function viewerPosInfos(address _viewer, uint[] calldata _indices) external returns (PosInfo[] memory posInfos);
}
