//          .8.              ,o888888o.    8 888888888o.   `8.`8888.      ,8' 8 888888888o   8888888 8888888888     ,o888888o.        d888888o.
//         .888.            8888     `88.  8 8888    `88.   `8.`8888.    ,8'  8 8888    `88.       8 8888        . 8888     `88.    .`8888:' `88.
//        :88888.        ,8 8888       `8. 8 8888     `88    `8.`8888.  ,8'   8 8888     `88       8 8888       ,8 8888       `8b   8.`8888.   Y8
//       . `88888.       88 8888           8 8888     ,88     `8.`8888.,8'    8 8888     ,88       8 8888       88 8888        `8b  `8.`8888.
//      .8. `88888.      88 8888           8 8888.   ,88'      `8.`88888'     8 8888.   ,88'       8 8888       88 8888         88   `8.`8888.
//     .8`8. `88888.     88 8888           8 888888888P'        `8. 8888      8 888888888P'        8 8888       88 8888         88    `8.`8888.
//    .8' `8. `88888.    88 8888           8 8888`8b             `8 8888      8 8888               8 8888       88 8888        ,8P     `8.`8888.
//   .8'   `8. `88888.   `8 8888       .8' 8 8888 `8b.            8 8888      8 8888               8 8888       `8 8888       ,8P  8b   `8.`8888.
//  .888888888. `88888.     8888     ,88'  8 8888   `8b.          8 8888      8 8888               8 8888        ` 8888     ,88'   `8b.  ;8.`8888
// .8'       `8. `88888.     `8888888P'    8 8888     `88.        8 8888      8 8888               8 8888           `8888888P'      `Y8888P ,88P'

// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

// Using @openzeppelin/contracts@4.5.0
import "./ACryptoSBeaconProxy.sol";

// Using @openzeppelin/contracts-upgradeable@4.5.2
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "./ACryptoSVaultsController.sol";

contract ACryptoSVaultFactory is Initializable, UUPSUpgradeable {
    ACryptoSVaultsController public controller;
    mapping(address => bytes4) public authorizedBeacons;
    mapping(bytes => address) public proxyById;
    mapping(address => address) public beaconByProxy;
    mapping(address => address[]) public proxiesByBeacon;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address _controller) public initializer {
        controller = ACryptoSVaultsController(_controller);
    }

    function setController(address _controller)
        external
        virtual
        onlyGovernance
    {
        controller = ACryptoSVaultsController(_controller);
    }

    function setAuthorizedBeacon(address beacon, bytes4 signature)
        external
        virtual
        onlyStrategist
    {
        authorizedBeacons[beacon] = signature;
    }

    function createProxyForceReplace(address beacon, bytes calldata data)
        external
        onlyStrategist
        returns (ACryptoSBeaconProxy)
    {
        address oldProxy = proxyById[abi.encode(beacon, data)];
        delete beaconByProxy[oldProxy];

        uint i;
        for (i = 0; i < proxiesByBeacon[beacon].length; i++) {
            if (proxiesByBeacon[beacon][i] == oldProxy) break;
        }

        require(data.length > 4, "!data");
        require(authorizedBeacons[beacon] == bytes4(data[:4]), "!authorized");

        ACryptoSBeaconProxy proxy = new ACryptoSBeaconProxy(beacon, data);
        proxyById[abi.encode(beacon, data)] = address(proxy);
        beaconByProxy[address(proxy)] = beacon;
        proxiesByBeacon[beacon][i] = address(proxy);

        return proxy;
    }

    function createProxy(address beacon, bytes calldata data)
        external
        onlyStrategist
        returns (ACryptoSBeaconProxy)
    {
        require(
            proxyById[abi.encode(beacon, data)] == address(0),
            "!duplicate"
        );
        require(data.length > 4, "!data");
        require(authorizedBeacons[beacon] == bytes4(data[:4]), "!authorized");

        ACryptoSBeaconProxy proxy = new ACryptoSBeaconProxy(beacon, data);
        proxyById[abi.encode(beacon, data)] = address(proxy);
        beaconByProxy[address(proxy)] = beacon;
        proxiesByBeacon[beacon].push(address(proxy));

        return proxy;
    }

    function getAllProxiesByBeacon(address beacon)
        external
        view
        returns (address[] memory)
    {
        return proxiesByBeacon[beacon];
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyGovernance
    {}

    modifier onlyGovernance() {
        _onlyGovernance();
        _;
    }

    modifier onlyStrategist() {
        _onlyStrategist();
        _;
    }

    function _onlyGovernance() internal view virtual {
        require(
            controller.hasRole(controller.DEFAULT_ADMIN_ROLE(), msg.sender),
            "!governance"
        );
    }

    function _onlyStrategist() internal view virtual {
        require(
            controller.hasRole(controller.DEFAULT_ADMIN_ROLE(), msg.sender) ||
                controller.hasRole(controller.STRATEGIST_ROLE(), msg.sender),
            "!strategist"
        );
    }
}
