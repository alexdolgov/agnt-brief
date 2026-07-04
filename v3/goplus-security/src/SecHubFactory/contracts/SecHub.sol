// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/utils/Context.sol";
import "./interface/ISecHubFactory.sol";
import "./interface/ISecHub.sol";

contract SecHub is ISecHub, Context {
    struct SubscribedInfo {
        bool subscribed;
        bytes config;
        mapping(uint256 => uint256) serviceExpiration;
    }

    mapping(address => SubscribedInfo) public subscribedSecWares;

    ISecHubFactory public immutable factory;
    address public owner;

    event SecWareConfigured(address indexed secWare, bytes config);
    event SecWareSubscribed(
        address indexed secWare,
        uint24 serviceId
    );
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    modifier onlyRouter() {
        require(
            _msgSender() == factory.router(),
            "Not Router"
        );
        _;
    }

    modifier onlyOwner() {
        require(_msgSender() == owner, "Not Owner");
        _;
    }

    constructor(address ownerAddr, address factoryAddr) {
        owner = ownerAddr;
        factory = ISecHubFactory(factoryAddr);
    }

    function onTransferred(address to) external override {
        require(
            _msgSender() == address(factory),
            "Not Factory"
        );
        emit OwnershipTransferred(owner, to);
        owner = to;
    }

    function subscribeSecWare(
        address secWare,
        uint24 serviceId,
        uint256 expiration
    ) external onlyRouter {
        subscribedSecWares[secWare].subscribed = true;
        subscribedSecWares[secWare].serviceExpiration[serviceId] = expiration;
        emit SecWareSubscribed(secWare, serviceId);
    }

    function configureSecWare(
        address secWare,
        bytes calldata config
    ) external override onlyOwner {
        require(
            subscribedSecWares[secWare].subscribed,
            "SecWare Not subscribed."
        );
        subscribedSecWares[secWare].config = config;
        emit SecWareConfigured(secWare, config);
    }

    function serviceExpiration(
        address secWare,
        uint24 serviceId
    ) external view returns (uint256) {
        return subscribedSecWares[secWare].serviceExpiration[serviceId];
    }

}
