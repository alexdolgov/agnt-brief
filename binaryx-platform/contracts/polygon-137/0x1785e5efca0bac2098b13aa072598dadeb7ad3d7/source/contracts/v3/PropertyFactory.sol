// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./AssetBeacon.sol";
import "./RewardsDistributor.sol";
import "./Asset.sol";

contract PropertyFactory is Initializable {
    modifier onlyOwner() {
        require(msg.sender == addressesProvider.getPropertyFactoryAdmin(), "PropertyFactory: caller is not the PropertyFactoryAdmin");
        _;
    }

    event NewAsset(address indexed asset, uint256 timestamp);

    IAddressesProvider public addressesProvider;
    address[] public assets;
    AssetBeacon beacon;

    function initialize(address _addressesProvider, address _assetImplementation) public initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
        beacon = new AssetBeacon(_assetImplementation);
    }

    function getVersion() external pure returns (uint256) {
        return 3;
    }

    function getAssetLength() external view returns (uint256) {
        return assets.length;
    }

    function getAssets() external view returns (address[] memory) {
        return assets;
    }

    function deployAsset(
        string memory name,
        string memory symbol,
        uint256 maxTotalSupply,
        uint256 saleEndDate,
        address buyToken,
        address chainLinkPrice
    ) external onlyOwner returns (address) {
        BeaconProxy asset = new BeaconProxy(
            address(beacon),
            abi.encodeWithSelector(
                Asset(address(0)).__Asset_init.selector,
                address(addressesProvider),
                chainLinkPrice,
                name,
                symbol,
                maxTotalSupply,
                saleEndDate,
                ERC20(buyToken)
            )
        );
        assets.push(address(asset));
        emit NewAsset(address(asset), block.timestamp);
        return address(asset);
    }

    function getBeacon() public view returns (address) {
        return address(beacon);
    }

    function getImplementation() public view returns (address) {
        return beacon.implementation();
    }
}
