//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol";

import "../../shared/ISchool.sol";
import "./IQRemovalContracts.sol";

contract IQRemoval is Initializable, IQRemovalContracts {
    using StringsUpgradeable for uint256;

    function initialize() external initializer {
        IQRemovalContracts.__IQRemovalContracts_init();
    }

    function detachIQ(uint256[] calldata _smolIds, uint256[] calldata _iqAmounts) public {
        require(removingAllowed, "Removing not allowed.");
    
        for(uint256 i =0;i<_smolIds.length;i++){
            require(IERC721(smolsAddress).ownerOf(_smolIds[i]) == msg.sender, "You do not own this token.");
            ISchool(schoolAddress).removeStatAsAllowedAdjuster(smolsAddress, 0, _smolIds[i], uint128(_iqAmounts[i] * 10 ** 18));
            _mint(msg.sender, 1, _iqAmounts[i], "");
        }
    }

    function uri(uint256 _tokenId)
        public
        view
        override
        returns (string memory)
    {
        return string(abi.encodePacked(baseURI, _tokenId.toString()));
    }

    
    function _beforeTokenTransfer(address _operator, address _from, address _to, uint256[] memory _ids, uint256[] memory _amounts, bytes memory _data) internal override {
        super._beforeTokenTransfer(_operator, _from, _to, _ids, _amounts, _data);

        // If the token is NOT being minted or burned
        // AND
        // The operator is NOT trove
        // revert

        if(_from == address(0) || _to == address(0)){
            //It is being minted or burned.
        } else {
            //It isn't being minted or burned.
            if(!whitelistedTransferAddress[_operator]) revert("Not allowed operator");
        }
    }
}