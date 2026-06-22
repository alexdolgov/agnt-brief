// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract KetPfpMinter is OwnableUpgradeable, PausableUpgradeable, UUPSUpgradeable {
    error InvalidTier();
    error InsufficientWhitelist();
    error InsufficientSupply();
    error InsufficientPayment();
    error TransferFailed();
    error NoTokensToMint();

    function CURRENT_VERSION() public pure virtual returns (uint256) {
        return 1;
    }

    uint256 public constant NUM_TIERS = 6; // Tiers 0-5

    uint256 public implementationVersion;
    IERC721 public nftContract;
    uint256 public tier0MintFee;

    // tier => array of token IDs available in that tier
    mapping(uint256 => uint256[]) public tierTokenIds;

    // wallet => tier => number of mints allowed
    mapping(address => mapping(uint256 => uint256)) public whitelist;

    uint256[44] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address nftContract_) public initializer {
        __Ownable_init(msg.sender);
        __Pausable_init();
        __UUPSUpgradeable_init();

        implementationVersion = CURRENT_VERSION();
        nftContract = IERC721(nftContract_);

        _pause();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
        require(newImplementation.code.length > 0, "Not a contract");
        uint256 newVersion = KetPfpMinter(newImplementation).CURRENT_VERSION();
        require(newVersion > implementationVersion, "Must upgrade to higher version");
        implementationVersion = newVersion;
    }

    function deposit(uint256 tier, uint256[] calldata tokenIds) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier();

        for (uint256 i; i < tokenIds.length; i++) {
            nftContract.transferFrom(msg.sender, address(this), tokenIds[i]);
            tierTokenIds[tier].push(tokenIds[i]);
        }
    }

    function setWhitelist(address wallet, uint256 tier, uint256 amount) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier();
        whitelist[wallet][tier] = amount;
    }

    function setWhitelistBatch(
        address[] calldata wallets,
        uint256[] calldata tiers,
        uint256[] calldata amounts
    ) external onlyOwner {
        require(wallets.length == tiers.length && tiers.length == amounts.length, "Array length mismatch");
        for (uint256 i; i < wallets.length; i++) {
            if (tiers[i] >= NUM_TIERS) revert InvalidTier();
            whitelist[wallets[i]][tiers[i]] = amounts[i];
        }
    }

    function setTier0Fee(uint256 fee) external onlyOwner {
        tier0MintFee = fee;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function withdraw() external onlyOwner {
        uint256 balance = address(this).balance;
        (bool success,) = msg.sender.call{value: balance}("");
        if (!success) revert TransferFailed();
    }

    function withdrawNFTs(uint256 tier, uint256[] calldata tokenIds) external onlyOwner {
        if (tier >= NUM_TIERS) revert InvalidTier();

        for (uint256 i; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            // Find and remove from tier array
            uint256[] storage tierArray = tierTokenIds[tier];
            for (uint256 j = 0; j < tierArray.length; j++) {
                if (tierArray[j] == tokenId) {
                    tierArray[j] = tierArray[tierArray.length - 1];
                    tierArray.pop();
                    break;
                }
            }
            nftContract.transferFrom(address(this), msg.sender, tokenId);
        }
    }

    function mint(uint256 tier, uint256 amount) external payable whenNotPaused {
        if (amount == 0) revert NoTokensToMint();
        if (tierTokenIds[tier].length < amount) revert InsufficientSupply();

        if (tier == 0 && tier0MintFee > 0) {
            // Check payment for tier 0, if tier 0 and a fee is set
            if (msg.value != tier0MintFee * amount) revert InsufficientPayment();
        } else {
            // Otherwise, ensure that enough whitelist amount is available for the user first
            if (whitelist[msg.sender][tier] < amount) revert InsufficientWhitelist();
            // Then decrement it
            whitelist[msg.sender][tier] -= amount;
        }

        for (uint256 i; i < amount; i++) {
            uint256 tokenId = _popRandomToken(tier);
            nftContract.transferFrom(address(this), msg.sender, tokenId);
        }
    }

    function _popRandomToken(uint256 tier) internal returns (uint256) {
        uint256[] storage tierArray = tierTokenIds[tier];
        uint256 lastIndex = tierArray.length - 1;

        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % tierArray.length;
        uint256 tokenId = tierArray[randomIndex];

        // Swap with last element and pop
        tierArray[randomIndex] = tierArray[lastIndex];
        tierArray.pop();

        return tokenId;
    }

    function getAvailableInTier(uint256 tier) external view returns (uint256) {
        return tierTokenIds[tier].length;
    }

    function getWhitelistAmount(address wallet, uint256 tier) external view returns (uint256) {
        return whitelist[wallet][tier];
    }
}
