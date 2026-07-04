// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*

SmolsFemaleHairToggler.sol

Written by: mousedev.eth

*/

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./SmolsAddressRegistryConsumer.sol";
import "./interfaces/ISmolsState.sol";

contract SmolsFemaleHairToggler is SmolsAddressRegistryConsumer {

    /// @dev Toggles the hair of a female smol.
    /// @param _tokenId The smol to set the headsize of.
    function toggleFemaleHair(uint256 _tokenId) external {
        address smolsAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SMOLSADDRESS);
        address smolsStateAddress = smolsAddressRegistry.getAddress(SmolAddressEnum.SMOLSSTATEADDRESS);

        require(IERC721(smolsAddress).ownerOf(_tokenId) == msg.sender, "You don't own this token!");

        Smol memory _thisSmol = ISmolsState(smolsStateAddress).getSmol(_tokenId);

        require(_thisSmol.gender == 2, "Not a female smol.");

        uint256 _currentHairTraitId = _thisSmol.hair;

        if(_currentHairTraitId == 9000070){
            //Hairless right now
            //Revert to initial state hair trait.
            ISmolsState(smolsStateAddress).setHair(_tokenId, 0);
        } else {
            //They have hair right now
            //Set hair to none trait
            ISmolsState(smolsStateAddress).setHair(_tokenId, 9000070);
        }
    }
}
