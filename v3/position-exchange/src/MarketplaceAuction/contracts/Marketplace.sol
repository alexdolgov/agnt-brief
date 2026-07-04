pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./library/Auction.sol";

interface IUniswapV2Router01{
		function factory() external pure returns (address);
    function WETH() external pure returns (address);
		function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
			external
			payable
			returns (uint[] memory amounts);
}


contract MarketplaceAuction is Initializable, ReentrancyGuardUpgradeable {
		using Auction for Auction.Data;
		using AuctionGetter for Auction.Data;
		using SafeMath for uint256;
		IERC20 public posi;
    uint256 public auctionIndex;
		uint256 public minDuration;
	
		IUniswapV2Router01 swapRouter;

		mapping(uint => Auction.Data) public auctions;

		event AuctionListed(uint256 indexed id, address seller, address nft, uint256 tokenId);
		event Bid(uint256 indexed id, address bidder, uint256 price, uint256 profit);

		function initialize() public initializer {
			__ReentrancyGuard_init();
			swapRouter = IUniswapV2Router01(0x10ED43C718714eb63d5aA57B78B54704E256024E);
			posi = IERC20(0x5CA42204cDaa70d5c773946e69dE942b85CA6706);
			minDuration = 12 hours;
		}

    fallback() external {
        revert();
    }

    function list(address _nft, uint256 _tokenId, uint256 _startingPrice, uint256 _duration) external {
			require(_tokenId != 0, "invalid token");
			require(_duration >= minDuration, "invalid duration");

			IERC721(_nft).safeTransferFrom(msg.sender, address(this), _tokenId);
			auctionIndex++;
			auctions[auctionIndex] = Auction.Data({
				seller: msg.sender,
				lastBidder: address(0),
				lastPrice: _startingPrice,
				nft: IERC721(_nft),
				tokenId: _tokenId,
				duration: _duration,
				startedAt: block.timestamp,
				isTaken: false,
				raisedAmount: 0
			});
			emit AuctionListed(auctionIndex, msg.sender, _nft, _tokenId);
    }

		function bidBNB(uint256 _id) external payable nonReentrant {
			Auction.Data storage auction = auctions[_id];
			require(auction.getStatus() == 1, "invalid status");
			(uint256 newAmount,uint256 increaseAmount,uint256 previousBidderReward,uint256 sellerAmount) = auction.getBidAmount();
			address[] memory paths = new address[](2);
			paths[0] = swapRouter.WETH();
			paths[1] = address(posi);
			uint[] memory amounts = swapRouter.swapETHForExactTokens{value: msg.value}(newAmount.mul(1011).div(1000), paths, address(this), block.timestamp+15 minutes);

			if(previousBidderReward > 0){
				posi.transfer(auction.lastBidder, auction.lastPrice.add(previousBidderReward));
			}
			auction.updateState(msg.sender, newAmount, sellerAmount);
			emit Bid(_id, msg.sender, newAmount, previousBidderReward);
		}

    function bid(uint256 _id) external {
			Auction.Data storage auction = auctions[_id];
			require(auction.getStatus() == 1, "invalid status");
			(uint256 newAmount,uint256 increaseAmount,uint256 previousBidderReward,uint256 sellerAmount) = auction.getBidAmount();
			// plus RFI fee
			posi.transferFrom(msg.sender, address(this), newAmount.mul(1011).div(1000));
			if(previousBidderReward > 0){
				posi.transfer(auction.lastBidder, auction.lastPrice.add(previousBidderReward));
			}
			auction.updateState(msg.sender, newAmount, sellerAmount);
			emit Bid(_id, msg.sender, newAmount, previousBidderReward);
    }

		function collect(uint256 _id) external {
			Auction.Data storage auction = auctions[_id];
			require(auction.getStatus() == 2, "invalid status");
			require(auction.lastBidder == msg.sender || auction.seller == msg.sender, "not authorized");
			require(!auction.isTaken, "alrady collected");
			// transfer NFT to lastBidder
			auction.nft.safeTransferFrom(address(this), auction.lastBidder, auction.tokenId);

			//send sold amount to seller
			posi.transfer(auction.seller, auction.raisedAmount);
			auction.isTaken = true;
		}


		function getBackNFT(uint256 _id) external {
			Auction.Data storage auction = auctions[_id];
			require(auction.seller == msg.sender, "only seller");
			require(auction.getStatus() == 3, "invalid status");
			require(!auction.isTaken, "already taken");
			auction.nft.safeTransferFrom(address(this), auction.seller, auction.tokenId);
			auction.isTaken = true;
		}

}
