// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {MathUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {SafeCastUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/SafeCastUpgradeable.sol";
import {IVKAPublicSale} from "./interface/IVKAPublicSale.sol";

interface IWETH {
    function deposit() external payable;

    function transfer(address to, uint256 value) external returns (bool);

    function withdraw(uint256) external;

    function mint(address to, uint256 value) external;

    function balanceOf(address wallet) external returns (uint256);
}

contract VKAWhitelistedSale is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using MathUpgradeable for uint256;
    using SafeCastUpgradeable for uint256;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    uint256 public saleStart; // Time when the token sale starts
    uint256 public saleClose; // Time when the token sale ends
    uint256 public ethHardCap;
    uint256 public vkaTokensAllocated; // VKA Tokens allocated 8M
    uint256 public totalETHDeposited; // Keeps track of ETH deposited
    uint256 public ethTargetAmount; // ETH to be collected from this TGE

    address public vkaToken;
    address public weth;
    address public vkaPublicSale;

    bytes32 public merkleRoot;

    bool public ethWithdrawn; // Flag that says if the owner of this contract has withdrawn the ETH raised by this TGE event

    mapping(address => uint256) public deposits; // Amount each user deposited
    mapping(address => bool) public isClaimed; // Keep track if user has already claimed VKA
    mapping(address => bool) public whitelisted;

    // -- Events -- //
    event LogWithdrawEth(uint256 amount);
    event LogAllocateVKA(uint256 amount);
    event LogClaimVKA(address claimer, uint256 VKAAmount);
    event LogVKAPublicSale(address vkaPublicSale);
    event MerkleRootSet(bytes32 merkleRoot);
    event LogTokenDeposit(
        address indexed purchaser,
        address indexed beneficiary,
        uint256 value
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _vkaToken,
        uint256 _ethTargetAmount, // 200 ether
        uint256 _ethHardCap, // 500 ether
        address _weth
    ) external initializer {
        vkaToken = _vkaToken;
        ethTargetAmount = _ethTargetAmount;
        ethHardCap = _ethHardCap;
        weth = _weth;
        ethWithdrawn = false;

        __Ownable_init();
        __ReentrancyGuard_init();
    }

    // -- view functions -- //
    function claimableAmount(
        address beneficiary
    ) public view returns (uint256) {
        // get the total VKA allocation for sale
        uint256 _wlUsersVKAAllocation = wlUsersVKAAllocation();
        // if the total eth deposited is 0 or the beneficiary has already claimed return 0
        // else return the VKA allocation for the beneficiary
        return
            !isClaimed[beneficiary] && totalETHDeposited > 0
                ? (_wlUsersVKAAllocation * deposits[beneficiary]) /
                    totalETHDeposited
                : 0;
    }

    function wlUsersVKAAllocation() public view returns (uint256) {
        // if public sale has not ended return 0
        // allocation cannot be determine without the total eth raised by both whitelist and public sale
        // if (block.timestamp < IVKAPublicSale(vkaPublicSale).saleClose()) return 0;
        // get total eth raised by public sale
        uint256 _totalETHDepositedByPublicSale = IVKAPublicSale(vkaPublicSale)
            .totalETHDeposited();
        // eth target amount / minimum of eth hardcap and total eth raised
        uint256 wlUserReceived = (totalETHDeposited * 1e18) /
            MathUpgradeable.min(
                ethHardCap,
                (totalETHDeposited + _totalETHDepositedByPublicSale)
            );

        return (wlUserReceived * vkaTokensAllocated) / 1e18;
    }

    function getShortFallAmount() external view returns (uint256) {
        return ethHardCap - totalETHDeposited;
    }

    function verify(
        bytes32[] memory proof,
        bytes32 leaf
    ) public view returns (bool) {
        bytes32 computedHash = leaf;

        for (uint256 i = 0; i < proof.length; i++) {
            bytes32 proofElement = proof[i];

            if (computedHash < proofElement) {
                computedHash = keccak256(
                    abi.encodePacked(computedHash, proofElement)
                );
            } else {
                computedHash = keccak256(
                    abi.encodePacked(proofElement, computedHash)
                );
            }
        }

        return computedHash == merkleRoot;
    }

    // -- Owner functions -- //

    function setRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
        emit MerkleRootSet(_merkleRoot);
    }

    /// @dev Withdraws eth deposited into the contract. Only owner can call this.
    function withdraw(address to) external onlyOwner {
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

    function setVKAPublicSale(address _vkaPublicSale) external onlyOwner {
        vkaPublicSale = _vkaPublicSale;
        emit LogVKAPublicSale(_vkaPublicSale);
    }

    function setStartClose(
        uint256 _saleStart,
        uint256 _saleClose
    ) public onlyOwner {
        require(_saleStart > block.timestamp, "invalid sale start");
        require(_saleClose > _saleStart, "invalid sale close");

        saleStart = _saleStart;
        saleClose = _saleClose;
    }

    function allocateVKA(uint256 _vkaAllocation) external onlyOwner {
        IERC20Upgradeable(vkaToken).safeTransferFrom(
            msg.sender,
            address(this),
            _vkaAllocation
        );
        vkaTokensAllocated = IERC20Upgradeable(vkaToken).balanceOf(
            address(this)
        );
        emit LogAllocateVKA(_vkaAllocation);
    }

    function allocateVKAToPublicSale()
        external
        returns (uint256 publicUserAmount)
    {
        // only vkaPublicSale or owner can call this
        require(msg.sender == vkaPublicSale, "Not VKA Public sale");
        require(vkaTokensAllocated > 0, "vkaTokensAllocated is 0");
        require(
            block.timestamp > saleClose,
            "WL sale has not ended or public sale has not started"
        );

        // get total VKA allocation for whitelist users
        uint256 getWLUserAllocation = wlUsersVKAAllocation();

        publicUserAmount = vkaTokensAllocated - getWLUserAllocation;
        IERC20Upgradeable(vkaToken).safeTransfer(
            vkaPublicSale,
            publicUserAmount
        );

        return publicUserAmount;
    }

    // -- Public functions -- //
    /// Deposit
    function deposit(bytes32[] memory proof) public payable nonReentrant {
        // Merkle Proof Verification
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender));
        require(verify(proof, leaf), "Not a whitelisted user");
        require(block.timestamp >= saleStart, "Sale has not started");
        require(block.timestamp <= saleClose, "Sale has ended");
        require(msg.value > 0, "Invalid value");
        require(
            totalETHDeposited + msg.value <= ethTargetAmount,
            "Target amount reached"
        );
        require(vkaTokensAllocated > 0, "No VKA allocated");

        deposits[msg.sender] = deposits[msg.sender] + msg.value;
        totalETHDeposited += msg.value;
        whitelisted[msg.sender] = true;

        emit LogTokenDeposit(msg.sender, msg.sender, msg.value);
    }

    function claimVKA() public nonReentrant {
        // public sale must have ended
        require(
            block.timestamp > IVKAPublicSale(vkaPublicSale).saleClose() &&
                IVKAPublicSale(vkaPublicSale).saleClose() > 0,
            "Public sale has not ended or not started"
        );
        require(!isClaimed[msg.sender], "Already claimed");
        //@note is is necessary since we've checked the merkle proof in deposit()?
        require(whitelisted[msg.sender], "Not a whitelisted user");

        uint256 _claimableAmount = claimableAmount(msg.sender);
        require(
            IERC20Upgradeable(vkaToken).balanceOf(address(this)) >=
                _claimableAmount,
            "No vka tokens"
        );

        isClaimed[msg.sender] = true;

        if (_claimableAmount > 0)
            IERC20Upgradeable(vkaToken).safeTransfer(
                msg.sender,
                _claimableAmount
            );

        emit LogClaimVKA(msg.sender, _claimableAmount);
    }

    // -- Internal functions -- //

    function _transferOutWrappedEth(address to, uint256 amount) internal {
        IWETH(weth).deposit{value: amount}();
        IERC20Upgradeable(weth).safeTransfer(to, amount);
    }

    receive() external payable nonReentrant {}
}
