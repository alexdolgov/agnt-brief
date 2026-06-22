// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { MathUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { SafeCastUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol";

contract VKALiquidityBoostSaleSecond is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using MathUpgradeable for uint256;
    using SafeCastUpgradeable for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 public secondTrancheCap;
    uint256 public saleStart;
    uint256 public saleClose;

    uint256 public vkaTokensAllocated; // VKA Tokens allocated 8M
    uint256 public totalETHDeposited; // Keeps track of ETH deposited

    address public vkaToken;
    address public weth;
    bool public ethWithdrawn; // Flag that says if the owner of this contract has withdrawn the ETH raised by this TGE event
    bool public isVKATokenAllocated;

    mapping(address => uint256) public deposits; // Amount each user deposited
    mapping(address => bool) public isClaimed; // Keep track if user has already claimed VKA

    uint256 public PRECISION;
    // -- Events -- //
    event LogWithdrawEth(uint256 amount);
    event LogAllocateVKA(uint256 amount);
    event LogClaimVKA(address claimer, uint256 VKAAmount);
    event LogVKAPublicSale(address vkaPublicSale);
    event MerkleRootSet(bytes32 merkleRoot);
    event LogTokenDeposit(address indexed purchaser, address indexed beneficiary, uint256 value);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _vkaToken, address _weth, uint256 _secondTrancheCap) external initializer {
        vkaToken = _vkaToken;
        weth = _weth;
        secondTrancheCap = _secondTrancheCap;

        __Ownable_init();
        __ReentrancyGuard_init();
    }

    // -- view functions -- //
    function claimableAmount(address beneficiary) public view returns (uint256) {
        // if the total eth deposited is 0 or the beneficiary has already claimed return 0
        // else return the VKA allocation for the beneficiary
        return
            !isClaimed[beneficiary] && totalETHDeposited > 0
                ? (vkaTokensAllocated * deposits[beneficiary]) / totalETHDeposited
                : 0;
    }

    /// @dev Withdraws eth deposited into the contract. Only owner can call this, when vka tokens have been allocated
    function withdraw(address to) external onlyOwner {
        require(block.timestamp > saleClose, "sale has not ended");
        require(vkaTokensAllocated > 0, "no vka tokens allocated");
        require(!ethWithdrawn, "already withdrawn");
        // withdraw only the target amount if reached else withdraw the total eth deposited
        uint256 ethToWithdraw = totalETHDeposited >= secondTrancheCap ? secondTrancheCap : totalETHDeposited;
        ethWithdrawn = true;
        IERC20Upgradeable(weth).safeTransfer(to, ethToWithdraw);

        emit LogWithdrawEth(ethToWithdraw);
    }

    function setStartClose(uint256 _saleStart, uint256 _saleClose) public onlyOwner {
        require(_saleStart > block.timestamp, "invalid sale start");
        require(_saleClose > _saleStart, "invalid sale close");

        saleStart = _saleStart;
        saleClose = _saleClose;
    }

    function allocateVKA(uint256 _vkaAllocation) external onlyOwner {
        isVKATokenAllocated = true;
        IERC20Upgradeable(vkaToken).safeTransferFrom(msg.sender, address(this), _vkaAllocation);
        vkaTokensAllocated = IERC20Upgradeable(vkaToken).balanceOf(address(this));
        emit LogAllocateVKA(_vkaAllocation);
    }

    // -- Public functions -- //
    /// Deposit
    function deposit(uint256 _amount) public nonReentrant {
        require(block.timestamp >= saleStart, "Sale has not started");
        require(block.timestamp <= saleClose, "Sale has ended");
        require(_amount > 0, "Invalid value");
        require(totalETHDeposited + _amount <= secondTrancheCap, "Target amount reached");
        // WETH transfer from user
        IERC20Upgradeable(weth).safeTransferFrom(msg.sender, address(this), _amount);
        deposits[msg.sender] = deposits[msg.sender] + _amount;
        totalETHDeposited += _amount;

        emit LogTokenDeposit(msg.sender, msg.sender, _amount);
    }

    function claimVKA() public nonReentrant {
        require(isVKATokenAllocated, "VKA tokens not allocated");
        // sale must have ended
        require(block.timestamp > saleClose, "Sale has not ended");
        require(!isClaimed[msg.sender], "Already claimed");

        uint256 _claimableAmount = claimableAmount(msg.sender);
        require(IERC20Upgradeable(vkaToken).balanceOf(address(this)) >= _claimableAmount, "No vka tokens");

        isClaimed[msg.sender] = true;

        if (_claimableAmount > 0) IERC20Upgradeable(vkaToken).safeTransfer(msg.sender, _claimableAmount);

        emit LogClaimVKA(msg.sender, _claimableAmount);
    }

    function calculateAllocation(uint256 _factor) public view returns (uint256) {
        return (totalETHDeposited * _factor) / PRECISION;
    }

    function setPrecision(uint256 _precision) public onlyOwner {
        PRECISION = _precision;
    }

}
