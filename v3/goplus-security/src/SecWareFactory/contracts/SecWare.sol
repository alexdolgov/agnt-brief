// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./interface/ISecWareFactory.sol";
import "./interface/ISecWare.sol";
import "./interface/IRevenuePool.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SecWare is ISecWare, Context {
    using SafeERC20 for IERC20;

    address public owner;

    // Provider's other information, such as JSON strings or IPFS hash
    string providerInfo;

    // Store SecHub addresses that subscribed this SecWare
    mapping(address => bool) public subscribers;

    // Package list, can only be added/modified, cannot be deleted/modified, array index will be used as prodId
    ServiceInfo[] public serviceList;

    // secHub => serviceId => expiration
    mapping(address => mapping(uint24 => uint256)) public expirations;

    ISecWareFactory public immutable factory;

    event ServiceSubscribed(
        address indexed subscriber,
        uint24 prodId,
        uint24 serviceId,
        uint256 expiration
    );
    event ServiceInfoAdded(
        uint24 prodId,
        uint24 serviceId,
        uint256 price,
        uint256 period,
        address paymentToken,
        bool active,
        bool autoRenew,
        string secWareType
    );
    event OffSale(uint24 prodId);
    event ProviderInfoUpdated(string providerInfo);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    modifier onlyRouter() {
        require(
            _msgSender() == factory.router(),
            "Only can be called from router"
        );
        _;
    }

    modifier onlyOwner() {
        require(_msgSender() == owner, "Not owner");
        _;
    }

    constructor(address ownerAddr, address secWareFactory) {
        owner = ownerAddr;
        factory = ISecWareFactory(secWareFactory);
        emit ProviderInfoUpdated("");
        // Add a default unavailable item， to make the IDs of newly added items start from 1
        serviceList.push(
            ServiceInfo({
                serviceId: 0,
                active: false,
                autoRenew: false,
                paymentToken: IERC20(address(0)),
                price: 0,
                period: 0,
                secWareType: "",
                metadata: ""
            })
        );
    }

    function setProviderInfo(string calldata info) external onlyOwner {
        providerInfo = info;
        emit ProviderInfoUpdated(providerInfo);
    }

    /**
     * @param prodId the index of serviceList
     */
    function getServiceInfo(
        uint24 prodId
    ) external view returns (ServiceInfo memory) {
        require(prodId > 0, "ProdId must gt 0");
        return serviceList[prodId];
    }

    function addService(
        uint24 serviceId,
        bool autoRenew,
        address paymentToken,
        uint256 price,
        uint256 period,
        string calldata secWareType,
        string calldata metadata
    ) external onlyOwner {
        require(
            factory.oracle().isWhitelisted(paymentToken),
            "Token not allowed"
        );
        if (
            period == type(uint256).max ||
            paymentToken == factory.oracle().wbnb()
        ) {
            require(!autoRenew, "Cannot renew");
        }
        serviceList.push(
            ServiceInfo({
                serviceId: serviceId,
                active: true,
                autoRenew: autoRenew,
                paymentToken: IERC20(paymentToken),
                price: price,
                period: period,
                secWareType: secWareType,
                metadata: metadata
            })
        );
        emit ServiceInfoAdded(
            uint24(serviceList.length - 1),
            serviceId,
            price,
            period,
            paymentToken,
            true,
            autoRenew,
            secWareType
        );
    }

    // prodInfo can't be modified, only can make as inactive
    function offSale(uint24 prodId) external onlyOwner {
        serviceList[prodId].active = false;
        emit OffSale(prodId);
    }

    function productCount() external view returns (uint256 count) {
        count = serviceList.length;
    }

    function onTransferred(address newOwner) external {
        require(
            _msgSender() == address(factory),
            "Not Factory"
        );
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function subscribe(
        uint24 prodId,
        address userSecHub
    ) external onlyRouter returns (uint256) {
        require(serviceList[prodId].active, "Service inactive");
        subscribers[userSecHub] = true;

        ServiceInfo storage serviceInfo = serviceList[prodId];
        uint24 serviceId = serviceInfo.serviceId;
        // Once purchase, effective forever
        if (serviceInfo.period == type(uint256).max) {
            expirations[userSecHub][serviceId] = serviceInfo.period;
            emit ServiceSubscribed(
                userSecHub,
                prodId,
                serviceId,
                serviceInfo.period
            );
            return serviceInfo.period;
        }

        // update expiration
        uint256 expiration = expirations[userSecHub][serviceId] >=
            block.timestamp
            ? expirations[userSecHub][serviceId] + serviceInfo.period
            : block.timestamp + serviceInfo.period;
        expirations[userSecHub][serviceId] = expiration;

        emit ServiceSubscribed(userSecHub, prodId, serviceId, expiration);
        return expiration;
    }
}
