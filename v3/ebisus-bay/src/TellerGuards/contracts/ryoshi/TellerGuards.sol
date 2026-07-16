// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/token/common/ERC2981.sol";
import "../token/IERC1155Burnable.sol";

contract TellerGuards is ERC1155Supply, Ownable, Pausable, ERC2981, IERC1155Burnable {

    uint8 public constant UNCOMMON = 2;
    uint8 public constant RARE = 3;
    uint8 public constant EPIC = 4;
    uint8 public constant LEGENDARY = 5;

    mapping(uint256 => string) uris;
    address minter;
    

    constructor() ERC1155(""){
        _setDefaultRoyalty(0xB5d4f12b5E7d8Ce43FECe177a6C75dF14994FBe6, 500);
        setUri(2,"https://cdn-prod.ebisusbay.com/files/ryoshi/metadata/fortune_guards/2.json");
        setUri(3,"https://cdn-prod.ebisusbay.com/files/ryoshi/metadata/fortune_guards/3.json");
        setUri(4,"https://cdn-prod.ebisusbay.com/files/ryoshi/metadata/fortune_guards/4.json");
        setUri(5,"https://cdn-prod.ebisusbay.com/files/ryoshi/metadata/fortune_guards/5.json");
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setUri(uint256 _tokenId, string memory _uri) public onlyOwner {
        uris[_tokenId] = _uri;
    }

    function uri(
        uint256 _tokenId
    ) public view virtual override returns (string memory) {
        return uris[_tokenId];
    }

    function airdropMint(
        uint256 _tokenId,
        address[] calldata _addresses
    ) external onlyOwner {
        bytes memory tokenURI = bytes(uris[_tokenId]);
        require(tokenURI.length != 0, "unknown tokenId");

        uint256 len = _addresses.length;

        for (uint256 i = 0; i < len; i++) {
            _mint(_addresses[i], _tokenId, 1, "");
        }
    }

    function setMinter(address _minter) external onlyOwner {
        minter = _minter;
    }

    function mint(address _to, uint[] calldata ids, uint[] calldata amounts) external  {
        require(minter == _msgSender(), "TellerGuards: not minter");
        _mintBatch(_to, ids, amounts, "");
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC1155, ERC2981, IERC165) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function setDefaultRoyalty(
        address receiver,
        uint96 feeNumerator
    ) public onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function burn(
        address account,
        uint256 id,
        uint256 value
    ) public override {
        require(
            account == _msgSender() || isApprovedForAll(account, _msgSender()),
            "ERC1155: caller is not token owner or approved"
        );

        _burn(account, id, value);
    }

    function burnBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory values
    ) public override {
        require(
            account == _msgSender() || isApprovedForAll(account, _msgSender()),
            "ERC1155: caller is not token owner or approved"
        );

        _burnBatch(account, ids, values);
    }
}
