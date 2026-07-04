// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { ERC721Enumerable } from "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/// @title RewardNFT
/// @dev This contract implements an ERC721 token with a capped supply and functionality for marking NFTs as "in use" by approved callers.
contract RewardNFT is ERC721Enumerable, Ownable {

    /// @notice Maximum number of NFTs that can be minted.
    uint256 public constant MAX_SUPPLY = 500;
    uint256 private _totalSupply;
    string private _baseTokenURI;

    /// @dev Tracks the number of times an NFT is marked as "in use".
    mapping (uint256 => uint256) public countNFTUsing;
    /// @dev Maps user addresses and callers to arrays of NFT IDs, indicating which NFTs are "in use" by which caller for each user.
    mapping (address => mapping (address => uint256[])) public userRangePositionManagerNFTs;
    /// @dev Tracks addresses that are allowed to mark NFTs as "in use".
    mapping (address => bool) public isAllowedCaller;
    /// @dev Tracks the amount of required amounts for each caller contract
    mapping (address => uint256) public requiredAmountsPerAddress;
    /// @dev Tracks if it was the first call of this address
    mapping (address => bool) public addressCalled;

    /// @notice Custom error for attempting to use more NFTs than owned.
    error NotEnoughNFTs();
    /// @notice Custom error for attempting to transfer an NFT that is marked as "in use".
    error TokenNotToTransfer();
    /// @notice Custom error for calls from addresses not allowed to mark NFTs as "in use".
    error NotAllowedCaller();
    /// @notice Custom error for checking if the required amount is still the same
    error NotMatchingRequiredAmount();
    /// @notice Custom error when total supply is reached
    error MaxTotalSupplyReached();
    /// @notice Custom error for 0 amount NFTs minted
    error CannotMint0Amount();

    constructor() ERC721("YflowNFT", "YflowNFT") {}

    /// @notice Sets whether an address is allowed to mark NFTs as "in use".
    /// @param _caller The address to update.
    /// @param _status The allowed status (true or false).
    function setIsAllowedCaller(address _caller, bool _status) external onlyOwner {
        isAllowedCaller[_caller] = _status;
    }

    /// @notice Marks a specified number of NFTs owned by a user as "in use" for a caller.
    /// @param _user The owner of the NFTs.
    /// @param _requiredAmount The number of NFTs to mark as "in use".
    /// @dev Reverts if the caller is not allowed or the user does not own enough NFTs.
    function setNFTsInUse(address _user, uint256 _requiredAmount) external {
        if (!isAllowedCaller[msg.sender]) {
            revert NotAllowedCaller();
        }

        // check if the _requiredAmount changed - should not be changed
        if (addressCalled[msg.sender] == false) {
            addressCalled[msg.sender] = true;
            requiredAmountsPerAddress[msg.sender] = _requiredAmount;
        } else {
            if (_requiredAmount != requiredAmountsPerAddress[msg.sender]) {
                revert NotMatchingRequiredAmount();
            }
        }

        if(userRangePositionManagerNFTs[_user][msg.sender].length >= _requiredAmount) {
            return;
        }

        uint256 userAmount = super.balanceOf(_user);
        if (userAmount < _requiredAmount) {
            revert NotEnoughNFTs();
        }

        for(uint256 i; i < _requiredAmount; i++) {
            uint256 nftId = super.tokenOfOwnerByIndex(_user, i);
            countNFTUsing[nftId]++;
            userRangePositionManagerNFTs[_user][msg.sender].push(nftId);
        }
    }

    /// @notice Marks all NFTs previously marked as "in use" by a caller for a user as no longer in use.
    /// @param _user The owner of the NFTs.
    /// @dev Reverts if the caller is not allowed.
    function setNFTsUnused(address _user) external {
        if (!isAllowedCaller[msg.sender]) {
            revert NotAllowedCaller();
        }

        for(uint256 i; i < userRangePositionManagerNFTs[_user][msg.sender].length; i++) {
            uint256 nftId = userRangePositionManagerNFTs[_user][msg.sender][i];
            countNFTUsing[nftId]--;
        }

        delete userRangePositionManagerNFTs[_user][msg.sender];
    }


    /// @notice Mints a new token to the contract owner.
    /// @dev Reverts if the max total supply has been reached.
    function ownerMint() public onlyOwner {
        if (_totalSupply >= MAX_SUPPLY) {
            revert MaxTotalSupplyReached();
        }

        uint256 tokenId = _totalSupply;
        _totalSupply++;
        _mint(owner(), tokenId);
    }

    /// @notice Mints a batch of new tokens to a specified address.
    /// @param mintTo The address to mint tokens to.
    /// @param amount The number of tokens to mint.
    /// @dev Reverts if minting the specified amount would exceed the max total supply.
    function batchMint(address mintTo, uint amount) public onlyOwner {
        if (_totalSupply + amount > MAX_SUPPLY) {
            revert MaxTotalSupplyReached();
        }
        if(amount == 0){
            revert CannotMint0Amount();
        }

        for (uint i; i < amount; i++) {
            uint256 tokenId = _totalSupply;
            _totalSupply++;
            _mint(mintTo, tokenId);
        }
    }



    /// @notice Sets the base URI for computing {tokenURI}.
    /// @param baseURI The base URI to set.
    function setBaseURI(string calldata baseURI) public onlyOwner {
        _baseTokenURI = baseURI;
    }

    /// @notice Returns the total number of tokens in existence.
    /// @return The total supply of tokens.
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /// @dev Hook that is called before any token transfer.
    /// @param from The address transferring the token.
    /// @param to The address receiving the token.
    /// @param tokenId The ID of the token being transferred.
    /// @param batchSize The number of tokens being transferred (always 1 for ERC721).
    /// @notice Reverts if the token is marked as "in use".
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId,
        uint256 batchSize
    ) internal override {
        if (countNFTUsing[tokenId] != 0) {
            revert TokenNotToTransfer();
        }

        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    /// @dev Returns the base URI set by the contract owner.
    /// @return The base URI for computing {tokenURI}.
    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }
}
