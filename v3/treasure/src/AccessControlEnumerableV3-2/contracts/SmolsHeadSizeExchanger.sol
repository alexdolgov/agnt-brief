// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

SmolsHeadSizeExchanger.sol

Written by: mousedev.eth

*/

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./SmolsAddressRegistryConsumer.sol";
import "./interfaces/ISmolsState.sol";
import "./interfaces/ISchool.sol";

contract SmolsHeadSizeExchanger is SmolsAddressRegistryConsumer {

    uint256 public constant iqPerHeadSize = 7 * (10 ** 18);

    /// @dev Sets the headsize of a smol.
    /// @param _tokenId The smol to set the headsize of.
    /// @param _headSize The headsize to set it to.
    function setSmolHeadSize(uint256 _tokenId, uint8 _headSize) external {
        address smolsAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SMOLSADDRESS);
        address smolsStateAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SMOLSSTATEADDRESS);
        address schoolAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SCHOOLADDRESS);


        require(IERC721(smolsAddress).ownerOf(_tokenId) == msg.sender, "You don't own this token!");
        require(_headSize <= 5, "head size not valid.");

        uint128 totalStatPlusPendingEmissions = ISchool(schoolAddress).getTotalStatPlusPendingEmissions(smolsAddress, 0, _tokenId);
    
        require(totalStatPlusPendingEmissions >= (iqPerHeadSize * _headSize), "Not enough IQ!");

        ISmolsState(smolsStateAddress).setHeadSize(_tokenId, _headSize);
    }
}
