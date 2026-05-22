// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./purplemonstertoken.sol";

contract PlatinumMonsterNFT is ERC721URIStorage, IERC721Enumerable, Ownable{
    using SafeMath for uint256;
    
    uint256 priceDenominator = 100;
    uint256 public maxSupply = 175;    
    uint256 nextTokenId;
    uint256 public bnbPrice;
    uint256 public pmotDiscount;    
    uint256 public pmotPrice;
    address payable _paymentAddress;
    address public _burnAddress = 0x000000000000000000000000000000000000dEaD;
    PurpleMonsterToken public pmotToken;
    

    

    event SetPrice(uint256 newBNBPrice, uint256 nwePmotPrice, uint256 newPmotDiscount);
    event BuyPlatinumNFT(address sender,  uint256 tokenId);
    event SetPaymentAddress(address caller, address newAddress);

    constructor(address payable feeAddress, address _pmotToken)  ERC721("Platinum Monster Leader","PMOTPLAT") {               
        
        pmotToken = PurpleMonsterToken(_pmotToken);

        _paymentAddress = feeAddress;
        nextTokenId = 1;

        bnbPrice = ( 125 * 10**16 ); //1.255BNB default 
        pmotPrice = (3000 * 10**18); // 3000PMOT
        pmotDiscount = (25 * 10**16); //.25 BNB discount
    }

    function PaymentAddress() public view returns (address){
        return _paymentAddress;
    }
        
    function setPrice(uint256 newBNBPriceWholeNumber, uint256 newPmotPrice, uint256 newPmotDiscount) public onlyOwner {
            require(newBNBPriceWholeNumber > 0, "SETPRICE: Must be greater then 0");
            require(newPmotPrice > 0, "SETPRICE: Must be greater then 0");
            
            pmotPrice = newPmotPrice.mul(10**18).div(priceDenominator);
            pmotDiscount = newPmotDiscount.mul(10**18).div(priceDenominator);
            bnbPrice = newBNBPriceWholeNumber.mul(10**18).div(priceDenominator);
            emit SetPrice(newBNBPriceWholeNumber, newPmotPrice, newPmotDiscount);
    }

    function getPrice(bool usePmot) public view returns (uint256 theBnbPrice) {
            if(usePmot){                           
               uint256 discountedPrice = bnbPrice.sub(pmotDiscount);            
               theBnbPrice = discountedPrice;    
            } else{
                   theBnbPrice = bnbPrice;
            }
    }

    function buySingles(bool usePmot) payable  public {
         require(msg.sender != address(0), "buySingles: Address zero cannot mint");
         require(getRemainingSupply() > 0, "buySingles: Not enough supply left");        
         
         if(usePmot){
            require(pmotToken.balanceOf(msg.sender) >= pmotPrice,"buySingles: Insufficient PMOT balance.");
            pmotToken.transferFrom(msg.sender, _burnAddress, pmotPrice);
            uint256 discountedPrice = bnbPrice.sub(pmotDiscount);
            require(msg.value >= discountedPrice, "buySingles: Insufficient bnb funds for selected purchase" );
            _paymentAddress.transfer(discountedPrice);    
         }
         else{
                require(msg.value >= bnbPrice, "buySingles: Insufficient bnb funds for selected purchase" );
                _paymentAddress.transfer(bnbPrice);
         }

        _mint(msg.sender, nextTokenId);
        _setTokenURI(nextTokenId, "");        

        emit BuyPlatinumNFT(msg.sender, nextTokenId);
        nextTokenId += 1;
    }

    function _baseURI() override internal pure returns (string memory) {        
        return "https://ipfs.io/ipfs/QmQEPLsHxQ5fuVFQ16D7DcBMBu8rgv3F7dfrBgSWLgniLk/";
    }

    function setPaymentAddress(address payable destination) public onlyOwner {
        require(destination != address(0), "setPaymentAddress: Cannot payout to address zero");
        _paymentAddress = destination;
        emit SetPaymentAddress(msg.sender, destination);
    } 
    

    function getRemainingSupply() public view returns (uint256) {               
        return  maxSupply - totalSupply();
    }

    function getUserNftTokens(address tokenOwner) public view returns(uint256[] memory){            
            uint256 count = balanceOf(tokenOwner);
            uint256[] memory  tokenIds = new uint256[](count);
            for(uint256 i = 0; i < count; i++){                                
                tokenIds[i]= _ownedTokens[tokenOwner][i];
            }
            return tokenIds;
    }
    
    //*************** IERC721Enumberable Interface *************************************************/
    
   // Mapping from owner to list of owned token IDs
    mapping(address => mapping(uint256 => uint256)) private _ownedTokens;

    // Mapping from token ID to index of the owner tokens list
    mapping(uint256 => uint256) private _ownedTokensIndex;

    // Array with all token ids, used for enumeration
    uint256[] private _allTokens;

    // Mapping from token id to position in the allTokens array
    mapping(uint256 => uint256) private _allTokensIndex;

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(IERC165, ERC721) returns (bool) {
        return interfaceId == type(IERC721Enumerable).interfaceId
            || super.supportsInterface(interfaceId);
    }

    /**
     * @dev See {IERC721Enumerable-tokenOfOwnerByIndex}.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index) public view virtual override returns (uint256) {
        require(index < ERC721.balanceOf(owner), "ERC721Enumerable: owner index out of bounds");
        return _ownedTokens[owner][index];
    }

    /**
     * @dev See {IERC721Enumerable-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _allTokens.length;
    }

    /**
     * @dev See {IERC721Enumerable-tokenByIndex}.
     */
    function tokenByIndex(uint256 index) public view virtual override returns (uint256) {
        require(index < totalSupply(), "ERC721Enumerable: global index out of bounds");
        return _allTokens[index];
    }

    /**
     * @dev Hook that is called before any token transfer. This includes minting
     * and burning.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, ``from``'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, ``from``'s `tokenId` will be burned.
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal virtual override {
        super._beforeTokenTransfer(from, to, tokenId);

        if (from == address(0)) {
            _addTokenToAllTokensEnumeration(tokenId);
        } else if (from != to) {
            _removeTokenFromOwnerEnumeration(from, tokenId);
        }
        if (to == address(0)) {
            _removeTokenFromAllTokensEnumeration(tokenId);
        } else if (to != from) {
            _addTokenToOwnerEnumeration(to, tokenId);
        }
    }

    /**
     * @dev Private function to add a token to this extension's ownership-tracking data structures.
     * @param to address representing the new owner of the given token ID
     * @param tokenId uint256 ID of the token to be added to the tokens list of the given address
     */
    function _addTokenToOwnerEnumeration(address to, uint256 tokenId) private {
        uint256 length = ERC721.balanceOf(to);
        _ownedTokens[to][length] = tokenId;
        _ownedTokensIndex[tokenId] = length;
    }

    /**
     * @dev Private function to add a token to this extension's token tracking data structures.
     * @param tokenId uint256 ID of the token to be added to the tokens list
     */
    function _addTokenToAllTokensEnumeration(uint256 tokenId) private {
        _allTokensIndex[tokenId] = _allTokens.length;
        _allTokens.push(tokenId);
    }

    /**
     * @dev Private function to remove a token from this extension's ownership-tracking data structures. Note that
     * while the token is not assigned a new owner, the `_ownedTokensIndex` mapping is _not_ updated: this allows for
     * gas optimizations e.g. when performing a transfer operation (avoiding double writes).
     * This has O(1) time complexity, but alters the order of the _ownedTokens array.
     * @param from address representing the previous owner of the given token ID
     * @param tokenId uint256 ID of the token to be removed from the tokens list of the given address
     */
    function _removeTokenFromOwnerEnumeration(address from, uint256 tokenId) private {
        // To prevent a gap in from's tokens array, we store the last token in the index of the token to delete, and
        // then delete the last slot (swap and pop).

        uint256 lastTokenIndex = ERC721.balanceOf(from) - 1;
        uint256 tokenIndex = _ownedTokensIndex[tokenId];

        // When the token to delete is the last token, the swap operation is unnecessary
        if (tokenIndex != lastTokenIndex) {
            uint256 lastTokenId = _ownedTokens[from][lastTokenIndex];

            _ownedTokens[from][tokenIndex] = lastTokenId; // Move the last token to the slot of the to-delete token
            _ownedTokensIndex[lastTokenId] = tokenIndex; // Update the moved token's index
        }

        // This also deletes the contents at the last position of the array
        delete _ownedTokensIndex[tokenId];
        delete _ownedTokens[from][lastTokenIndex];
    }

    /**
     * @dev Private function to remove a token from this extension's token tracking data structures.
     * This has O(1) time complexity, but alters the order of the _allTokens array.
     * @param tokenId uint256 ID of the token to be removed from the tokens list
     */
    function _removeTokenFromAllTokensEnumeration(uint256 tokenId) private {
        // To prevent a gap in the tokens array, we store the last token in the index of the token to delete, and
        // then delete the last slot (swap and pop).

        uint256 lastTokenIndex = _allTokens.length - 1;
        uint256 tokenIndex = _allTokensIndex[tokenId];

        // When the token to delete is the last token, the swap operation is unnecessary. However, since this occurs so
        // rarely (when the last minted token is burnt) that we still do the swap here to avoid the gas cost of adding
        // an 'if' statement (like in _removeTokenFromOwnerEnumeration)
        uint256 lastTokenId = _allTokens[lastTokenIndex];

        _allTokens[tokenIndex] = lastTokenId; // Move the last token to the slot of the to-delete token
        _allTokensIndex[lastTokenId] = tokenIndex; // Update the moved token's index

        // This also deletes the contents at the last position of the array
        delete _allTokensIndex[tokenId];
        _allTokens.pop();
    }   
}