// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IFactory.sol";

/// @title IMarketplace interface defines the interface of the Marketplace
interface IMarketplace is IVoucher {
    struct Lot {
        ITangibleNFT nft;
        uint256 tokenId;
        address seller;
        uint256 price;
        bool minted;
    }

    event Selling(
        address indexed seller,
        address indexed nft,
        uint256 indexed tokenId,
        uint256 price
    );
    event StopSelling(
        address indexed seller,
        address indexed nft,
        uint256 indexed tokenId
    );
    event Bought(
        address indexed buyer,
        address indexed nft,
        uint256 indexed tokenId,
        address seller,
        uint256 price
    );

    event SellFeeAddressSet(address indexed oldFee, address indexed newFee);
    event SellFeeChanged(uint256 indexed oldFee, uint256 indexed newFee);
    event SetFactory(address indexed oldFactory, address indexed newFactory);
    event StorageFeePaid(
        uint256 indexed tokenId,
        uint256 _years,
        uint256 amount
    );

    /// @dev The function allows anyone to put on sale the TangibleNFT they own
    /// if price is 0 - use oracle when selling
    function sell(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 price
    ) external;

    /// @dev The function allows the owner of the minted TangibleNFT item to remove it from the Marketplace
    function stopSale(ITangibleNFT nft, uint256 tokenId) external;

    /// @dev The function allows the user to buy any TangibleNFT from the Marketplace for USDC
    function buy(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) external;

    /// @dev The function allows the user to buy any TangibleNFT from the Marketplace for USDC
    function buyUnminted(
        ITangibleNFT nft,
        address _vendor,
        string calldata _brand,
        uint256 _years
    ) external;

    /// @dev The function returns the address of the fee storage.
    function sellFeeAddress() external view returns (address);

    /// @dev The function which buys additional storage to token.
    function payStorage(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) external;

    ///@dev Function to take price from oracle
    function priceFromOracle(ITangibleNFT nft) external view returns (uint256);

    ///@dev Function to convert oracle price with provided decimals to usdc
    function convertPriceToUSDC(uint256 price, uint8 decimals)
        external
        pure
        returns (uint256);

    ///@dev Function that returns decimals from oracle
    function decimalsFromOracle(ITangibleNFT nft) external view returns (uint8);

    ///@dev Function that returns latest timestamp from oracle
    function latestTimeStampFromOracle(ITangibleNFT nft)
        external
        view
        returns (uint256);
}
