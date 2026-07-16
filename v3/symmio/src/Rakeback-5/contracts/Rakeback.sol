// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";

import "./interfaces/IRFL.sol";
import "./interfaces/ISymmio.sol";
import "./interfaces/IMultiAccount.sol";
import "./interfaces/IFeeCollector.sol";

/// @title Rakeback
/// @notice Handles rakeback distribution and referral rewards
contract Rakeback is AccessControlEnumerableUpgradeable, ReentrancyGuardUpgradeable {
	using SafeERC20 for IERC20;

	/* ─────────────────── Roles ─────────────────── */

	bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
	bytes32 public constant VIBE_COLLECTOR_ROLE = keccak256("VIBE_COLLECTOR_ROLE");

	/* ────────────────── Constants ───────────────── */

	uint8 public constant TRADING_CLAIM = 1;
	uint8 public constant REFERRAL_CLAIM = 2;

	/* ────────────────── Storage ─────────────────── */

	address public symmio;
	address public multiAccount;
	address public rfl;
	address public feeCollector;
	address public rakebackToken;
	address public vibeSigner;
	address public vibeFeeReceiver;
	uint256 public signatureValidTime;

	mapping(uint8 => mapping(uint256 => uint256)) public claimedAmounts; // claimType => tokenId => amount
	uint256 public vibeClaimedAmount;

	/* ─────────────────── Events ─────────────────── */

	event VibeSignerUpdated(address indexed oldSigner, address indexed newSigner);
	event VibeFeeReceiverUpdated(address indexed oldReceiver, address indexed newReceiver);
	event FeeCollectorUpdated(address indexed oldCollector, address indexed newCollector);
	event SignatureValidTimeUpdated(uint256 oldTime, uint256 newTime);
	event SymmioAddressUpdated(address indexed oldAddr, address indexed newAddr);
	event MultiAccountAddressUpdated(address indexed oldAddr, address indexed newAddr);
	event RflAddressUpdated(address indexed oldAddr, address indexed newAddr);

	event ClaimProcessed(address indexed user, address account, uint256 indexed tokenId, uint256 amount, uint256 sigTimestamp, uint8 claimType);
	event VibeClaimProcessed(address indexed receiver, uint256 amount, uint256 sigTimestamp);

	/* ─────────────────── Errors ─────────────────── */

	error InvalidSignature();
	error SignatureExpired();
	error AlreadyClaimed();
	error InsufficientFundInTheContract();
	error InvalidVibeFeeReceiver();
	error NftIsWithoutReferer();
	error NotAccountOwner();
	error NotNftOwner();

	/* ─────────────────── Init ──────────────────── */

	function initialize(
		address _admin,
		address _symmio,
		address _multiAccount,
		address _rfl,
		address _feeCollector,
		address _vibeSigner,
		address _vibeFeeReceiver,
		uint256 _signatureValidTime
	) public initializer {
		__AccessControlEnumerable_init();
		__ReentrancyGuard_init();

		symmio = _symmio;
		multiAccount = _multiAccount;
		rfl = _rfl;
		feeCollector = _feeCollector;
		vibeSigner = _vibeSigner;
		vibeFeeReceiver = _vibeFeeReceiver;
		signatureValidTime = _signatureValidTime;
		rakebackToken = ISymmio(_symmio).getCollateral();

		_grantRole(DEFAULT_ADMIN_ROLE, _admin);
		_grantRole(SETTER_ROLE, _admin);
	}

	/* ───────────── Internal helpers ───────────── */

	function _ethHash(bytes32 message) private pure returns (bytes32) {
		return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", message));
	}

	function _checkSigWindow(uint256 sigTimestamp) private view {
		if (block.timestamp < sigTimestamp) revert InvalidSignature();
		if (block.timestamp > sigTimestamp + signatureValidTime) revert SignatureExpired();
	}

	function _checkSignature(bytes32 dataHash, bytes calldata signature) private view {
		if (!SignatureChecker.isValidSignatureNow(vibeSigner, _ethHash(dataHash), signature)) revert InvalidSignature();
	}

	function _unclaimed(uint256 requested, uint256 alreadyClaimed) private pure returns (uint256) {
		if (alreadyClaimed >= requested) revert AlreadyClaimed();
		return requested - alreadyClaimed;
	}

	/// @dev Scales 18‑decimals accounting amount to the token's decimals.
	function _scale(uint256 amount) private view returns (uint256) {
		uint8 diff = 18 - IERC20Metadata(rakebackToken).decimals();
		return diff == 0 ? amount : amount / (10 ** diff);
	}

	function _collectFeesAndVerifyBalance(uint256 withdrawable) private {
		IFeeCollector(feeCollector).claimAllFee();
		if (IERC20(rakebackToken).balanceOf(address(this)) < withdrawable) revert InsufficientFundInTheContract();
	}

	/* ───────────── Claim core logic ───────────── */

	function _processClaim(
		uint256 tokenId,
		address account,
		uint256 amount,
		uint256 sigTimestamp,
		bytes calldata signature,
		uint8 claimType
	) private nonReentrant {
		_checkSigWindow(sigTimestamp);

		if (IRFL(rfl).referrer(tokenId) == 0) revert NftIsWithoutReferer();

		bytes32 dataHash = keccak256(abi.encode(block.chainid, address(this), tokenId, account, amount, sigTimestamp, claimType));
		_checkSignature(dataHash, signature);

		uint256 unclaimed = _unclaimed(amount, claimedAmounts[claimType][tokenId]);
		uint256 withdrawable = _scale(unclaimed);

		address tokenOwner = IRFL(rfl).ownerOf(tokenId);
		address accountOwner = IMultiAccount(multiAccount).owners(account);
		if (tokenOwner != accountOwner) revert NotAccountOwner();

		_collectFeesAndVerifyBalance(withdrawable);

		claimedAmounts[claimType][tokenId] += unclaimed;

		IERC20(rakebackToken).approve(symmio, withdrawable);
		ISymmio(symmio).depositFor(account, withdrawable);

		emit ClaimProcessed(msg.sender, account, tokenId, unclaimed, sigTimestamp, claimType);
	}

	/* ───────────── External functions ──────────── */

	function tradingClaim(
		uint256 tokenId,
		address account,
		uint256 amount,
		uint256 sigTimestamp,
		bytes calldata signature
	) external onlyNftOwner(tokenId) {
		_processClaim(tokenId, account, amount, sigTimestamp, signature, TRADING_CLAIM);
	}

	function referralClaim(
		uint256 tokenId,
		address account,
		uint256 amount,
		uint256 sigTimestamp,
		bytes calldata signature
	) external onlyNftOwner(tokenId) {
		_processClaim(tokenId, account, amount, sigTimestamp, signature, REFERRAL_CLAIM);
	}

	function vibeClaim(uint256 amount, uint256 sigTimestamp, bytes calldata signature) external onlyRole(VIBE_COLLECTOR_ROLE) nonReentrant {
		_checkSigWindow(sigTimestamp);

		bytes32 dataHash = keccak256(abi.encode(block.chainid, address(this), amount, sigTimestamp));
		_checkSignature(dataHash, signature);

		uint256 unclaimed = _unclaimed(amount, vibeClaimedAmount);
		uint256 withdrawable = _scale(unclaimed);

		if (vibeFeeReceiver == address(0)) revert InvalidVibeFeeReceiver();

		_collectFeesAndVerifyBalance(withdrawable);

		vibeClaimedAmount += unclaimed;
		IERC20(rakebackToken).safeTransfer(vibeFeeReceiver, withdrawable);

		emit VibeClaimProcessed(vibeFeeReceiver, unclaimed, sigTimestamp);
	}

	/* ─────────────── Setters ─────────────── */

	function setSignatureValidTime(uint256 newTime) external onlyRole(SETTER_ROLE) {
		emit SignatureValidTimeUpdated(signatureValidTime, newTime);
		signatureValidTime = newTime;
	}

	function setSymmioAddress(address newSymmio) external onlyRole(SETTER_ROLE) {
		emit SymmioAddressUpdated(symmio, newSymmio);
		symmio = newSymmio;
		rakebackToken = ISymmio(newSymmio).getCollateral();
	}

	function setVibeSigner(address newSigner) external onlyRole(SETTER_ROLE) {
		emit VibeSignerUpdated(vibeSigner, newSigner);
		vibeSigner = newSigner;
	}

	function setVibeFeeReceiver(address newReceiver) external onlyRole(SETTER_ROLE) {
		emit VibeFeeReceiverUpdated(vibeFeeReceiver, newReceiver);
		vibeFeeReceiver = newReceiver;
	}

	function setFeeCollector(address newCollector) external onlyRole(SETTER_ROLE) {
		emit FeeCollectorUpdated(feeCollector, newCollector);
		feeCollector = newCollector;
	}

	function setMultiAccountAddress(address newMultiAccount) external onlyRole(SETTER_ROLE) {
		emit MultiAccountAddressUpdated(multiAccount, newMultiAccount);
		multiAccount = newMultiAccount;
	}

	function setRflAddress(address newRfl) external onlyRole(SETTER_ROLE) {
		emit RflAddressUpdated(rfl, newRfl);
		rfl = newRfl;
	}

	/* ─────────────── Modifiers ─────────────── */

	modifier onlyNftOwner(uint256 tokenId) {
		if (IERC721(rfl).ownerOf(tokenId) != msg.sender) revert NotNftOwner();
		_;
	}
}
