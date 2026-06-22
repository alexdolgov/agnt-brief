// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {MathUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeCastUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol";
import {IVKAWhitelistSale} from "./interface/IVKAWhitelistSale.sol";

interface IWETH {
    function deposit() external payable;

    function transfer(address to, uint256 value) external returns (bool);

    function withdraw(uint256) external;

    function mint(address to, uint256 value) external;

    function balanceOf(address wallet) external returns (uint256);
}

contract VKAPublicSale is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using MathUpgradeable for uint256;
    using SafeCastUpgradeable for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 public saleStart; // Time when the token sale starts
    uint256 public saleClose; // Time when the token sale ends
    uint256 public totalETHDeposited; // Keeps track of ETH deposited
    uint256 public ethTargetAmount; // Hard Cap for ETH to be collected from this TGE
    bool public ethWithdrawn; // Flag that says if the owner of this contract has withdrawn the ETH raised by this TGE event

    address public vkaToken;
    address public weth;
    address public vkaWhitelistedSale;

    mapping(address => uint256) public deposits; // Amount each user deposited
    mapping(address => bool) public isClaimed; // Keep track if user has already claimed VKA

    // -- Events -- //
    event LogTokenDeposit(
        address indexed purchaser,
        address indexed beneficiary,
        uint256 value
    );
    event LogWithdrawEth(uint256 amount);
    event LogAllocateVKA(uint256 amount);
    event LogClaimVKA(address claimer, uint256 VKAAmount, uint256 refundAmount);
    event TargetAmountInit(uint256 amount);

    // -- Initializer -- //

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _vkaToken,
        address _weth,
        address _vkaWhitelistedSale
    ) external initializer {
        vkaToken = _vkaToken;
        weth = _weth;
        vkaWhitelistedSale = _vkaWhitelistedSale;
        ethWithdrawn = false;

        __Ownable_init();
        __ReentrancyGuard_init();
    }

    // -- View functions -- //

    function claimableAmount(
        address beneficiary
    ) public view returns (uint256) {
        return
            !isClaimed[beneficiary] && totalETHDeposited > 0
                ? (vkaTokensAllocated() * deposits[beneficiary]) /
                    totalETHDeposited
                : 0;
    }

    function refundAmount(address beneficiary) public view returns (uint256) {
        if (isClaimed[beneficiary]) return 0;
        if (totalETHDeposited <= ethTargetAmount) return 0;
        return
            deposits[beneficiary] -
            (
                ((deposits[beneficiary] *
                    (MathUpgradeable.min(ethTargetAmount, totalETHDeposited))) /
                    totalETHDeposited)
            );
    }

    function getTotalRefundableAmount() public view returns (uint256) {
        if (totalETHDeposited <= ethTargetAmount) return 0;
        return
            totalETHDeposited -
            ((totalETHDeposited / totalETHDeposited) *
                (MathUpgradeable.min(ethTargetAmount, totalETHDeposited)));
    }

    function getCurrentVKAPrice() public view returns (uint256) {
        // sale must have started before getting vka price
        if (block.timestamp <= saleStart) {
            return 0;
        }
        // get total eth deposited in whitelist sale
        uint256 _wlTotalETHDeposited = IVKAWhitelistSale(vkaWhitelistedSale)
            .totalETHDeposited();
        // get total vka tokens allocated to sale
        uint256 _vkaTokensAllocated = IVKAWhitelistSale(vkaWhitelistedSale)
            .vkaTokensAllocated();
        // check if total eth deposited is greater than target amount
        // use target amount + whitelist sale total eth deposited
        // else use total eth deposited + whitelist sale total eth deposited
        uint256 _totalETHDeposited = totalETHDeposited > ethTargetAmount
            ? ethTargetAmount + _wlTotalETHDeposited
            : totalETHDeposited + _wlTotalETHDeposited;
        // vka decimals is 18
        // return (total eth deposited) / vka tokens allocated
        return (_totalETHDeposited * 1e18) / _vkaTokensAllocated;
    }

    function vkaTokensAllocated() public view returns (uint256) {
        // if sale has not ended return 0
        // if (block.timestamp < saleClose) return 0;
        // get total VKA allocation for whitelist users
        uint256 _vkaTokensAllocated = IVKAWhitelistSale(vkaWhitelistedSale)
            .vkaTokensAllocated();
        // return total vka tokens allocated - whitelist users vka allocation
        return (_vkaTokensAllocated -
            IVKAWhitelistSale(vkaWhitelistedSale).wlUsersVKAAllocation());
    }

    // -- Owner functions -- //

    function initializedTargetAmount() external onlyOwner {
        require(ethTargetAmount == 0, "already initialized");
        // require that whitelist sale has ended before initializing target amount
        require(
            block.timestamp > IVKAWhitelistSale(vkaWhitelistedSale).saleClose(),
            "whitelist sale has not ended"
        );
        ethTargetAmount = IVKAWhitelistSale(vkaWhitelistedSale)
            .getShortFallAmount();
        emit TargetAmountInit(ethTargetAmount);
    }

    function setStartClose(
        uint256 _saleStart,
        uint256 _saleClose
    ) public onlyOwner {
        require(
            _saleStart > block.timestamp,
            "invalid sale start: start must be in the future"
        );
        require(_saleClose > _saleStart, "invalid sale close");
        require(
            _saleStart >= IVKAWhitelistSale(vkaWhitelistedSale).saleClose(),
            "invalid sale start: start must be after whitelist sale end"
        );

        saleStart = _saleStart;
        saleClose = _saleClose;
    }

    /// @dev Withdraws eth deposited into the contract. Only owner can call this.
    function withdraw(address to) public onlyOwner {
        require(block.timestamp > saleClose, "sale has not ended");
        require(!ethWithdrawn, "already withdrawn");
        // withdraw only the target amount if reached else withdraw the total eth deposited
        uint256 ethToWithdraw = totalETHDeposited >= ethTargetAmount
            ? ethTargetAmount
            : totalETHDeposited;
        ethWithdrawn = true;
        _transferOutWrappedEth(to, ethToWithdraw);

        emit LogWithdrawEth(ethToWithdraw);
    }

    function allocateVKA() public onlyOwner {
        // sale must have ended before allocating vka tokens to public sale
        // this is to enable the whitelist contract to determine
        // portion of vka tokens to allocate to public sale
        // based on the total eth raised by public sale and whitelist sale
        require(block.timestamp >= saleClose, "sale has not ended");
        // transfer vka tokens to public sale contract
        uint256 _receivedVKA = IVKAWhitelistSale(vkaWhitelistedSale)
            .allocateVKAToPublicSale();
        emit LogAllocateVKA(_receivedVKA);
    }

    // -- Public functions -- //

    /// @dev must be equivalent to receive()
    function deposit() public payable nonReentrant {
        require(block.timestamp >= saleStart, "sale has not started");
        require(block.timestamp <= saleClose, "sale has ended");
        require(msg.value > 0, "invalid value");
        require(ethTargetAmount > 0, "target amount not initialized");

        deposits[msg.sender] = deposits[msg.sender] + msg.value;
        totalETHDeposited += msg.value;

        emit LogTokenDeposit(msg.sender, msg.sender, msg.value);
    }

    function claimVKA() public nonReentrant {
        require(block.timestamp > saleClose, "sale has not ended");
        require(!isClaimed[msg.sender], "already claimed");
        uint256 _claimableAmount = claimableAmount(msg.sender);

        require(
            IERC20Upgradeable(vkaToken).balanceOf(address(this)) >=
                _claimableAmount,
            "No vka tokens"
        );

        uint256 _refundAmount = refundAmount(msg.sender);
        isClaimed[msg.sender] = true;

        if (_claimableAmount > 0)
            IERC20Upgradeable(vkaToken).safeTransfer(
                msg.sender,
                _claimableAmount
            );
        if (_refundAmount > 0) {
            _transferOutEth(msg.sender, _refundAmount);
        }
        emit LogClaimVKA(msg.sender, _claimableAmount, _refundAmount);
    }

    // -- Internal functions -- //

    function _transferOutEth(address to, uint256 amount) internal {
        (bool success, ) = to.call{value: amount, gas: 2300}("");
        if (!success) {
            _transferOutWrappedEth(to, amount);
        }
    }

    function _transferOutWrappedEth(address to, uint256 amount) internal {
        IWETH(weth).deposit{value: amount}();
        IERC20Upgradeable(weth).safeTransfer(to, amount);
    }

    /// @dev must be equivalent to deposit(address beneficiary)
    receive() external payable nonReentrant {
        deposit();
    }
}
