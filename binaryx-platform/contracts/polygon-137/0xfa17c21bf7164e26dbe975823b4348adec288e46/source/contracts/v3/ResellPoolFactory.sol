// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./ResellPoolBeacon.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IResellPoolFactory.sol";
import "./ResellPool.sol";

contract ResellPoolFactory is Initializable, IResellPoolFactory {
    IAddressesProvider public addressesProvider;
    ResellPoolBeacon beacon;
    address[] public resellPools;

    // pool => asset
    mapping(address => address) public poolByAsset;

    // asset => pools
    mapping(address => address[]) public poolsByAsset;

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "Only admin can call this function");
        _;
    }

    function initialize(address _addressesProvider, address _poolImplementation) public initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
        beacon = new ResellPoolBeacon(_poolImplementation);
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }

    function getResellPoolsLength() external view override returns (uint256) {
        return resellPools.length;
    }

    function getResellPools() external view override returns (address[] memory) {
        return resellPools;
    }

    function getPoolsByAsset(address asset) external view override returns (address[] memory) {
        return poolsByAsset[asset];
    }

    function deployResellPool(address asset, address buyToken) external override onlySuperOracle returns (address) {
        BeaconProxy pool = new BeaconProxy(
            address(beacon),
            abi.encodeWithSelector(
                ResellPool(address(0)).__Pool_init.selector,
                address(addressesProvider),
                Asset(asset),
                ERC20(buyToken)
            )
        );
        resellPools.push(address(pool));
        poolsByAsset[asset].push(address(pool));
        poolByAsset[address(pool)] = asset;
        emit NewPool(address(pool), block.timestamp);
        return address(pool);
    }

    function getBeacon() public view returns (address) {
        return address(beacon);
    }

    function getImplementation() public view returns (address) {
        return beacon.implementation();
    }
}
