// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC721.sol";
import "./interface/IPriceOracle.sol";
import "./interface/IRevenuePool.sol";
import "./interface/ISecWareFactory.sol";
import "./interface/ISecHubFactory.sol";
import "./interface/ISecHub.sol";
import "./interface/ISecWare.sol";
import "./interface/IWETH.sol";

contract SecWareRouter is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    struct Order {
        address secWare;
        uint24 prodId;
        address to;
    }

    ISecWareFactory public immutable secWareFactory;
    ISecHubFactory public immutable secHubFactory;
    IPriceOracle public priceOracle;
    IRevenuePool public revenuePool;
    IWETH public immutable wbnb;
    // renew operator
    address public operator;

    struct LastSubscribed {
        uint24 prodId;
        bool autoRenew;
    }
    // sechub => (secware => (serviceId => LastSubscribed))
    mapping(address => mapping(address => mapping(uint24 => LastSubscribed))) public subscribedInfos;

    event OnPurchased(
        address indexed payer,
        address indexed user,
        address indexed secWare,
        uint24 prodId,
        bool autoRenew,
        uint256 expiration,
        bytes32 lastTxHash, // for renew
        uint256 lastTxLogIndex // for renew
    );

    event LogAutoRenewState(
        address indexed user,
        address indexed secWare,
        uint24 prodId,
        bool autoRenew
    );

    event OperatorChanged(address from, address to);

    modifier onlyOperator() {
        require(_msgSender() == operator, "Not operator");
        _;
    }

    constructor(
        address hubFactory,
        address wareFactory,
        address oracle,
        address revenue,
        address wbnbAddr
    ) Ownable(_msgSender()) {
        secHubFactory = ISecHubFactory(hubFactory);
        secWareFactory = ISecWareFactory(wareFactory);
        priceOracle = IPriceOracle(oracle);
        revenuePool = IRevenuePool(revenue);
        wbnb = IWETH(wbnbAddr);
    }

    function setOperator(address operatorAddr) external onlyOwner {
        require(operatorAddr != address(0), "Not address(0)");
        emit OperatorChanged(operator, operatorAddr);
        operator = operatorAddr;
    }

    function updatePriceOracle(address oracle) external onlyOwner {
        require(oracle != address(0), "Not address(0)");
        priceOracle = IPriceOracle(oracle);
    }

    function updateRevenuePool(address revenue) external onlyOwner {
        require(revenue != address(0), "Not address(0)");
        revenuePool = IRevenuePool(revenue);
    }

    function _purchase(
        ISecWare secWare,
        ISecWare.ServiceInfo memory serviceInfo,
        uint24 prodId,
        address to
    ) internal {
        address secHub = secHubFactory.getSecHub(to);
        if (secHub == address(0)) {
            secHub = secHubFactory.createSecHub(to);
        } else {
            LastSubscribed storage info = subscribedInfos[secHub][address(secWare)][serviceInfo.serviceId];
            if (info.prodId == prodId && info.autoRenew) {
                require(secWare.expirations(secHub, serviceInfo.serviceId) < block.timestamp, "Already subscribed as autoRenew.");
            }
        }
        // store subscribed info
        subscribedInfos[secHub][address(secWare)][serviceInfo.serviceId] = LastSubscribed(prodId, serviceInfo.autoRenew);
        // subscribe in secWare
        uint256 expiration = secWare.subscribe(prodId, secHub);
        // store subscribed service in secHub
        ISecHub(secHub).subscribeSecWare(
            address(secWare),
            serviceInfo.serviceId,
            expiration
        );
        revenuePool.onSale(serviceInfo, address(secWare), secHub);
        emit OnPurchased(
            _msgSender(),
            to,
            address(secWare),
            prodId,
            serviceInfo.autoRenew,
            expiration,
            bytes32(0),
            0
        );
        emit LogAutoRenewState(
            to,
            address(secWare),
            prodId,
            serviceInfo.autoRenew
        );
    }

    function purchase(
        address secWare,
        uint24 prodId,
        address to
    ) public nonReentrant {
        require(secWareFactory.isSecWareActive(secWare), "SecWare inactive");
        ISecWare secWareInstance = ISecWare(secWare);
        ISecWare.ServiceInfo memory serviceInfo = secWareInstance
            .getServiceInfo(prodId);
        serviceInfo.paymentToken.safeTransferFrom(
            _msgSender(),
            address(revenuePool),
            serviceInfo.price
        );
        _purchase(secWareInstance, serviceInfo, prodId, to);
    }

    function purchaseWithBNB(
        address secWare,
        uint24 prodId,
        address to
    ) public payable nonReentrant {
        require(secWareFactory.isSecWareActive(secWare), "SecWare inactive");
        ISecWare secWareInstance = ISecWare(secWare);
        ISecWare.ServiceInfo memory serviceInfo = secWareInstance
            .getServiceInfo(prodId);

        require(
            address(serviceInfo.paymentToken) == address(wbnb),
            "Payment token not match"
        );
        require(msg.value >= serviceInfo.price, "Insufficient amount");

        wbnb.deposit{value: serviceInfo.price}();
        require(
            wbnb.transfer(address(revenuePool), serviceInfo.price),
            "WBNB transfer failed"
        );
        _purchase(secWareInstance, serviceInfo, prodId, to);
    }

    function batchPurchase(
        Order[] calldata orders
    ) external payable nonReentrant {
        if (msg.value > 0) {
            wbnb.deposit{value: msg.value}();
        }
        for (uint256 i = 0; i < orders.length; i++) {
            Order memory order = orders[i];
            require(
                secWareFactory.isSecWareActive(order.secWare),
                "SecWare inactive"
            );
            ISecWare secWare = ISecWare(order.secWare);
            ISecWare.ServiceInfo memory serviceInfo = secWare.getServiceInfo(
                order.prodId
            );
            if (address(serviceInfo.paymentToken) != address(wbnb)) {
                serviceInfo.paymentToken.safeTransferFrom(
                    _msgSender(),
                    address(revenuePool),
                    serviceInfo.price
                );
            } else {
                require(
                    wbnb.transfer(address(revenuePool), serviceInfo.price),
                    "WBNB transfer failed"
                );
            }
            _purchase(secWare, serviceInfo, order.prodId, order.to);
        }
        if (msg.value > 0) {
            uint256 bnbLeft = wbnb.balanceOf(address(this));
            if (bnbLeft > 0) wbnb.withdraw(bnbLeft);
        }
    }

    function cancelAutoRenew(address secWare, uint24 prodId) external {
        address secHub = secHubFactory.getSecHub(_msgSender());
        require(secHub != address(0), "SecHub not exist");
        ISecWare.ServiceInfo memory serviceInfo = ISecWare(secWare)
            .getServiceInfo(prodId);
        require(
            subscribedInfos[secHub][secWare][serviceInfo.serviceId].autoRenew,
            "Not autoRenew"
        );
        subscribedInfos[secHub][secWare][serviceInfo.serviceId].autoRenew = false;
        emit LogAutoRenewState(_msgSender(), secWare, prodId, false);
    }

    function renew(
        address payer,
        address secWare,
        uint24 prodId,
        address to,
        bytes32 lastTxhash,
        uint256 lastTxLogIndex
    ) external onlyOperator {
        uint256 gasStart = gasleft();
        address secHub = secHubFactory.getSecHub(to);
        require(secHub != address(0), "SecHub not exist");
        require(secWareFactory.isSecWareActive(secWare), "SecWare inactive");
        ISecWare.ServiceInfo memory serviceInfo = ISecWare(secWare)
            .getServiceInfo(prodId);
        require(serviceInfo.active, "Service inactive");
        require(serviceInfo.autoRenew, "Service not autoRenew");
        require(
            subscribedInfos[secHub][secWare][serviceInfo.serviceId].autoRenew,
            "Not autoRenew"
        );

        serviceInfo.paymentToken.safeTransferFrom(
            payer,
            address(revenuePool),
            serviceInfo.price
        );

        revenuePool.onSale(serviceInfo, secWare, secHub);
        
        uint256 expiration = ISecWare(secWare).subscribe(prodId, secHub);

        ISecHub(secHub).subscribeSecWare(
            secWare,
            serviceInfo.serviceId,
            expiration
        );
        emit OnPurchased(
            payer,
            to,
            secWare,
            prodId,
            serviceInfo.autoRenew,
            expiration,
            lastTxhash,
            lastTxLogIndex
        );

        uint256 gasUsed = (gasStart - gasleft() + 21000);
        uint256 gasAmount = priceOracle.bnbToERC20(
            address(serviceInfo.paymentToken),
            gasUsed
        );
        serviceInfo.paymentToken.safeTransferFrom(
            payer,
            _msgSender(),
            gasAmount
        );
    }

    /**
     * receive BNB from WBNB.withdraw
     */
    receive() external payable {}

    /**
     * fix lock-ether
     */
    function withdraw() external onlyOwner {
        (bool success, ) = _msgSender().call{value: address(this).balance}(
            new bytes(0)
        );
        require(success, "BNB send back failed");
    }

}
