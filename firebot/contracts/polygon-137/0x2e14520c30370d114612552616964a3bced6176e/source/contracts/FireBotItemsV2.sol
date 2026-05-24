// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

interface IFireBotTokenV2 {
	function burnFrom(address account, uint256 amount) external;
}

contract FireBotItemsV2 is ERC1155, Ownable, Pausable, ERC1155Burnable, ERC1155Supply {
	
	IFireBotTokenV2 public FBX = IFireBotTokenV2(0xD125443F38A69d776177c2B9c041f462936F8218);
	
    constructor() ERC1155("ipfs://QmTkgwrTR8gY5WVnhW8UYtkGS15LnNkj2o3ezJuC3GatDa/{id}") {
	}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data) public onlyOwner {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }

    function _beforeTokenTransfer(address operator, address from, address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        internal
        whenNotPaused
        override(ERC1155, ERC1155Supply)
    {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
	
	function open_box(address account, uint256 box_id) external {
		require(box_id < 5, 'This item is not a box.');
		FBX.burnFrom(account, 15 * (3 ** (box_id - 1)) * (10 ** 18));
		_burn(account, box_id, 1);
		uint rnd = block.timestamp;
		for (uint i=0; i<3 ** (box_id - 1); i++) {
			rnd = uint(keccak256(abi.encodePacked(rnd, block.difficulty, msg.sender)));
			_mint(account, rnd % 5 + 5, 1, "0x0");
        }
	}
	
	function mergeParts(address account) external {
		FBX.burnFrom(account, 75 * (10 ** 18));
		_burn(account, 5, 1);
		_burn(account, 6, 1);
		_burn(account, 7, 1);
		_burn(account, 8, 1);
		_burn(account, 9, 1);
		_mint(account, 10, 1, "0x0");
	}
}