// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interface/IRevenuePool.sol";
import "./interface/ISecWareFactory.sol";
import "./interface/IWETH.sol";

contract RevenuePool is Ownable, IRevenuePool {
    using SafeERC20 for IERC20;

    struct RevenueInfo {
        // secware first sale time
        uint256 firstSaleAt;
        // payment token list
        address[] paymentTokens;
        // token is stored in paymentTokens
        mapping(address => bool) isTokenStored;
        // token => amount
        mapping(address => uint256) revenues;
    }

    uint256 public lockupPeriod = 90 days;

    IWETH immutable wbnb;

    // secWare factory
    ISecWareFactory immutable wareFactory;

    // secWare => RevenueInfo
    mapping(address => RevenueInfo) wareInfos;

    // erc20 => balance
    mapping(address => uint256) tokenBalance;

    event LockupPeriodChanged(uint256 previousPeriod, uint256 newPeriod);

    modifier onlyRouter() {
        require(
            wareFactory.router() == _msgSender(),
            "Not Router"
        );
        _;
    }

    modifier onlyProvider() {
        require(
            wareFactory.providerSecWares(_msgSender()) != address(0),
            "Not SecWare provider"
        );
        _;
    }

    modifier onlyFactory() {
        require(_msgSender() == address(wareFactory), "Only SecWareFactory");
        _;
    }

    constructor(address factory, address wbnbAddr) Ownable(_msgSender()) {
        require(factory != address(0), "Not address(0)");
        wareFactory = ISecWareFactory(factory);
        wbnb = IWETH(wbnbAddr);
    }

    function setLockPeriod(uint256 period) external onlyOwner {
        emit LockupPeriodChanged(lockupPeriod, period);
        lockupPeriod = period;
    }

    function onSale(
        ISecWare.ServiceInfo calldata serviceInfo,
        address secWare,
        address secHub
    ) external onlyRouter returns (bool) {
        secHub;// fix warning: Unused function parameter
        RevenueInfo storage info = wareInfos[secWare];
        address erc20 = address(serviceInfo.paymentToken);
        if (!info.isTokenStored[erc20]) {
            info.paymentTokens.push(erc20);
            info.isTokenStored[erc20] = true;
        }
        if(info.firstSaleAt == 0) {
            info.firstSaleAt = block.timestamp;
        }
        uint256 tokenReceived = IERC20(erc20).balanceOf(address(this)) - tokenBalance[erc20];

        // calculate official fee
        uint256 officialFee = wareFactory.getOfficalFee(
            secWare,
            tokenReceived
        );

        IERC20 token = serviceInfo.paymentToken;
        if (officialFee > 0) {
            token.safeTransfer(wareFactory.feeTo(), officialFee);
        }

        uint256 balanceNow = IERC20(erc20).balanceOf(address(this));
        info.revenues[erc20] += balanceNow - tokenBalance[erc20];
        tokenBalance[erc20] = balanceNow;
        return true;
    }

    function _checkSecWare(address secWare) internal view {
        // check is certified
        if (!wareFactory.isCertified(secWare)) {
            // check lock-up period
            require(
                block.timestamp > wareInfos[secWare].firstSaleAt + lockupPeriod,
                "Locked"
            );
        }
        // check ware is active
        require(wareFactory.isSecWareActive(secWare), "SecWare inactive");
    }

    function _transfer(address erc20, address receiver, uint256 amount) internal {
        if(address(wbnb) == erc20) {
            wbnb.withdraw(amount);
            (bool success, ) = receiver.call{value: amount}(new bytes(0));
            require(success, "BNB send back failed");
        } else {
            IERC20(erc20).safeTransfer(receiver, amount);
        }
    }

    function claim(address erc20) external onlyProvider {
        address secWare = wareFactory.providerSecWares(_msgSender());
        _checkSecWare(secWare);
        RevenueInfo storage info = wareInfos[secWare];
        require(info.isTokenStored[erc20], "Not payment token");
        uint256 amount = info.revenues[erc20];
        require(amount > 0, "Insufficient claimable balance");
        info.revenues[erc20] = 0;
        _transfer(erc20, _msgSender(), amount);
        tokenBalance[erc20] = IERC20(erc20).balanceOf(address(this));
    }

    function claim() external onlyProvider {
        address secWare = wareFactory.providerSecWares(_msgSender());
        _checkSecWare(secWare);
        _transferRevenues(secWare, _msgSender());
    }

    function settlement(address secWare) external onlyOwner {
        address provider = wareFactory.secWaresProviders(secWare);
        _transferRevenues(secWare, provider);
    }

    function onSanction(
        address secWare,
        address receiver
    ) external onlyFactory {
        _transferRevenues(secWare, receiver);
    }

    function _transferRevenues(address secWare, address receiver) internal {
        RevenueInfo storage info = wareInfos[secWare];
        for (uint24 i = 0; i < info.paymentTokens.length; i++) {
            address erc20 = info.paymentTokens[i];
            uint256 amount = info.revenues[erc20];
            if (amount > 0) {
                info.revenues[erc20] = 0;
                _transfer(erc20, receiver, amount);
                tokenBalance[erc20] = IERC20(erc20).balanceOf(address(this));
            }
        }
    }

    function secWareRevenue(address secWare, address erc20) external view returns (uint256 balance) {
        balance = wareInfos[secWare].revenues[erc20];
    }

    /**
     * receive BNB from WBNB.withdraw
     */
    receive() external payable {}

    /**
     * fix lock-ether
     */
    function withdraw() external onlyOwner {
        (bool success, ) = _msgSender().call{value: address(this).balance}(new bytes(0));
        require(success, "BNB send back failed");
    }
}
