// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Votes.sol";

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Alta Finance Invest Contract
/// @dev This contract enables fractional ownership of real-world assets through NFTs.
contract AltaFinanceInvestNFT is
    IERC721Receiver,
    ERC721Enumerable,
    ERC721URIStorage,
    Pausable,
    Ownable,
    EIP712,
    ERC721Votes,
    ReentrancyGuard
{
    // Using SafeMath for arithmetic operations to prevent overflows/underflows.
    // SafeERC20 ensures safe interactions with the ERC20 tokens.
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using Counters for Counters.Counter;

    // Constants
    uint16 public constant version = 1; // Contract version
    uint256 constant interestFactor = 10_000; // Interest factor

    // Events
    event Investment(uint256 _amountPerNft, address indexed _investor);
    event TokenTransfer(uint256 _amount, address indexed _investor);
    event Transfer(address indexed _oldInvestor, address indexed _newInvestor);
    event SetURI(string _uri);
    event SetAmountPerNFT(uint256 _amount);
    event SetRedemptionAmountPerNFT(uint256 _amount);
    event SetToken(address indexed _token);
    event SetFee(uint16 _fee);
    event SetFeeOwner(address indexed _feeOwner);
    event SetTransferRestrictionBlocks(uint256 _transferRestrictionBlock);
    event PayoutAdded(uint256 _amount, string _title);
    event PayoutRedeemed(address indexed nftOwner, uint256 nftId, uint256 amountPerNft);
    event Redemption(uint256 _amountPerNft, address indexed investor);
    event Received(address, uint256);
    event SetClosed();

    struct Payout {
        string title; // title of payout [Date or Reason]
        uint256 totalAmount; // total amount of Payout
        uint256 amountPerNft; // amount per nft for payout
        uint256 amountRedeemed; // total amount redeemed to date
    }
    Payout[] public payouts;
    mapping(uint256 => mapping(uint256 => bool)) public redeemedPayouts;

    // State variables
    string public baseUri;
    Counters.Counter public _tokenIdCounter;
    address public sponsor;
    uint256 public blockDeployed;
    uint256 public transferRestrictionBlocks;
    uint256 public amountPerNft;
    uint256 public redemptionAmountPerNft;
    address public token;
    bool public closed;
    uint256 public maxMinted;
    uint16 public fee; // Fee for the platform. Represented as a fraction of interestFactor
    address public feeOwner; // The address that receives the fee

    modifier onlyInvestSponsor() {
        require(sponsor == msg.sender, "Must be invest offering sponsor");
        _;
    }

    modifier statusClosed() {
        require(closed == true, "Invest offering must be closed");
        _;
    }

    modifier statusOpen() {
        require(closed == false, "Invest offering must be open");
        _;
    }

    constructor(
        string memory name,
        string memory symbol,
        string memory _baseUri,
        address _sponsor,
        address _token,
        uint16 _fee,
        address _feeOwner,
        uint256 _amountPerNft,
        uint256 _maxMinted,
        uint256 _transferRestrictionBlocks
    ) ERC721(name, symbol) EIP712(name, "1") {
        _transferOwnership(_sponsor);
        baseUri = _baseUri;
        sponsor = _sponsor;
        blockDeployed = block.number;
        transferRestrictionBlocks = _transferRestrictionBlocks;
        amountPerNft = _amountPerNft;
        token = _token;
        fee = _fee; // Default fee is 3% (300/10000)
        feeOwner = _feeOwner;
        closed = false;
        redemptionAmountPerNft = 0;
        maxMinted = _maxMinted;
    }

    // Allows the owner to set the amount per NFT.
    function setAmountPerNft(uint256 _amountPerNft) public onlyInvestSponsor {
        require(_amountPerNft > 0, "Amount per NFT must be greater than zero");
        amountPerNft = _amountPerNft;
        emit SetAmountPerNFT(_amountPerNft);
    }

    // Allows the owner to set the redemption amount per NFT.
    function setRedemptionAmountPerNft(uint256 _redemptionAmountPerNft) public onlyInvestSponsor {
        require(_redemptionAmountPerNft > 0, "Amount per NFT must be greater than zero");
        redemptionAmountPerNft = _redemptionAmountPerNft;
        emit SetRedemptionAmountPerNFT(_redemptionAmountPerNft);
    }

    // Set the token used for transactions.
    function setToken(address _token) public onlyInvestSponsor {
        token = _token;
        emit SetToken(_token);
    }

    // Set the platform fee.
    function setFee(uint16 _fee) public onlyInvestSponsor {
        fee = _fee;
        emit SetFee(_fee);
    }

    // Set the owner of the fee.
    function setFeeOwner(address _feeOwner) public onlyInvestSponsor {
        feeOwner = _feeOwner;
        emit SetFeeOwner(_feeOwner);
    }

    // Set the invest contract to closed for redemptions.
    function setClosed() public onlyInvestSponsor {
        closed = true;
        emit SetClosed();
    }

    function setTransferRestrictionBlocks(
        uint256 _transferRestrictionBlocks
    ) public onlyInvestSponsor {
        transferRestrictionBlocks = _transferRestrictionBlocks;
        emit SetTransferRestrictionBlocks(_transferRestrictionBlocks);
    }

    // allows sponsor to add periodic cash-flow payouts
    function addPayout(
        uint256 _amount,
        string memory _title
    ) public onlyInvestSponsor statusOpen whenNotPaused {
        require(_amount > 0, "Payout amount per nft must be greater than 0");

        uint256 _amountPerNft = _amount.div(maxMinted);

        Payout memory newPayout = Payout(
            _title,
            _amount, // totalAmount
            _amountPerNft, // amountPerNft
            0 // amountRedeemed
        );

        payouts.push(newPayout);

        IERC20(token).safeTransferFrom(msg.sender, address(this), _amount);

        emit PayoutAdded(_amount, _title);
    }

    function getPayoutsCount() public view returns (uint256) {
        return payouts.length;
    }

    // Allows investors to mint ownership shares by making an investment.
    function mintWithPayment(address to) public whenNotPaused statusOpen {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();

        require(Counters.current(_tokenIdCounter) <= maxMinted, "Exceeds max mintable amount");

        // Mint NFTs
        _mint(to, tokenId);
        _setTokenURI(tokenId, "");

        // Calculate the fee and net amount
        uint256 feeAmount = amountPerNft.mul(fee).div(interestFactor);
        uint256 netAmount = amountPerNft.sub(feeAmount);

        // Transfer the token
        IERC20(token).safeTransferFrom(to, feeOwner, feeAmount);
        IERC20(token).safeTransferFrom(to, sponsor, netAmount);

        // Emit an investment event
        emit Investment(amountPerNft, to);
    }

    // Allows the sponsor to mint NFTs without any payment.
    function mintWithoutPayment(address to) public onlyInvestSponsor whenNotPaused statusOpen {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();

        require(Counters.current(_tokenIdCounter) <= maxMinted, "Exceeds max mintable amount");

        // Mint NFTs
        _mint(to, tokenId);
        _setTokenURI(tokenId, "");

        emit Investment(amountPerNft, to);
    }

    function redeemPayout(uint256 _payoutIndex, uint256 _nftId) public whenNotPaused nonReentrant {
        require(_payoutIndex < payouts.length, "Invalid payout index");
        Payout storage payout = payouts[_payoutIndex];

        // Ensure the NFT ID hasn't redeemed this payout before
        require(!redeemedPayouts[_nftId][_payoutIndex], "NFT ID has already redeemed this payout");

        // Ensure the contract has enough funds to pay out
        uint256 contractBalance = IERC20(token).balanceOf(address(this));
        require(contractBalance >= payout.amountPerNft, "Not enough funds to redeem payout");

        // Ensure the caller is the owner of the NFT ID
        address nftOwner = ownerOf(_nftId);
        require(nftOwner == msg.sender, "Caller is not the owner of the NFT ID");

        // Transfer the payout to the NFT owner
        IERC20(token).safeTransfer(nftOwner, payout.amountPerNft);

        // Update the Payout struct and redemption mapping
        payout.amountRedeemed += payout.amountPerNft;
        redeemedPayouts[_nftId][_payoutIndex] = true;

        emit PayoutRedeemed(nftOwner, _nftId, payout.amountPerNft);
    }

    function redemption(uint256 _nftId) public whenNotPaused statusClosed {
        address _burnAddress = address(0x0000000000000000000000000000000000000000);
        require(redemptionAmountPerNft > 0, "Redemption amount must be set to greater than zero");

        require(
            IERC20(token).balanceOf(address(this)) >= redemptionAmountPerNft,
            "Insufficient tokens in contract"
        );

        address nftOwner = ownerOf(_nftId);
        require(nftOwner == msg.sender, "Must be NFT owner to redeem");
        require(nftOwner != address(this), "Contract is not the owner of the NFT");
        require(nftOwner != _burnAddress, "NFT has already been redeemed");
        IERC20(token).transfer(nftOwner, redemptionAmountPerNft);
        
        safeTransferFrom(nftOwner, address(this), _nftId);

        emit Redemption(redemptionAmountPerNft, msg.sender);
    }

    // Override the function to handle the logic before token transfer.
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override(ERC721, ERC721Enumerable) whenNotPaused {
        if (from != address(0)) {
            require(
                block.number > blockDeployed + transferRestrictionBlocks,
                "Transfers are restricted for the initial blocks after deployment"
            );
        } else {
            super._beforeTokenTransfer(from, to, tokenId, batchSize);
            emit Transfer(from, to);
        }
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override(ERC721, ERC721Votes) {
        super._afterTokenTransfer(from, to, tokenId, batchSize);
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes memory data
    ) public override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // The following functions are overrides required by Solidity.
    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return string(abi.encodePacked(baseUri, Strings.toString(tokenId), ".json"));
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC721, ERC721Enumerable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseUri;
    }
}
