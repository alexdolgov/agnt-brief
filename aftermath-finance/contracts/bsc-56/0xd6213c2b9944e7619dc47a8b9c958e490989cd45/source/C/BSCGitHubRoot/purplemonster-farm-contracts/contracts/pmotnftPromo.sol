// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/erc20/IERC20.sol";
import "./PurpleMonNFT.sol";

contract PMOTNftPromo is Ownable, ReentrancyGuard, IERC721Receiver  { 
    using SafeMath for uint256;    

    PurpleMonNFT public _pmotNftToken;
    IERC20 public _pmotToken;

    address public burnAddress = 0x000000000000000000000000000000000000dEaD;
    address payable public  feeAddress;    
    uint256 public commonBNBPrice;
    uint256 public rareBNBPrice;
    uint256 public ultraRareBNBPrice;
    uint256 public commonPMOTPrice;
    uint256 public rarePMOTPrice;
    uint256 public ultraRarePMOTPrice;

    uint256 priceDenominator = 100;

    event SetPrice(uint256 rarity, uint256 BNBPrice, uint256 pmotPrice);
    event BuyNFT(uint256 rarity, uint256 tokenId);

    constructor(IERC20 pmotToken, PurpleMonNFT pmotNFTToken, address payable _feeAddress){
        _pmotNftToken = pmotNFTToken;
        _pmotToken = pmotToken;
        feeAddress = _feeAddress;
        commonBNBPrice = 5 * 10**16;
        rareBNBPrice = 10 * 10 ** 16;
        ultraRareBNBPrice = 100000 * 10 ** 18;

        commonPMOTPrice = 3500 * 10**18;
        rarePMOTPrice = 7000 * 10**18;
        ultraRarePMOTPrice = 18500 * 10**18;
    }

    function buyCommonNft()  payable public nonReentrant {
        require(msg.value >= commonBNBPrice, "Insufficient BNB Funds");
        require(_pmotToken.balanceOf(msg.sender) >= commonPMOTPrice, "Insufficient PMOT Balance");

        //transfer BNB to fee address
        feeAddress.transfer(msg.value);   

        //BURN PMOT
        _pmotToken.transferFrom(msg.sender, burnAddress, commonPMOTPrice);

        //get my list of common NFTs
         uint256[] memory tokenId = _pmotNftToken.getUserNftTokensForRarity(0, address(this));

        //transfer one to purchaser
        require(tokenId.length > 0, "Insufficient Supply of Common NFT remaining");
        _pmotNftToken.transferFrom(address(this),msg.sender, tokenId[0]);

        emit BuyNFT(0, tokenId[0]);

    }

    function buyRareNft()  payable public nonReentrant {
        require(msg.value >= rareBNBPrice, "Insufficient BNB Funds");
        require(_pmotToken.balanceOf((msg.sender)) >= rarePMOTPrice, "Insufficient PMOT Balance");
        
        //transfer BNB to fee address
        feeAddress.transfer(msg.value);   

        //BURN PMOT
        _pmotToken.transferFrom(msg.sender,burnAddress, rarePMOTPrice);

        //get my list of rare NFTs        
        uint256[] memory tokenId = _pmotNftToken.getUserNftTokensForRarity(1, address(this));

        //transfer one to purchaser
        require(tokenId.length > 0, "Insufficient Supply of Rare NFT remaining");
        _pmotNftToken.transferFrom(address(this),msg.sender, tokenId[0]);

        emit BuyNFT(1, tokenId[0]);
    }

    function buyUltraRareNft()  payable public nonReentrant {
        require(msg.value >= ultraRareBNBPrice, "Insufficient BNB Funds");
        require(_pmotToken.balanceOf((msg.sender)) >= ultraRarePMOTPrice, "Insufficient PMOT Balance");

        //transfer BNB to fee address
        feeAddress.transfer(msg.value);   

        //BURN PMOT
        _pmotToken.transferFrom(msg.sender,burnAddress, ultraRarePMOTPrice);

        //get my list of ultra Rare NFTs
        uint256[] memory tokenId = _pmotNftToken.getUserNftTokensForRarity(2, address(this));

        //transfer one to purchaser
        require(tokenId.length > 0, "Insufficient Supply of Ultra Rare NFT remaining");
        _pmotNftToken.transferFrom(address(this),msg.sender, tokenId[0]);

        emit BuyNFT(2, tokenId[0]);

    }
    
    function setPrice(uint256 rarity, uint256 BNBPrice, uint256 pmotPrice) public onlyOwner {
        if(rarity == 0) {
            commonBNBPrice = BNBPrice.mul(10 ** 18).div(priceDenominator);
            commonPMOTPrice = pmotPrice.mul(10 ** 18).div(priceDenominator);
        }else if(rarity == 1){
            rareBNBPrice = BNBPrice.mul(10 ** 18).div(priceDenominator);
            rarePMOTPrice = pmotPrice.mul(10 ** 18).div(priceDenominator);
        }else if(rarity == 2){
            ultraRareBNBPrice = BNBPrice.mul(10 ** 18).div(priceDenominator);
            ultraRarePMOTPrice = pmotPrice.mul(10 ** 18).div(priceDenominator);
        }
        
        emit SetPrice(rarity, BNBPrice, pmotPrice);
    }

    function setFeeAddress(address payable newAddress) public {
        require(msg.sender == feeAddress, "Only Current Fee address can change fee address");
        feeAddress = newAddress;
    }

    function pullOutNfts(address destination) public onlyOwner {
         uint256[] memory tokenIds = _pmotNftToken.getUserNftTokens(address(this));
        for(uint256 i = 0; i < tokenIds.length; i++){
            _pmotNftToken.safeTransferFrom(address(this),destination, tokenIds[i]);
        }
    }
       /*****IERC721Receiver */
     /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be reverted.
     *
     * The selector can be obtained in Solidity with `IERC721.onERC721Received.selector`.
     *
     *  Note: Parameters are required by the override, but optional for usage, hence compiler warning as they are not needed in this case.
     */
    function onERC721Received(address /* operator */, address /* from */, uint256 /*  tokenId */ , bytes calldata /* data */) external pure  override returns (bytes4){        
        return this.onERC721Received.selector;
    }

}