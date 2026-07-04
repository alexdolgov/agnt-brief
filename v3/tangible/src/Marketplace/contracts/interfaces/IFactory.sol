// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./IVoucher.sol";
import "./ITangiblePriceManager.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IFactory interface defines the interface of the Factory which creates NFTs.
interface IFactory is IVoucher {
    event FeeStorageAddressSet(
        address indexed oldAddress,
        address indexed newAddress
    );
    event PriceManagerSet(
        address indexed oldAddress,
        address indexed newAddress
    );
    event DeployerAddressSet(
        address indexed oldAddress,
        address indexed newAddress
    );
    event MarketplaceAddressSet(
        address indexed oldAddress,
        address indexed newAddress
    );
    event MintedTokens(address indexed nft, uint256[] tokenIds);
    event ApprovedVendor(address vendorId, bool approved);
    event ApprovedStorageOperator(address storageOperatorId, bool approved);
    event NewCategoryDeployed(address tnftCategory);

    /// @dev The function which does lazy minting.
    function mint(MintVoucher calldata voucher)
        external
        returns (uint256[] memory);

    /// @dev The function lazy-burns tokens.
    function burn(BurnVoucher calldata voucher) external;

    /// @dev The function returns the address of the fee storage.
    function feeStorageAddress() external view returns (address);

    /// @dev The function returns the address of the marketplace.
    function marketplace() external view returns (address);

    /// @dev The function returns the address of the tnft deployer.
    function deployer() external view returns (address);

    /// @dev The function returns the address of the priceManager.
    function priceManager() external view returns (ITangiblePriceManager);

    /// @dev The function returns the address of the USDC token.
    function USDC() external view returns (IERC20);

    /// @dev The function creates new category and returns an address of newly created contract.
    function newCategory(
        string calldata name,
        string calldata symbol,
        string calldata uri,
        bool isStoragePriceFixedAmount,
        address priceOracle
    ) external returns (ITangibleNFT);

    /// @dev The function returns an address of category NFT.
    function category(string calldata name)
        external
        view
        returns (ITangibleNFT);

    /// @dev The function returns if address is operator in Factory
    function isFactoryOperator(address operator) external view returns (bool);

    /// @dev The function returns if address is vendor in Factory
    function isFactoryAdmin(address admin) external view returns (bool);

    /// @dev The function pays for storage, called only by marketplace
    function adjustStorageAndGetAmount(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 _years,
        uint256 tokenPrice
    ) external returns (uint256);

    /// @dev return list of all vendors
    function getVendors() external view returns (address[] memory);

    /// @dev adds brand to the provided nft
    function approveBrandForTnft(ITangibleNFT nft, string calldata brand)
        external;

    /// @dev returns vendor for provided vendorId
    function idToVendor(uint128 vendorId) external view returns (address);

    /// @dev updates oracle for already deployed tnft
    function updateOracleForTnft(string calldata name, address priceOracle)
        external;

    /// @dev for migration puproses, we must avoid unnecessary deployments on new factories!
    function setCategory(
        string calldata name,
        ITangibleNFT nft,
        address priceOracle
    ) external;
}
