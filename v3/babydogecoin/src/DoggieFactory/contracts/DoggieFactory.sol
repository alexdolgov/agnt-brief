//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./DoggieMintingStation.sol";

contract DoggieFactory is Ownable {
    using SafeERC20 for IERC20;

    DoggieMintingStation public doggieMintingStation;

    IERC20 public cakeToken;

    // starting block
    uint256 public startBlockNumber;

    // Number of CAKEs a user needs to pay to acquire a token
    uint256 public tokenPrice;

    // Map if address has already claimed a NFT
    mapping(address => bool) public hasClaimed;

    // number of total series (i.e. different visuals)
    uint8 private constant numberDoggieIds = 3;

    // Event to notify when NFT is successfully minted
    event doggieMint(
        address indexed to,
        uint256 indexed tokenId,
        uint8 indexed doggieId
    );

    constructor(
        DoggieMintingStation _doggieMintingStation,
        IERC20 _cakeToken,
        uint256 _tokenPrice,
        uint256 _startBlockNumber
    ) {
        doggieMintingStation = _doggieMintingStation;
        cakeToken = _cakeToken;
        tokenPrice = _tokenPrice;
        startBlockNumber = _startBlockNumber;
    }

    /**
     * @dev Mint NFTs from the doggieMintingStation contract.
     * Users can specify what doggieId they want to mint. Users can claim once.
     */
    function mintNFT(uint8 _doggieId) external {
        address senderAddress = _msgSender();

        // Check _msgSender() has not claimed
        require(!hasClaimed[senderAddress], "Has claimed");
        // Check block time is not too late
        require(block.number > startBlockNumber, "too early");
        // Check that the _doggieId is within boundary:
        require(_doggieId < numberDoggieIds, "doggieId too high");

        // Update that _msgSender() has claimed
        hasClaimed[senderAddress] = true;

        // Send CAKE tokens to this contract
        cakeToken.safeTransferFrom(senderAddress, address(this), tokenPrice);

        uint256 tokenId =
            doggieMintingStation.mintCollectible(
                senderAddress,
                _doggieId
            );

        emit doggieMint(senderAddress, tokenId, _doggieId);
    }

    /**
     * @dev It transfers the CAKE tokens back to the chef address.
     * Only callable by the owner.
     */
    function claimFee(uint256 _amount) external onlyOwner {
        cakeToken.safeTransfer(_msgSender(), _amount);
    }


    /**
     * @dev Set a unique URI for each team
     */
    function setTeamURIs(string[] calldata _teamURIs)
    external
    onlyOwner
    {
        uint256 _numberDoggieIds = numberDoggieIds;
        require(_teamURIs.length == _numberDoggieIds, "Invalid length");
        uint256[] memory _teamIds = new uint256[](_numberDoggieIds);
        for(uint i = 0; i < _numberDoggieIds; i++) {
            _teamIds[i] = i;
        }
        doggieMintingStation.setTeamURIs(_teamIds, _teamURIs);
    }

    /**
     * @dev Allow to set up the start number
     * Only the owner can set it.
     */
    function setStartBlockNumber(uint256 _newStartBlockNumber)
        external
        onlyOwner
    {
        require(_newStartBlockNumber > block.number, "too short");
        startBlockNumber = _newStartBlockNumber;
    }

    /**
     * @dev Allow to change the token price
     * Only the owner can set it.
     */
    function updateTokenPrice(uint256 _newTokenPrice) external onlyOwner {
        tokenPrice = _newTokenPrice;
    }

    function canMint(address userAddress) external view returns (bool) {
        return !hasClaimed[userAddress];
    }
}