// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

interface IJuicyStaking {
    function depositOnBehalf(address beneficiary, uint256 amount, uint256 lockMonths) external;
}

contract JuicyAirdrops is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using ECDSA for bytes32;

    IERC20 public immutable juicy;
    IJuicyStaking public immutable stakingContract;

    address public signer;
    address public companyWallet;

    struct AirdropInfo {
        uint256 totalAmount;
        uint256 remainingAmount;
        bool isFunded;
        mapping(address => bool) hasClaimed;
    }

    mapping(uint256 => AirdropInfo) public airdrops;

    event AirdropFunded(uint256 indexed airdropNumber, uint256 amount);
    event Claimed(address indexed claimant, address indexed recipient, uint256 indexed airdropNumber, uint256 totalEligible, uint256 claimedAmount, uint256 stakedMonths);
    event SignerUpdated(address newSigner);
    event CompanyWalletUpdated(address newWallet);
    event EmergencyWithdraw(address indexed to, uint256 amount);

    constructor(
        IERC20 _juicy,
        IJuicyStaking _stakingContract,
        address _signer,
        address _companyWallet
    ) {
        juicy = _juicy;
        stakingContract = _stakingContract;
        signer = _signer;
        companyWallet = _companyWallet;
    }

    function setSigner(address _signer) external onlyOwner {
        signer = _signer;
        emit SignerUpdated(_signer);
    }

    function setCompanyWallet(address _wallet) external onlyOwner {
        companyWallet = _wallet;
        emit CompanyWalletUpdated(_wallet);
    }

    function fundAirdrop(uint256 airdropNumber, uint256 amount) external onlyOwner {
        require(!airdrops[airdropNumber].isFunded, "Already funded");
        juicy.safeTransferFrom(msg.sender, address(this), amount);

        airdrops[airdropNumber].totalAmount = amount;
        airdrops[airdropNumber].remainingAmount = amount;
        airdrops[airdropNumber].isFunded = true;

        emit AirdropFunded(airdropNumber, amount);
    }

    function hasClaimed(uint256 airdropNumber, address claimant) external view returns (bool) {
        return airdrops[airdropNumber].hasClaimed[claimant];
    }

    function claim(
        uint256 airdropNumber,
        address recipient,
        uint256 userPoints,
        uint256 totalPoints,
        uint256 lockMonths,
        uint256 expiry,
        bytes calldata signature
    ) external nonReentrant {
        AirdropInfo storage drop = airdrops[airdropNumber];

        require(drop.isFunded, "Airdrop not funded");
        require(block.timestamp <= expiry, "Signature expired");
        require(lockMonths <= 12, "Max lockMonths is 12");
        require(!drop.hasClaimed[msg.sender], "Already claimed");
        require(totalPoints > 0 && userPoints > 0 && userPoints <= totalPoints, "Invalid points");

        bytes32 messageHash = keccak256(abi.encodePacked(msg.sender, recipient, airdropNumber, userPoints, totalPoints, lockMonths, expiry, block.chainid));
        require(_verify(messageHash, signature), "Invalid signature");

        uint256 userShare = (drop.totalAmount * userPoints) / totalPoints;

        uint256 claimPercentage = 10 + ((lockMonths * 90) / 12);
        uint256 claimAmount = (userShare * claimPercentage) / 100;
        uint256 leftover = userShare - claimAmount;

        drop.hasClaimed[msg.sender] = true;
        drop.remainingAmount -= userShare;

        if (lockMonths > 0) {
            juicy.safeApprove(address(stakingContract), claimAmount);
            stakingContract.depositOnBehalf(recipient, claimAmount, lockMonths);
        } else {
            juicy.safeTransfer(recipient, claimAmount);
        }

        if (leftover > 0) {
            juicy.safeTransfer(companyWallet, leftover);
        }

        if (drop.remainingAmount == 0) {
            drop.isFunded = false;
        }

        emit Claimed(msg.sender, recipient, airdropNumber, userShare, claimAmount, lockMonths);
    }

    function emergencyWithdrawJuicy(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Invalid address");
        uint256 contractBalance = juicy.balanceOf(address(this));
        require(amount <= contractBalance, "Amount exceeds balance");

        juicy.safeTransfer(to, amount);
        emit EmergencyWithdraw(to, amount);
    }

    function _verify(bytes32 messageHash, bytes memory signature) internal view returns (bool) {
        return messageHash.toEthSignedMessageHash().recover(signature) == signer;
    }
}
