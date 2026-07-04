// SPDX-License-Identifier: MIT
pragma solidity >=0.8.6;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol"; 
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "./LinkedNodes.sol";

contract Auction is AccessControlEnumerable, Initializable, LinkedNodes {

    bytes32 public constant DIVIDEND_TAKER_ROLE = keccak256("DIVIDEND_TAKER_ROLE");
    bytes32 public constant GOV_ROLE = keccak256("GOV_ROLE");

    using Address for address;

    IERC721 public nftContract;

    uint public auctionFeePercent;    // 1 = 0.1%
    uint public auctionDividendShare; // 1 = 0.1%

    uint public minIncrementPercentage = 10; // 1 = 0.1%
    uint public minIncrementAmount = 0.1 ether;

    uint public minAuctionTimeLength;
    uint public maxAuctionTimeLength;

    uint public takerDividends;
    uint public adminDividends;

    bool public openToPublic = false;

    struct NftAuction {
      uint id;
      address seller;
      address highestBidder;
      uint highestBid;
      uint timeExtension;
      uint timeLength;
      uint minToExtend;
      uint startTime;
      uint endTime;
    }
    mapping (uint => NftAuction) public auctions;
    mapping (uint => uint) public nftIdPosition;

    uint public activeAuctionNodeId;
    uint public pushedAuctions;
    uint public lastNodeId;

    // Events that will be emitted on changes.
    event AuctionCreated(address indexed seller, uint startingBid, uint indexed id);
    event AuctionRemoved(uint indexed id, uint indexed position);
    event HighestBidIncreased(address  indexed bidder, uint amount, uint indexed id, uint indexed auctionNumber);
    event AuctionEnded(address indexed winner, uint amount, uint indexed id);

    event TakerWithdrawDividends(uint amount);

    // Admin events
    event AdminWithdrawDividends(uint amount);
    event FeePercentChanged(uint amount);
    event AuctionOpened(bool openToPublic);
    event ChangeMinAuctionTimeLength(uint amount);
    event ChangeMaxAuctionTimeLength(uint amount);
    event ChangeMinIncrementAmount(uint amount);
    event ChangeMinIncrementPercentage(uint amount);
    event ChangeFeePercent(uint amount);
    event ChangeDividendShare(uint amount);

    modifier noContract() {
      // solhint-disable-next-line
        require(_msgSender() == tx.origin && !_msgSender().isContract(), "no indirect calls");
        _;
    }

    modifier onlyDividendTaker() {
        require(hasRole(DIVIDEND_TAKER_ROLE, _msgSender()), "Must have Dividend taker role");
        _;
    }

    modifier onlyAdmin() {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Must have Admin role");
        _;
    }

    modifier onlyGov() {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Must have Gov role");
        _;
    }

    function initialize(IERC721 _nftContract, 
                        uint _auctionFeePercent, 
                        uint _minAuctionTimeLength, 
                        uint _maxAuctionTimeLength, 
                        uint _auctionDividendShare) external initializer  { 
      nftContract = _nftContract;
      auctionFeePercent = _auctionFeePercent;
      minAuctionTimeLength = _minAuctionTimeLength;
      maxAuctionTimeLength = _maxAuctionTimeLength;
      auctionDividendShare = _auctionDividendShare;

      _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
      _setupRole(DIVIDEND_TAKER_ROLE, _msgSender());
      _setupRole(GOV_ROLE, _msgSender());
    }

    /// @notice Pushes NFT auction to next available slot
    /// @param _id NFT tokenId
    /// @param _auctionTimeLength Auction starting time length in seconds
    /// @param _auctionTimeExtension Auction time exenstions after each bid in seconds
    /// @param _minToExtend Minimum remaining time to activate time extension
    /// @param _minimumBid Starting bid
    function pushToAuction(uint _id, uint _auctionTimeLength, uint _auctionTimeExtension, uint _minToExtend, uint _minimumBid) external noContract {
      require(hasRole(GOV_ROLE, _msgSender()) || openToPublic, "Not open to public");
      require(_minimumBid > 0, "Minimum bid cannot be 0"); // Minimum bid == 0
      require(_minToExtend <= 43200, "Minimum extend cannot be more than 12hs");
      require(_auctionTimeExtension <= 1800, "Time exentions can't be longer than 30 minutes");
      require(_auctionTimeLength >= minAuctionTimeLength && _auctionTimeLength <= maxAuctionTimeLength && maxAuctionTimeLength >= _minToExtend, "Invalid auction length"); // Auction time length < minAuctionTimeLength

      // Transfer NFT to this contract
      nftContract.transferFrom(_msgSender(), address(this), _id);
      uint endTime = block.timestamp + _auctionTimeLength;

      uint currentNode = lastNodeId;
      uint newId = insertAfter(currentNode, _id);
      if (activeAuctionNodeId == 0) activeAuctionNodeId = newId;
      auctions[newId] = createAuction(endTime, _msgSender(), _minimumBid - 1, _auctionTimeExtension, _minToExtend, block.timestamp, _auctionTimeLength, _id);
      nftIdPosition[_id] = newId;
      lastNodeId = newId;
      pushedAuctions++;
      emit AuctionCreated(_msgSender(), _minimumBid, _id);
    }

    function createAuction(uint _endTime, address _seller, uint _minimumBid, uint _auctionTimeExtension, uint _minToExtend, uint _startTime, uint _auctionTimeLength, uint _id) internal pure returns (NftAuction memory) {
      return NftAuction({
        id: _id,
        seller: payable(_seller),
        highestBidder: payable(address(0)),
        highestBid: _minimumBid,
        timeExtension: _auctionTimeExtension,
        timeLength: _auctionTimeLength,
        minToExtend: _minToExtend,
        startTime: _startTime,
        endTime: _endTime
      });
    }

    /// @notice Bids on the auction with the value sent - When outbid previous bid is returned to bidder
    /// @param _id NFT tokenId
    function bid(uint _id) external payable noContract {
        require(activeAuctionNodeId == nftIdPosition[_id], "This NFT auction is not running.");
        NftAuction storage auction = auctions[nftIdPosition[_id]];
        require(block.timestamp <= auction.endTime, "Auction time has ended"); 
        
        uint minIncrementPerc = auction.highestBid * minIncrementPercentage / 1000;
        uint minIncrement = minIncrementPerc > minIncrementAmount ? minIncrementPerc : minIncrementAmount;

        require(msg.value >= auction.highestBid + minIncrement, "Bid lower than minimum increment."); 

        // Save data tu refund previous bidder
        address currentBidder = auction.highestBidder;
        uint currentBid = auction.highestBid;

        auction.highestBidder = _msgSender();
        auction.highestBid = msg.value;
        uint remainder = auction.endTime > block.timestamp ? auction.endTime - block.timestamp : 0;
        if (remainder < auction.minToExtend) {
          // Don't go ever the minimum time to extend
          uint extensionTime = (remainder + auction.timeExtension) > auction.minToExtend ? 
                              auction.minToExtend - remainder :  
                              auction.timeExtension;

          auction.endTime += extensionTime;
        }

        // Refund at the end (reentrancy)
        if (currentBid != 0 && currentBidder != address(0)) {
          payable(currentBidder).transfer(currentBid);
        }

        emit HighestBidIncreased(_msgSender(), msg.value, _id, nftIdPosition[_id]);
    }

    /// @notice Removes any non ended non active auction from seller
    /// @param _id NFT tokenId
    function removeAuction(uint _id) external { 
        require(activeAuctionNodeId != nftIdPosition[_id], "Cannot remove active auction");
        NftAuction memory auction = auctions[nftIdPosition[_id]];
        require(auction.seller == _msgSender(), "Not the seller of the auction");

        if (nftIdPosition[_id] == lastNodeId) lastNodeId = nodes[nftIdPosition[_id]].prev;
        remove(nftIdPosition[_id]);
        delete auctions[nftIdPosition[_id]];
        pushedAuctions--;

        nftContract.transferFrom(address(this), auction.seller, _id);
        emit AuctionRemoved(_id, nftIdPosition[_id]);
        delete nftIdPosition[_id];
    }

    /// @notice End the auction and send both the payment and NFT
    /// @param _id NFT tokenId
    function endAuction(uint _id) external noContract {
        require(activeAuctionNodeId == nftIdPosition[_id], "This NFT auction is not running.");
        NftAuction storage auction = auctions[nftIdPosition[_id]];
        require(block.timestamp > auction.endTime, "Auction not yet ended");

        activeAuctionNodeId = nodes[activeAuctionNodeId].next;
        if (activeAuctionNodeId != 0) {
          // Auction queued we start it
          auctions[activeAuctionNodeId].endTime = block.timestamp + auctions[activeAuctionNodeId].timeLength;
          auctions[activeAuctionNodeId].startTime = block.timestamp;
        }

        if (auction.highestBidder == address(0)) {
          // No bids for this auction, return NFT to seller and no payment
          nftContract.transferFrom(address(this), auction.seller, _id);
        } else {
          // Successful bid won for this auction, send NFT to winner and payment to seller
          nftContract.transferFrom(address(this), auction.highestBidder, _id); // transfer NFT to buyer

          uint paymentFee = auction.highestBid * auctionFeePercent / 1000;
          uint divShare = paymentFee * auctionDividendShare / 1000;
          takerDividends += divShare; // count fee towards dividends
          adminDividends += paymentFee - divShare; // count fee to admins
          
          payable(auction.seller).transfer(auction.highestBid - paymentFee); // send payment to seller address
        }
        emit AuctionEnded(auction.highestBidder, auction.highestBid, _id);

    }

    /// @notice Returns current active auction
    function activeAuction() public view returns (NftAuction memory auction, Node memory node) {
      node = nodes[activeAuctionNodeId];
      auction = auctions[activeAuctionNodeId];
    }

     /// @notice Returns last 5 auctions and next 5 auctions (when more than 5 have past)
    function getAuctions() public view returns (NftAuction[10] memory activeAuctions, Node[10] memory currentNodes) {
      (NftAuction memory auction, Node memory node) = activeAuction();
      Node memory currentNode = node;
      uint toReturn = pushedAuctions > 10 ? 10 : pushedAuctions;
      uint pastAuctions = toReturn / 2;
      uint lastPos = 0;

      for (uint i = 0; i <= pastAuctions; i++) {
        if (isValidNode(currentNode.prev)) {
          currentNode = nodes[currentNode.prev];
          activeAuctions[lastPos] = auctions[nodes[currentNode.next].prev];
          currentNodes[lastPos] = currentNode;
          lastPos++;
        }
      }

      activeAuctions[lastPos] = auction;
      currentNodes[lastPos] = node;
      lastPos ++;
      currentNode = node;
      for (uint i = lastPos; i < toReturn; i++) {
        if (isValidNode(currentNode.next)) {
          currentNode = nodes[currentNode.next];
          activeAuctions[lastPos] = auctions[nodes[currentNode.next].prev];
          currentNodes[lastPos] = currentNode;
          lastPos++;
        }
      }
    }

    function minBid() public view returns (uint minIncrement, uint minimumBid) {
      uint minIncrementPerc = auctions[activeAuctionNodeId].highestBid * minIncrementPercentage / 1000;
      minIncrement = minIncrementPerc > minIncrementAmount ? minIncrementPerc : minIncrementAmount;
      minimumBid = auctions[activeAuctionNodeId].highestBid + minIncrement;
    }

    /// @notice Returns auction data with its possition in the queue
    /// @param pos possition in queue
    function getAuctionWithPosition(uint pos) public view returns (NftAuction memory auction, Node memory node) {
      node = nodes[pos];
      auction = auctions[pos];
    }

    /// @notice Returns current active auction tokenId
    function activeAuctionId() public view returns (uint) {
      return auctions[activeAuctionNodeId].id;
    }

    function withdrawDividends() external onlyDividendTaker {
        uint toPay = takerDividends;
        takerDividends = 0;
        payable(_msgSender()).transfer(toPay);
        emit TakerWithdrawDividends(toPay);
    }

    /** ADMIN FUNCTIONS **/
    function withdrawFees() external onlyGov {
        uint toPay = adminDividends;
        adminDividends = 0;
        payable(_msgSender()).transfer(toPay);
        emit AdminWithdrawDividends(toPay);
    }

    function changeFeePercent(uint _auctionFeePercent) external onlyGov {
        require(_auctionFeePercent <= 500, "Above maximum 50% fee");
        auctionFeePercent = _auctionFeePercent;
        emit ChangeFeePercent(auctionFeePercent);
    }

    function changeDividendShare(uint _auctionDividendShare) external onlyGov {
        auctionDividendShare = _auctionDividendShare;
        emit ChangeDividendShare(auctionDividendShare);
    }

    function changeOpenToPublic(bool _openToPublic) external onlyGov {
        openToPublic = _openToPublic;
        emit AuctionOpened(openToPublic);
    }

    function changeMinAuctionTimeLength(uint _minAuctionTimeLength) external onlyGov {
        minAuctionTimeLength = _minAuctionTimeLength;
        emit ChangeMinAuctionTimeLength(minAuctionTimeLength);
    }

    function changeMaxAuctionTimeLength(uint _maxAuctionTimeLength) external onlyGov {
        require(_maxAuctionTimeLength <= 604800, "Above max length of 7 days");
        maxAuctionTimeLength = _maxAuctionTimeLength;
        emit ChangeMaxAuctionTimeLength(maxAuctionTimeLength);
    }

    function changeMinIncrementAmount(uint _minIncrementAmount) external onlyGov {
        minIncrementAmount = _minIncrementAmount;
        emit ChangeMinIncrementAmount(minIncrementAmount);
    }

    function changeMinIncrementPercentage(uint _minIncrementPercentage) external onlyGov {
        minIncrementPercentage = _minIncrementPercentage;
        emit ChangeMinIncrementPercentage(minIncrementPercentage);
    }

    /** EMERGENCY FUNCTIONS **/
    function emergencyWithdraw(uint _amount) external onlyAdmin {
        payable(_msgSender()).transfer(_amount);
    }

    function emergencyNftWithdraw(uint _id) external onlyAdmin {
        nftContract.transferFrom(address(this), _msgSender(), _id);
    }

}
