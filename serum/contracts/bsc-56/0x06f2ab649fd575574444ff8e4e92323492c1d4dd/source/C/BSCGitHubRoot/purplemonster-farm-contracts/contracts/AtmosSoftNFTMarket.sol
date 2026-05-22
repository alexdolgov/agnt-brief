// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "./zap.sol";

interface INFTInterface{
    function getRarityOfTokenId(uint256 tokenId) external view returns (uint256);
    function getUserNftTokens(address user) external returns (uint256[] memory);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function getUserNftTokensForRarity( uint256 rarity, address tokenOwner) external view returns(uint256[] memory);
    function ownerOf(uint256 tokenId) external view returns (address);
}

interface IZapInterface{
    function zapIn(address _to) external payable;
    function zapInToken(address _from, uint256 amount, address _to, address _recipient ) external ;
}


contract AtmosSoftNFTMarket is Ownable,ReentrancyGuard, IERC721Receiver {
     using SafeMath for uint256;
   
   
    address public AtmosSoftToken;
    address private  zeroAddress = address(0);
    address public zapReciever;
    address public targetLP;
    address public gameReserve; 

    IZapInterface public zapper;
    enum ListingStatus {
        OnSale,
        Sold,
        Cancelled
    }
    struct Listing {
        address payable seller;
        address  buyer;
        address nft;        
        uint256 tokenId;  
        uint256 price;
        uint256 listingId;
        ListingStatus status;     
    }

    uint256 listingId;        
    uint256 feeDenominator = 10000;
    bool public createLP;

    mapping(uint256 => uint256) listingFeeForRarity;
    mapping(uint256 => uint256) buyingFeeForRarity;
    mapping(address => bool) allowedNFTs;
    
    //all Listings for user
    mapping(address => Listing[]) userListings; //User => Listing

    //index of user listing in user listings mapping 
    mapping(uint256 => uint256) listingIdUserListingIndex; // listingId => index

    //all listings indexed by listing ID - 1
    Listing[] allListings;

    

    event AddListing(address _nft, uint256 _tokenId, uint256 _price);
    event BuyListing(address _nft, uint256 _tokenId, uint256 _listingID, uint256 rarity,uint256 buyerFee, uint256 listingPrice);
    event DeList(address _nft, uint256 _tokenId,uint256 _listingId);
    event Update(uint256 _listingId, uint256 _price);
    event SetTargetZapLP(address target);
    event SetZapAddress(address newZap);
    event SetZapDest(address target);
    event SetAllowedNFT(address _nft, bool _allowed);
    event SetListingFee(uint256 _rarity, uint256 _fee);
    event SetBuyingFee(uint256 _newFee, uint256 _rarity);
    event EmergencyWithdrawNFT(address _nft, uint256 _tokenId);
    constructor(address _zapper, address _zapReciever, address _targetLP, address _AtmosSoftToken, address _gameReserve){
      
        AtmosSoftToken = _AtmosSoftToken;
        zapReciever = _zapReciever;
        gameReserve = _gameReserve;
        zapper = IZapInterface(_zapper);
        IERC20(AtmosSoftToken).approve(_zapper,type(uint256).max);
        targetLP = _targetLP; 
        createLP = false;      
        listingId = 1;

        uint256 commonFee = 125;
        uint256 rareFee = 250;
        uint256 urFee = 500;
        uint256 platFee = 600;
        uint256 promoFee = 600;
        listingFeeForRarity[0] = commonFee.mul(10**18).div(feeDenominator); //common
        listingFeeForRarity[1] = rareFee.mul(10**18).div(feeDenominator); //rare
        listingFeeForRarity[2] = urFee.mul(10**18).div(feeDenominator); //ultra rare
        listingFeeForRarity[3] = platFee.mul(10**18).div(feeDenominator); //platinum        
        listingFeeForRarity[4] = promoFee.mul(10**18).div(feeDenominator); //promo        

        uint256 buycommonFee = 100;
        uint256 buyrareFee = 150;
        uint256 buyurFee = 200;
        uint256 buyplatFee = 300;
        uint256 buypromoFee = 300;

        buyingFeeForRarity[0] = buycommonFee.mul(10**18).div(feeDenominator); //common
        buyingFeeForRarity[1] = buyrareFee.mul(10**18).div(feeDenominator); //rare
        buyingFeeForRarity[2] = buyurFee.mul(10**18).div(feeDenominator); //ultra rare
        buyingFeeForRarity[3] = buyplatFee.mul(10**18).div(feeDenominator); //platinum        
        buyingFeeForRarity[4] = buypromoFee.mul(10**18).div(feeDenominator); //promo        
                
        
    }

    function addListing(address _nft, uint256 _tokenId, uint256 _price, uint256 _rarity) payable public {
        //require nft is allowed to be listed.
        require(allowedNFTs[_nft],"addListing: Invalid NFT specified");

        //require fee is sent        
        require(msg.value >= listingFeeForRarity[_rarity], "addListing: Amount not provided for listing fee");

        //zap fee into LP
        zapper.zapIn{value: msg.value}(AtmosSoftToken);
        if(createLP){            
            zapper.zapInToken(AtmosSoftToken, IERC20(AtmosSoftToken).balanceOf(address(this)),targetLP, zapReciever);
        } else {              
              IERC20(AtmosSoftToken).transfer(gameReserve,IERC20(AtmosSoftToken).balanceOf(address(this)));            
        }
        
        //transfer NFT to market contract
        INFTInterface nft = INFTInterface(_nft);
        nft.safeTransferFrom(address(msg.sender), address(this), _tokenId);

        //add meta data about listing                
        Listing memory newListing = Listing({
            nft: _nft,
            price: _price,
            tokenId: _tokenId,
            status: ListingStatus.OnSale,
            listingId: listingId,
            seller: payable(msg.sender),
            buyer: zeroAddress
            });
        
        //store user => Listing
        userListings[msg.sender].push(newListing);
        
        //ListingId => index in user Listings list
        listingIdUserListingIndex[listingId] = userListings[msg.sender].length - 1;

        //store all listings relation        
        allListings.push(newListing);        

        listingId = listingId + 1;
       
        //emit event for listing added
        emit AddListing(_nft, _tokenId, _price);
    }

   

    function buyListing(address _nft, uint256 _tokenId, uint256 _listingID, uint256 _rarity) payable public {
        //require nft is for sale.
        require(allListings[_listingID - 1].status == ListingStatus.OnSale, "buyListing: Listing ID not active sale");
      
        //require nft is in this contract
        INFTInterface nfttoBuy = INFTInterface(_nft);
        require(nfttoBuy.ownerOf(_tokenId) == address(this),"buyListing: NFT to available in store");

        //global list update
        Listing storage listing = allListings[_listingID - 1];
        listing.status = ListingStatus.Sold;
        listing.buyer = msg.sender;
        
        // Seller List update
        userListings[listing.seller][listingIdUserListingIndex[_listingID]] = listing;

        // Listing storage userListing = userListings[listing.seller][listingIdUserListingIndex[_listingID]] = listing;
        // userListing.status = ListingStatus.Sold;
        // userListing.buyer = msg.sender;
        
        //require fee is sent  
        uint256 buyerFee =    buyingFeeForRarity[_rarity];
        require(msg.value >= (buyerFee + listing.price), "buyListing: Amount not provided for listing fee");

        //zap fee into LP        
        zapper.zapIn{value: buyerFee }(AtmosSoftToken);
        if(createLP){            
            zapper.zapInToken(AtmosSoftToken, IERC20(AtmosSoftToken).balanceOf(address(this)),targetLP, zapReciever);
        } else {              
              IERC20(AtmosSoftToken).transfer(gameReserve,IERC20(AtmosSoftToken).balanceOf(address(this)));            
        } 

        // //transfer purchase price to listee.
        listing.seller.transfer(listing.price);
      

        //transfer NFT to purchaser
        nfttoBuy.safeTransferFrom(address(this), msg.sender,_tokenId);

        
        emit BuyListing(_nft, _tokenId, _listingID, _rarity, buyerFee, listing.price);
    }

    function delist(address _nft, uint256 _tokenId,uint256 _listingId) public {
        
        INFTInterface iNft = INFTInterface(_nft);
        require(iNft.ownerOf(_tokenId) == address(this), "emergency: token not in contract");
     
        Listing[] memory usersListings = userListings[msg.sender];
        bool isGood = false;
        for(uint256 i = 0; i <= usersListings.length; i++){
                if(usersListings[i].tokenId == _tokenId && usersListings[i].seller == msg.sender && 
                   usersListings[i].status == ListingStatus.OnSale && usersListings[i].nft == _nft){
                    isGood = true;
                    break;
                }
        }
        require(isGood, "delist: Not your token");

        Listing storage listing = allListings[_listingId -1];
        listing.status = ListingStatus.Cancelled;        

        iNft.safeTransferFrom(address(this), msg.sender, _tokenId);

        //emit event
        emit DeList(_nft, _tokenId, _listingId);
    }
  

    function getListings(address _nftAddress, ListingStatus _status) public view returns(Listing[] memory) {
        uint256 totalListings = allListings.length;
        uint256 counter = 0;
        Listing[] memory initialList = new Listing[](totalListings);
        for(uint256 i = 0; i < totalListings;i++){
            if(allListings[i].status == _status && allListings[i].nft == _nftAddress){
                initialList[counter] = allListings[i];
                counter = counter + 1;
            }
        }

        Listing[] memory returnList = new Listing[](counter);
        for(uint256 c = 0; c < counter; c++){
            returnList[c] = initialList[c];
        }

        return returnList;
    }

    function getListingsStatus(ListingStatus _status) public view returns(Listing[] memory) {
        uint256 totalListings = allListings.length;
        uint256 counter = 0;
        Listing[] memory initialList = new Listing[](totalListings);
        for(uint256 i = 0; i < totalListings;i++){
            if(allListings[i].status == _status){
                initialList[counter] = allListings[i];
                counter = counter + 1;
            }
        }

        Listing[] memory returnList = new Listing[](counter);
        for(uint256 c = 0; c < counter; c++){
            returnList[c] = initialList[c];
        }

        return returnList;
    }

    function getAllListings() public view returns(Listing[] memory) {
        return allListings;        
    }

    function getUserListings(address user) public view returns(Listing[] memory) {
        return userListings[user];
    }

    function getListingFee(uint256 rarity) public view returns(uint256) {
            return listingFeeForRarity[rarity];
    }
    function getBuyingFee(uint256 rarity) public view returns(uint256) {
            return buyingFeeForRarity[rarity];
    }

    function sweep(address token) public onlyOwner{ //clean out residuals amounts if anything
        require(!allowedNFTs[token],"sweep: Cannot sweep deposited NFTs");
        IERC20 theToken  = IERC20(token); //implies no NFTs can be removed, only ERC20's.
        theToken.transfer(msg.sender, theToken.balanceOf(address(this)));
    }

    function emergencyWithdrawNFT(address _nft, uint256 _tokenId) public {
        INFTInterface iNft = INFTInterface(_nft);
        require(iNft.ownerOf(_tokenId) == address(this), "emergency: token not in contract");
        
        Listing[] memory usersListings = userListings[msg.sender];
        bool isGood = false;
        for(uint256 i = 0; i <= usersListings.length; i++){
                if(usersListings[i].tokenId == _tokenId && usersListings[i].seller == msg.sender && 
                   usersListings[i].status == ListingStatus.OnSale && usersListings[i].nft == _nft){
                    isGood = true;
                    break;
                }
        }
        require(isGood, "emergency: Not your token");

        iNft.safeTransferFrom(address(this), msg.sender, _tokenId);

        emit EmergencyWithdrawNFT(_nft, _tokenId);
    }

    /** ADMIN FUNCTIONS */
    function setBuyingFee(uint256 _newFee, uint256 _rarity) external onlyOwner { //adjust the listing fee
        buyingFeeForRarity[_rarity] = _newFee.mul(10**18).div(feeDenominator);
        emit SetBuyingFee(_newFee, _rarity);       
    }

    function setZapAddress(address _newZap) external onlyOwner{ //ability to change the zapper
        zapper = IZapInterface(_newZap);
         IERC20(AtmosSoftToken).approve(_newZap,type(uint256).max);
        emit SetZapAddress(_newZap);
    }
    function setTargetZapLP(address target) external onlyOwner{ //ability to change the zap LP target
        targetLP = target;        
        emit SetTargetZapLP(target);
    }
    function setZapDest(address target) external onlyOwner{ //address where the zapped LP gets transferred to.
        zapReciever = target;
        
        emit SetZapDest(target);
    }
    function setAllowedNFT(address _nft, bool _allowed) external onlyOwner{ //ability to whitelist additional NFTs
        allowedNFTs[_nft] = _allowed;
        emit SetAllowedNFT(_nft, _allowed);        
    }
    function setListingFee(uint256 _rarity, uint256 _fee) external onlyOwner{ //ability to update/add new listing fees
        listingFeeForRarity[_rarity] = _fee.mul(10**18).div(feeDenominator); //125 = 0.0125: base 10000.
        emit SetListingFee(_rarity, _fee);        
    }       
    function toggleCreateLP() external onlyOwner {
        createLP = !createLP;
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
    function onERC721Received(address /* operator */, address /* from */, uint256 /* tokenId */, bytes calldata /* data */) external pure override returns (bytes4){
        return this.onERC721Received.selector;
    }
}