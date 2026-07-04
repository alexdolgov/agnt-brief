// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

TransferBlocker.sol
Written by: mousedev.eth

Blocks transfer of tokens based on set requirements
*/

import "./SmolsAddressRegistryConsumer.sol";
import "./interfaces/ISchool.sol";

contract TransferBlocker is SmolsAddressRegistryConsumer {

    /// @dev Returns whether a token is currently transferrable.
    /// @param _collectionAddress The collection that this token belongs to.
    /// @return _tokenId The token to check.
    function isTransferrable(address _collectionAddress, uint256 _tokenId)
        external
        view
        returns (bool)
    {
        address schoolAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SCHOOLADDRESS);
        if (ISchool(schoolAddress).totalStatsJoinedWithinCollection(_collectionAddress, _tokenId) > 0) return false;
        return true;
    }
}
