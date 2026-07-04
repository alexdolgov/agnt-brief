// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./interface/ISecWareFactory.sol";
import "./SecWare.sol";
import "./interface/IRevenuePool.sol";
import "./interface/IPriceOracle.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SecWareFactory is ISecWareFactory, Ownable {
    using SafeERC20 for IERC20;

    // SecWare provider information
    struct Provider {
        bool registered;
        bool active;
        bool kyc;
        address depositToken;
        uint256 deposit;
        uint256 credit;
    }

    // provider => provider information
    mapping(address => Provider) public providers;

    // provider => SecWare instance
    mapping(address => address) public providerSecWares;
    // SecWare instance => provider
    mapping(address => address) public secWaresProviders;

    // current deposit token
    address public currentDepositToken;
    // deposit token address => deposit amount
    mapping(address => uint256) public depositConfig;

    // official certified list
    mapping(address => bool) public isCertified;

    // secWare => official fee
    mapping(address => uint24) public officialFee;

    uint24 public constant DENOMINATOR = 10000;
    uint24 public constant DEFAULT_FEE = 3000;

    bool public allowTransfer;
    // receive official fee
    address public feeTo;
    // SecWare router
    address public router;
    // IRevenuePool
    address public revenuePool;
    // IPriceOracle
    IPriceOracle public oracle;

    event ProviderRegistered(
        address provider,
        address depositToken,
        uint256 deposit,
        address secWare,
        bool kyc
    );
    event ProviderUnregistered(address provider, address secWare);
    event SecWareCreated(address provider, address secWare);
    event SecWareCertified(address secWare, bool certified);
    event CreditUpdated(address secWare, address provider, uint256 credit);
    event SecWareTransferred(address secWare, address previousProvider, address newProvider);
    event RouterChanged(address previousRouter, address newRouter);

    modifier onlyRegistered(address provider) {
        require(providers[provider].registered, "Not registered.");
        _;
    }

    constructor(
        address usdt,
        uint256 registrationDeposit,
        address feeToAddr
    ) Ownable(_msgSender()) {
        require(usdt != address(0), "Not address(0)");
        require(feeToAddr != address(0), "Not address(0)");
        currentDepositToken = usdt;
        depositConfig[currentDepositToken] = registrationDeposit;
        feeTo = feeToAddr;
    }

    function setRouter(address routerAddr) external onlyOwner {
        require(routerAddr != address(0), "Not address(0)");
        emit RouterChanged(router, routerAddr);
        router = routerAddr;
    }

    function openTransfer(bool canTransfer) external onlyOwner {
        allowTransfer = canTransfer;
    }

    function setOracle(address oracleAddr) external onlyOwner {
        require(oracleAddr != address(0), "Not address(0)");
        oracle = IPriceOracle(oracleAddr);
    }

    function setFeeTo(address feeToAddr) external onlyOwner {
        require(feeToAddr != address(0), "Not address(0)");
        feeTo = feeToAddr;
    }

    function setRevenuePool(address revenuePoolAddr) external onlyOwner {
        require(revenuePoolAddr != address(0), "Not address(0)");
        revenuePool = revenuePoolAddr;
    }

    function setCertified(address secWare, bool certified) public onlyOwner {
        isCertified[secWare] = certified;
        emit SecWareCertified(secWare, certified);
    }

    function setOfficialFee(address secWare, uint24 fee) public onlyOwner {
        require(fee <= DENOMINATOR / 2, "Max limit 50%");
        officialFee[secWare] = fee;
    }

    function setCredit(
        address provider,
        uint256 credit
    ) public onlyOwner onlyRegistered(provider) {
        providers[provider].credit = credit;
        emit CreditUpdated(providerSecWares[provider], provider, credit);
    }

    function sanction(
        address provider
    ) external onlyOwner onlyRegistered(provider) {
        if (providers[provider].active) {
            IERC20(providers[provider].depositToken).safeTransfer(
                feeTo,
                providers[provider].deposit
            );
            IRevenuePool(revenuePool).onSanction(
                providerSecWares[provider],
                feeTo
            );
        }
        providers[provider].active = !providers[provider].active;
    }

    function getOfficalFee(
        address secWare,
        uint256 amount
    ) external view returns (uint256 fee) {
        return (amount * officialFee[secWare]) / DENOMINATOR;
    }

    // update deposit token and amount
    function setRegistrationDeposit(
        address erc20,
        uint256 newDeposit
    ) external onlyOwner {
        require(erc20 != address(0), "Not address(0)");
        depositConfig[erc20] = newDeposit;
        currentDepositToken = erc20;
    }

    function registerProvider(bool needKyc) external returns (address) {
        require(
            !providers[_msgSender()].registered,
            "Provider registered."
        );
        if (depositConfig[currentDepositToken] > 0) {
            IERC20(currentDepositToken).safeTransferFrom(
                _msgSender(),
                address(this),
                depositConfig[currentDepositToken]
            );
        }

        providers[_msgSender()] = Provider({
            registered: true,
            active: true,
            kyc: needKyc,
            depositToken: currentDepositToken,
            deposit: depositConfig[currentDepositToken],
            credit: 0
        });

        SecWare secWare = new SecWare(_msgSender(), address(this));
        providerSecWares[_msgSender()] = address(secWare);
        secWaresProviders[address(secWare)] = _msgSender();
        emit SecWareCreated(_msgSender(), address(secWare));
        emit ProviderRegistered(
            _msgSender(),
            currentDepositToken,
            depositConfig[currentDepositToken],
            address(secWare),
            needKyc
        );
        officialFee[address(secWare)] = DEFAULT_FEE;
        return address(secWare);
    }

    // allow providers to unregister and withdraw deposit
    function unregisterProvider() external onlyRegistered(_msgSender()) {
        require(providers[_msgSender()].active, "Unregistered or sanctioned.");
        providers[_msgSender()].active = false;
        uint256 amount = providers[_msgSender()].deposit;
        providers[_msgSender()].deposit = 0;
        IERC20(providers[_msgSender()].depositToken).safeTransfer(
            _msgSender(),
            amount
        );
        emit ProviderUnregistered(_msgSender(), providerSecWares[_msgSender()]);
    }

    // When the owner increases the deposit amount,  this method can make up the difference
    function deposit() external onlyRegistered(_msgSender()) {
        require(
            providers[_msgSender()].deposit < depositConfig[providers[_msgSender()].depositToken]
            || providers[_msgSender()].depositToken != currentDepositToken,
            "Already deposit"
        );
        // If the deposit token is update, the previous deposit will be returned
        if (providers[_msgSender()].depositToken != currentDepositToken && providers[_msgSender()].deposit > 0) {
            IERC20(providers[_msgSender()].depositToken).safeTransfer(
                _msgSender(),
                providers[_msgSender()].deposit
            );
            providers[_msgSender()].deposit = 0;
        }
        IERC20(currentDepositToken).safeTransferFrom(
            _msgSender(),
            address(this),
            depositConfig[currentDepositToken] - providers[_msgSender()].deposit
        );
        providers[_msgSender()].depositToken = currentDepositToken;
        providers[_msgSender()].deposit = depositConfig[currentDepositToken];
    }

    // provider can withdraw if the secware is certified or the depositAmount is decreased
    function withdraw() external onlyRegistered(_msgSender()) {
        Provider storage providerInfo = providers[_msgSender()];
        address secWare = providerSecWares[_msgSender()];
        address depositToken = providerInfo.depositToken;
        if(isCertified[secWare]) {
            IERC20(depositToken).safeTransfer(_msgSender(), providerInfo.deposit);
            providerInfo.deposit = 0;
            return;
        } 
        uint256 depositAmount = depositConfig[depositToken];
        if(providerInfo.deposit > depositAmount) {
            IERC20(depositToken).safeTransfer(_msgSender(), providerInfo.deposit - depositAmount);
            providerInfo.deposit = depositAmount;
        }
    }

    function transferSecWare(address to) external onlyRegistered(_msgSender()){
        require(allowTransfer, "Not Allowed");
        require(providerSecWares[to] == address(0), "Receiver is provider");
        address from = _msgSender();
        require(providers[from].active, "Not active");
        address secWare = providerSecWares[from];
        require(from !=  to, "Same address");
        secWaresProviders[secWare] = to;
        delete providerSecWares[from];
        providerSecWares[to] = secWare;
        providers[to] = providers[from];
        delete providers[from];
        emit SecWareTransferred(secWare, from, to);
        ISecWare(secWare).onTransferred(to);
    }

    function isSecWareActive(
        address secWare
    ) public view returns (bool active) {
        Provider storage providerInfo = providers[secWaresProviders[secWare]];
        active = providerInfo.active;
        if (!isCertified[secWare]) {
            active =
                active &&
                providerInfo.deposit >=
                depositConfig[providerInfo.depositToken];
        }
    }
}
