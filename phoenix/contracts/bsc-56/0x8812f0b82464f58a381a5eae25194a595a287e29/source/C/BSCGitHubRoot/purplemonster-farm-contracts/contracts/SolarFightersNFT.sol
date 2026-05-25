// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SolarFightersNFT is ERC721URIStorage, IERC721Enumerable, Ownable
{   
    using SafeMath for uint256;
    
    uint256 public platinumDiscount;
    uint256 public pmotDiscount;
    uint256 public decimal = 0;
    uint256 public priceDenominator = 100;
    uint256 public _commonSupply = 900;
    uint256 public _rareSupply = 600;
    uint256 public _ultraRareSupply = 400;                
    uint256  CommonRarity = 0;
    uint256  RareRarity = 1;
    uint256  UltraRareRarity = 2;
    address payable _paymentAddress;    
    IERC20 public _pmotToken;
    IERC20 public _bananaToken;     
    IERC721 public _platinumPmotToken;
    address public _burnAddress = 0x000000000000000000000000000000000000dEaD;

    mapping(uint256 => uint256) public bnbPriceListByRarity;    
    mapping(uint256 => uint256) public pmotPriceListByRarity;    
    mapping(uint256 => uint256) public bananaPriceListByRarity;    

    mapping (uint256 => uint256) internal _tokenIdsByRarity;
    mapping (uint256 => uint256) internal _tokenSuppliesByRarity;
    
    event SetPrice(uint256 rarity, uint256 newBNBPriceWholeNumber, uint256 bananaWholeNumber, uint256 pmotWholeNumber);
    event SetFullPriceMode();
    event SetSalePriceMode();
    event BuySingleNFT(uint256 rarity, bool usePmot,bool useBanana, uint256 tokenId);
    event SetPaymentAddress(address newPayment);


    constructor(address payable feeAddress, address pmotTokenAddress, address bananaTokenAddress, address platPmotTokenAddress)  ERC721("Solar Fighters Leader","SOLARNFT") {               
        
        _pmotToken = IERC20(pmotTokenAddress);
        _bananaToken = IERC20(bananaTokenAddress);
        _platinumPmotToken = IERC721(platPmotTokenAddress);

        _paymentAddress = feeAddress;
        
        _tokenIdsByRarity[CommonRarity] = 1;
        _tokenIdsByRarity[RareRarity] = 901;
        _tokenIdsByRarity[UltraRareRarity] = 1501;
        
        _tokenSuppliesByRarity[CommonRarity]  = 900;
        _tokenSuppliesByRarity[RareRarity]  = 600;
        _tokenSuppliesByRarity[UltraRareRarity]  = 400;


        bnbPriceListByRarity[CommonRarity] = 1 / 2 * 10 ** 18; // 0.5 BNB
        bnbPriceListByRarity[RareRarity] =   1 * 10 ** 18; // 1 BNB
        bnbPriceListByRarity[UltraRareRarity] = 2 * 10 ** 18; // 2 BNB

        pmotPriceListByRarity[CommonRarity] =  1000 * 10**18;
        pmotPriceListByRarity[RareRarity] =  1000 * 10**18;
        pmotPriceListByRarity[UltraRareRarity] =  1000 * 10**18;

        bananaPriceListByRarity[CommonRarity] =  85 * 10**18;
        bananaPriceListByRarity[RareRarity] =  170 * 10**18;
        bananaPriceListByRarity[UltraRareRarity] =  340 * 10**18;
        
        uint256 pmotDisc = 5;
        pmotDiscount = pmotDisc.mul(10**18).div(100);

        uint256 platDisc = 25;
        platinumDiscount = platDisc.mul(10**18).div(100);

    }

    function PaymentAddress() public view returns (address){
        return _paymentAddress;
    }
    
    /* ability to set a new price on NFT. 
       Price = new Value / Denominator * decimals.
       All prices caclulated based on 100 to represent 1 BNB or 1 whole.
    */
    function setPrice(uint256 rarity, uint256 newBNBPriceWholeNumber, uint256 bananaWholeNumber, uint256 pmotWholeNumber) public onlyOwner {
            require(newBNBPriceWholeNumber > 0, "SETPRICE: Must be greater then 0");
            require(bananaWholeNumber > 0, "setPrice: banana value invalid" );
            require(pmotWholeNumber > 0, "setPrice: pmot value invalid");

            //create array like this for PMOT and Banana.
            bnbPriceListByRarity[rarity] = newBNBPriceWholeNumber  * 10 ** 18 / priceDenominator;
            pmotPriceListByRarity[rarity] = pmotWholeNumber * 10**18 /priceDenominator;
            bananaPriceListByRarity[rarity] = bananaWholeNumber * 10**18 /priceDenominator;
            emit SetPrice(rarity, newBNBPriceWholeNumber, bananaWholeNumber, pmotWholeNumber);
    }

    function setSalePriceMode() public onlyOwner {
        bnbPriceListByRarity[CommonRarity] = 1 / 4 * 10 ** 18; // 0.5 BNB
        bnbPriceListByRarity[RareRarity] =   1 / 2 * 10 ** 18; // 1 BNB
        bnbPriceListByRarity[UltraRareRarity] = 1 * 10 ** 18; // 2 BNB

        pmotPriceListByRarity[CommonRarity] =  1000 * 10**18;
        pmotPriceListByRarity[RareRarity] =  1000 * 10**18;
        pmotPriceListByRarity[UltraRareRarity] =  1000 * 10**18;

        bananaPriceListByRarity[CommonRarity] =  40 * 10**18;
        bananaPriceListByRarity[RareRarity] =  80 * 10**18;
        bananaPriceListByRarity[UltraRareRarity] =  160 * 10**18;

        emit SetSalePriceMode();
    }

    function setFullPriceMode() public onlyOwner {
         bnbPriceListByRarity[CommonRarity] = 1 / 2 * 10 ** 18; // 0.5 BNB
        bnbPriceListByRarity[RareRarity] =   1 * 10 ** 18; // 1 BNB
        bnbPriceListByRarity[UltraRareRarity] = 2 * 10 ** 18; // 2 BNB

        pmotPriceListByRarity[CommonRarity] =  1000 * 10**18;
        pmotPriceListByRarity[RareRarity] =  1000 * 10**18;
        pmotPriceListByRarity[UltraRareRarity] =  1000 * 10**18;

        bananaPriceListByRarity[CommonRarity] =  80 * 10**18;
        bananaPriceListByRarity[RareRarity] =  160 * 10**18;
        bananaPriceListByRarity[UltraRareRarity] =  320 * 10**18;

        emit SetFullPriceMode();
    }

    function buySingles(uint256 rarity, bool usePmot,bool useBanana) payable  public {
         require(msg.sender != address(0), "Address zero cannot mint");
         require(getRarityRemainingSupply(rarity) > 0, "Not enough supply left for requested rarity");        
         
       
        if(useBanana){
            //25% with platinum discount on Ultra
            uint256 bananaPrice = bananaPriceListByRarity[rarity];
            if(usePmot){
                require(_pmotToken.balanceOf(msg.sender) >= pmotPriceListByRarity[rarity], "buySingles: Insufficent PMOT balance.");                    
                uint256 disc =  bananaPriceListByRarity[rarity].mul(5).div(100);
                bananaPrice = bananaPrice.sub(disc);
                _pmotToken.transferFrom(msg.sender, _burnAddress, pmotPriceListByRarity[rarity]);
            } 
            if(_platinumPmotToken.balanceOf(msg.sender) > 0 && rarity == 2){                
                uint256 platdisc =  bananaPriceListByRarity[rarity].mul(25).div(100);
                bananaPrice = bananaPrice.sub(platdisc);
            }
            require(_bananaToken.balanceOf(msg.sender) > bananaPrice, "buySingles: insufficient Banana Balance");
            _bananaToken.transferFrom(msg.sender, _paymentAddress, bananaPrice); 
        } else {
            //USE BNB
            uint256 bnbPrice = bnbPriceListByRarity[rarity];
            if(usePmot){
                require(_pmotToken.balanceOf(msg.sender) >= pmotPriceListByRarity[rarity], "buySingles: Insufficent PMOT balance.");
                bnbPrice = bnbPrice.sub(pmotDiscount);
                _pmotToken.transferFrom(msg.sender, _burnAddress, pmotPriceListByRarity[rarity]);
            }

            if(_platinumPmotToken.balanceOf(msg.sender) > 0 && rarity == 2){
                bnbPrice = bnbPrice.sub(platinumDiscount);             
            }
            require(msg.value >= bnbPrice, "buySingles: Insufficient BNB funds." );
            _paymentAddress.transfer(bnbPrice);  
        }

        //grab tokenid
        uint256 newId = _tokenIdsByRarity[rarity];
        //mint it
        _mint(msg.sender, newId);

        //set tokenURI
        // string memory tokenUri = tokenURI(newId);
        _setTokenURI(newId, "");

        emit BuySingleNFT(rarity, usePmot, useBanana, newId);

        //setup next tokenID
        _tokenIdsByRarity[rarity] = _tokenIdsByRarity[rarity] + 1;
        
        
    }

    function _baseURI() override internal pure returns (string memory) {                
        return "https://ipfs.io/ipfs/QmPHFSHkLRPSoXBFdB8nd9Rhgz87eFoYpjy2WRpCbV9rby/";
    }

    function setPaymentAddress(address payable destination) public onlyOwner {
        require(destination != address(0), "Cannot payout to address zero");
        _paymentAddress = destination;
        emit SetPaymentAddress(destination);
    }
  
   
    function getRarityRemainingSupply(uint256 rarity) public view returns (uint256) {        
        uint256 remainingSupply = 0;
        uint256 tokensIssuedForRarity = getTokenIssuedCount(rarity);        
        
        if(rarity == CommonRarity)
        {
            remainingSupply = _commonSupply - tokensIssuedForRarity;
        } else if (rarity == RareRarity){
            remainingSupply =  _rareSupply - tokensIssuedForRarity;
        } else if (rarity == UltraRareRarity) {
            remainingSupply = _ultraRareSupply - tokensIssuedForRarity;
        }
        return  remainingSupply;
    }

    function getTokenIssuedCount(uint256 rarity) public view returns (uint256)
    {
        uint256 tokensIssued = 0;
        if(rarity == CommonRarity){
            tokensIssued = _tokenIdsByRarity[rarity] - 1;
        } else if (rarity == RareRarity){
            tokensIssued = _tokenIdsByRarity[rarity] - _commonSupply - 1;
        } else if (rarity == UltraRareRarity) {
            tokensIssued = _tokenIdsByRarity[rarity] - _commonSupply - _rareSupply - 1;
        }        
        return tokensIssued; 
    }

    function getUserNftTokens(address tokenOwner) public view returns(uint256[] memory){            
            uint256 count = balanceOf(tokenOwner);
            uint256[] memory  tokenIds = new uint256[](count);
            for(uint256 i = 0; i < count; i++){                                
                tokenIds[i]= _ownedTokens[tokenOwner][i];
            }
            return tokenIds;
    }

    function getUserNftTokensForRarity( uint256 rarity, address tokenOwner) public view returns(uint256[] memory){            
        
            uint256 count = balanceOf(tokenOwner);
            uint256[] memory  tokenIds = new uint256[](count);
            uint256[] memory tokenIndex = new uint256[](count);

            uint256 counter = 0 ;         
            for(uint256 i = 0; i < count; i++){
                uint256 nftId =  _ownedTokens[tokenOwner][i];
                if(rarity == getRarityOfTokenId(nftId)){                    
                    tokenIds[i] = _ownedTokens[tokenOwner][i];
                    tokenIndex[counter] = i;
                    counter++;
                }                                
            }
            uint256[] memory finalIds = new uint256[](counter);
            for(uint256 i; i < counter; i++){
                finalIds[i] = tokenIds[tokenIndex[i]];
            }
            return finalIds;
    }


    function getRarityOfTokenId(uint256 tokenId) public view returns (uint256){
        require(tokenId <= 1900 && tokenId > 0 , "tokenId outside range of assigned token IDs " );

         uint256 rarity;
         if(tokenId <= _commonSupply){
                rarity = CommonRarity;
            } else if (tokenId > _commonSupply && tokenId <= (_commonSupply + _rareSupply)){
                rarity = RareRarity;
            } else if (tokenId > (_commonSupply + _rareSupply) && tokenId <= (_commonSupply + _rareSupply + _ultraRareSupply)){
                rarity = UltraRareRarity;
            }
        return rarity;
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