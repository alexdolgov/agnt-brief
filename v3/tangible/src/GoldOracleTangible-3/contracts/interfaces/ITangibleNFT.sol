// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";

/// @title ITangibleNFT interface defines the interface of the TangibleNFT
interface ITangibleNFT is IERC721, IERC721Metadata, IERC721Enumerable {
    event StoragePricePerYearSet(uint256 oldPrice, uint256 newPrice);
    event StoragePercentagePricePerYearSet(
        uint256 oldPercentage,
        uint256 newPercentage
    );
    event StorageFeeToPay(
        uint256 indexed tokenId,
        uint256 _years,
        uint256 amount
    );
    event ProducedTNFT(uint256 tokenId);
    event ProducedTNFTs(uint256[] tokenId);

    // /// @dev Function allows a Factory to mint tokenId for provided vendorId to the given address(stock storage, usualy marketplace).
    // function produceTNFTtoStock(uint128 vendorId, address toStock, string calldata brandName) external returns (uint256);

    /// @dev Function allows a Factory to mint multiple tokenIds for provided vendorId to the given address(stock storage, usualy marketplace)
    /// with provided count.
    function produceMultipleTNFTtoStock(
        uint128 vendorId,
        uint256 count,
        address toStock,
        string calldata brandName
    ) external returns (uint256[] memory);

    /// @dev Function that provides info of how much TNFTs has the vendor produced(minted)
    function vendorProducedTNFTs(uint128 vendorId)
        external
        view
        returns (uint256);

    /// @dev Function that provides lists all TNFTs that vendor ever produced for this category
    function listTNFTsByVendor(uint128 vendorId)
        external
        view
        returns (uint256[] memory);

    /// @dev Function allows the Factory to burn all requested token IDs.
    function destroyTNFTs(uint256[] memory tokenId, address burningFrom)
        external;

    /// @dev The function returns whether storage fee is paid for the current time.
    function isStorageFeePaid(uint256 tokenId) external view returns (bool);

    /// @dev The function returns what is the last timestamp of the paid storage.
    function storageEndTime(uint256 tokenId) external view returns (uint256);

    /// @dev The function returns the price per year for storage.
    function storagePricePerYear() external view returns (uint256);

    /// @dev The function returns the percentage of item price that is used for calculating storage.
    function storagePercentagePricePerYear() external view returns (uint256);

    /// @dev The function returns whether storage for the TNFT is paid in fixed amount or in percentage from price
    function storagePriceFixed() external view returns (bool);

    /// @dev The function accepts takes tokenId, its price and years sets storage and returns amount to pay for.
    function adjustStorageAndGetAmount(
        uint256 tokenId,
        uint256 _years,
        uint256 tokenPrice
    ) external returns (uint256);

    /// @dev The function sets the brand name for the token
    function setBrand(uint256 tokenId, string calldata brand) external;

    /// @dev The function approved brands for the nft
    function addApprovedBrand(string calldata brand) external;

    //returns approved brands
    function getApprovedBrands() external view returns (string[] memory);

    /// @dev The function returns the brand name for the token
    function tokenBrand(uint256 tokenId) external returns (string memory);
}
