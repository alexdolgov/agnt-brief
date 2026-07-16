// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {Address} from "../lib/openzeppelin-contracts/contracts/utils/Address.sol";
import {BeaconProxy} from "../lib/openzeppelin-contracts/contracts/proxy/beacon/BeaconProxy.sol";

import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {Ownable2StepUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";

import {IJuniorBoostHelper} from "./interfaces/IJuniorBoostHelper.sol";
import {IJuniorBoostHelperFactory} from "./interfaces/IJuniorBoostHelperFactory.sol";

contract JuniorBoostHelperFactory is
    Initializable,
    Ownable2StepUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    IJuniorBoostHelperFactory
{
    using Address for address;

    address public morpho;
    address public orderBook;
    address public proxyImplementation;

    mapping(address => bool) public isProxy;
    mapping(address => address) public proxyOf;
    mapping(address => address) public ownerOf;

    function initialize(
        address morpho_,
        address orderBook_
    ) external initializer {
        __Pausable_init();
        __Ownable_init();
        __Ownable2Step_init();

        require(morpho_ != address(0), "Morpho address is required");
        require(orderBook_ != address(0), "OrderBook address is required");

        morpho = morpho_;
        orderBook = orderBook_;
    }

    function implementation() external view returns (address) {
        return proxyImplementation;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setProxyImplementation(
        address proxyImplementation_
    ) external onlyOwner {
        require(proxyImplementation_ != address(0), "Invalid implementation");
        proxyImplementation = proxyImplementation_;
        emit SetProxyImplementation(proxyImplementation_);
    }

    function setMorpho(address morpho_) external onlyOwner {
        require(morpho_ != address(0), "Morpho address is required");
        require(morpho_ != address(morpho), "Address is already set");
        morpho = morpho_;

        emit SetMorpho(morpho_);
    }

    function setOrderBook(address orderBook_) external onlyOwner {
        require(orderBook_ != address(0), "OrderBook address is required");
        require(orderBook_ != address(orderBook), "Address is already set");
        orderBook = orderBook_;

        emit SetOrderBook(orderBook_);
    }

    function getProxyAddress(
        address proxyOwner
    ) external view returns (address) {
        require(proxyOwner != address(0), "Invalid proxy owner");
        if (proxyOf[proxyOwner] != address(0)) {
            return proxyOf[proxyOwner];
        }
        bytes32 salt = keccak256(abi.encode(proxyOwner));
        bytes memory bytecode = _getByteCode(proxyOwner);
        bytes32 hash = keccak256(
            abi.encodePacked(
                bytes1(0xff),
                address(this),
                salt,
                keccak256(bytecode)
            )
        );
        return address(uint160(uint256(hash)));
    }

    function create() public whenNotPaused returns (address proxy) {
        address proxyOwner = msg.sender;
        require(proxyOf[proxyOwner] == address(0), "Already has a proxy");

        proxy = _createBeaconProxy(proxyOwner);
        ownerOf[proxy] = proxyOwner;
        proxyOf[proxyOwner] = proxy;
        isProxy[proxy] = true;

        emit CreateProxy(proxyOwner, proxy);
    }

    function proxyCall(
        bytes calldata data
    ) external payable whenNotPaused nonReentrant returns (bytes memory) {
        address proxy = proxyOf[msg.sender];
        if (proxy == address(0)) {
            proxy = create();
        }
        return proxy.functionCallWithValue(data, msg.value);
    }

    function _createBeaconProxy(
        address proxyOwner
    ) internal returns (address proxy) {
        bytes32 salt = keccak256(abi.encode(proxyOwner));
        bytes memory bytecode = _getByteCode(proxyOwner);
        assembly {
            proxy := create2(0x0, add(0x20, bytecode), mload(bytecode), salt)
        }
        require(proxy != address(0), "Create beacon proxy failed");
    }

    function _getByteCode(
        address proxyOwner
    ) internal view returns (bytes memory) {
        bytes memory initData = abi.encodeWithSignature(
            "initialize(address,address,address)",
            proxyOwner,
            morpho,
            orderBook
        );
        return
            abi.encodePacked(
                type(BeaconProxy).creationCode,
                abi.encode(address(this), initData)
            );
    }
}
