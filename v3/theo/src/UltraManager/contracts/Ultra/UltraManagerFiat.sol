// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./interfaces/IUltraManagerFiat.sol";
import "./Ultra.sol";
import "./KYC.sol";
import "./UltraManager.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

/**
 * @title UltraManagerFiat Contract
 * @notice This contract manages fiat-based redemption processes for the Ultra token system
 * @dev Inherits from UUPSUpgradeable, AccessControlEnumerableUpgradeable, PausableUpgradeable, and ReentrancyGuardUpgradeable
 */
contract UltraManagerFiat is
    UUPSUpgradeable,
    AccessControlEnumerableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    IUltraManagerFiat
{
    // ULTRA contract
    Ultra internal _ultra;

    // UNUSED VARIABLE
    KYCUltra internal _kyc;

    // UltraManager contract
    UltraManager internal _ultraManager;

    struct RedemptionRequest {
        uint256 amountUltra;
        uint256 epoch;
    }

    // Mapping from epoch to mapping of redeemer to RedemptionRequest
    mapping(uint256 => mapping(address => RedemptionRequest)) internal _redemptionRequestsPerEpoch;
    bytes32 internal constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    bytes32 internal constant OPERATOR_ADMIN = keccak256("OPERATOR_ADMIN");
    bytes32 internal constant OFFCHAIN_SERVICE = keccak256("OFFCHAIN_SERVICE");

    // UNUSED VARIABLE, rely on _ultra's KYC
    address internal kycAddress;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the UltraManagerFiat contract with core dependencies
     * @dev Sets up initial state including roles and contract references
     * @param ultra Address of the Ultra token contract
     * @param operatorAdmin Address that will receive the OPERATOR_ADMIN role
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param kyc Address of the KYC contract
     * @param ultraManager Address of the UltraManager contract
     */
    function initialize(
        address ultra,
        address operatorAdmin,
        address defaultAdmin,
        address minterAdmin,
        address kyc,
        address ultraManager
    ) public initializer {
        __AccessControlEnumerable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        _ultraManagerInitUnchained(
            ultra,
            operatorAdmin,
            defaultAdmin,
            minterAdmin,
            kyc,
            ultraManager
        );
    }

    /**
     * @notice Performs core initialization logic for the UltraManagerFiat contract
     * @dev Internal function called by initialize to set up the contract state
     * @param ultra Address of the Ultra token contract
     * @param operatorAdmin Address that will receive the OPERATOR_ADMIN role
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param kyc Address of the KYC contract
     * @param ultraManager Address of the UltraManager contract
     */
    function _ultraManagerInitUnchained(
        address ultra,
        address operatorAdmin,
        address defaultAdmin,
        address minterAdmin,
        address kyc,
        address ultraManager
    ) internal initializer {
        require(ultra != address(0), "UltraZeroAddress");
        require(kyc != address(0), "KycZeroAddress");
        require(ultraManager != address(0), "ultraManagerZeroAddress");

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(OPERATOR_ADMIN, operatorAdmin);
        _grantRole(MINTER_ADMIN, minterAdmin);

        _ultra = Ultra(ultra);
        kycAddress = kyc;
        _ultraManager = UltraManager(ultraManager);
    }

    function _authorizeUpgrade(
        address /*newImplementation*/
    ) internal view override {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "UltraManager: unauthorized"
        );
    }

    /**
     * @notice Overrides the grantRole function to restrict access to DEFAULT_ADMIN_ROLE
     * @dev Only accounts with DEFAULT_ADMIN_ROLE can grant roles
     * @param role The role being granted
     * @param account The account receiving the role
     */
    function grantRole(bytes32 role, address account) public override(AccessControlUpgradeable, IAccessControlUpgradeable) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.grantRole(role, account);
    }

    /**
     * @notice Overrides the revokeRole function to restrict access to DEFAULT_ADMIN_ROLE
     * @dev Only accounts with DEFAULT_ADMIN_ROLE can revoke roles
     * @param role The role being revoked
     * @param account The account losing the role
     */
    function revokeRole(bytes32 role, address account) public override(AccessControlUpgradeable, IAccessControlUpgradeable) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.revokeRole(role, account);
    }

    /**
     * @dev Pauses all contract activities that are marked as `whenNotPaused`.
     */
    function pause() external onlyRole(OPERATOR_ADMIN) {
        _pause();
    }

    /**
     * @dev Unpauses the contract, resuming activities that are marked as `whenNotPaused`.
     */
    function unpause() external onlyRole(OPERATOR_ADMIN) {
        _unpause();
    }

    /**
     * @notice Requests redemption of Ultra tokens for fiat
     * @dev Ensures user has KYC approval and contract is not paused
     * @param amountUltraToRedeem Amount of Ultra tokens to redeem
     * @param fullWithdrawal If true, redeems entire Ultra token balance regardless of amountUltraToRedeem
     */
    function requestRedemption(uint256 amountUltraToRedeem, bool fullWithdrawal) external nonReentrant whenNotPaused checkKYC(msg.sender) {
        uint256 amountToRedeem;
        _ultraManager.transitionEpochExternal();
        uint256 currentEpoch = _ultraManager.currentEpoch();
        uint256 exchangeRate = _ultraManager.lastSetMintExchangeRate();
        require(exchangeRate > 0, "Exchange rate not set");

        if (fullWithdrawal) {
            amountToRedeem = _ultra.balanceOf(msg.sender);
            require(amountToRedeem > 0, "No Ultra tokens to redeem");
        } else {
            // Calculate fiat value using UltraManager's BPS_DENOMINATOR
            uint256 fiatValue = (amountUltraToRedeem * exchangeRate) / _ultraManager.BPS_DENOMINATOR();
            uint256 minimumRedeemAmountFiat = _ultraManager.minimumRedeemAmountFiat();
            // Check if the fiat value meets the minimum requirement
            require(fiatValue >= minimumRedeemAmountFiat, "Fiat value below minimum");
            amountToRedeem = amountUltraToRedeem;
        }

        RedemptionRequest storage request = _redemptionRequestsPerEpoch[currentEpoch][msg.sender];

        // Update or create a new redemption request
        request.amountUltra = amountToRedeem;
        request.epoch = currentEpoch;

        require(
            _ultra.transferFromManager(
                msg.sender,
                address(this),
                amountToRedeem
            ),
            "Token transfer failed"
        );

        emit RedemptionRequested(msg.sender, amountToRedeem, currentEpoch);
    }

    /**
     * @notice Processes redemption request for a specific epoch
     * @dev Can only be called by accounts with MINTER_ADMIN role
     * @param redeemer The address of redeemer whose redemption request is to be completed
     * @param epochToProcess The epoch for which the redemption is being processed
     */
    function completeRedemptions(
        address redeemer,
        uint256 epochToProcess
    ) external onlyRole(MINTER_ADMIN) nonReentrant whenNotPaused {
        RedemptionRequest storage request = _redemptionRequestsPerEpoch[epochToProcess][redeemer];

        require(request.amountUltra > 0, "No redemption request found");
        require(request.epoch == epochToProcess, "Invalid epoch");
        require(_isKYCValid(redeemer), "Redeemer KYC not valid");

        uint256 ultraAmount = request.amountUltra;

        // Remove the redemption request
        delete _redemptionRequestsPerEpoch[epochToProcess][redeemer];
        
        // Burn the ULTRA tokens
        _ultra.burn(ultraAmount);

        emit RedemptionCompleted(
            redeemer,
            ultraAmount,
            epochToProcess
        );
    }

    /**
     * @notice Initiates refund process for a redemption request
     * @dev Can only be called by accounts with MINTER_ADMIN role
     * @param refundee The address that is to receive the refund
     * @param epochToRefund The epoch for which the refund is being processed
     */
    function refundRedemptions(
        address refundee,
        uint256 epochToRefund
    ) external nonReentrant whenNotPaused onlyRole(MINTER_ADMIN) {
        RedemptionRequest storage request = _redemptionRequestsPerEpoch[epochToRefund][refundee];

        require(request.amountUltra > 0, "No redemption request found");
        require(request.epoch == epochToRefund, "Invalid epoch");
        require(_isKYCValid(refundee), "Refundee KYC not valid");

        uint256 ultraAmountReturned = request.amountUltra;

        // Remove the redemption request
        delete _redemptionRequestsPerEpoch[epochToRefund][refundee];

        // Transfer the ULTRA tokens back to the refundee
        _ultra.completeTransfer(refundee, ultraAmountReturned);

        emit RedemptionRefunded(
            refundee,
            ultraAmountReturned,
            epochToRefund
        );
    }

    /**
     * @notice Verifies if an account has passed KYC check
     * @param account The address to check for KYC approval
     */
    function _checkKYC(address account) private view {
        // Skip KYC checks if KYC contract is not set (zero address)
        address ultraKycAddress = address(_ultra.KYCContract());
        if (ultraKycAddress == address(0)) {
            return;
        }
        if (!KYCUltra(ultraKycAddress).isKYC(account)) {
            revert KYCNotApproved();
        }
    }

    /**
     * @notice Checks if KYC status for a given account is valid
     * @param account The address to check for KYC validity
     * @return bool True if the account has valid KYC status or if KYC contract is not set
     */
    function _isKYCValid(address account) private view returns (bool) {
        // Skip KYC checks if KYC contract is not set (zero address)
        address ultraKycAddress = address(_ultra.KYCContract());
        if (ultraKycAddress == address(0)) {
            return true;
        }
        return KYCUltra(ultraKycAddress).isKYC(account);
    }

    /**
     * @dev Ensures that an account has passed KYC before executing a function
     * @param account The address to check for KYC approval
     */
    modifier checkKYC(address account) {
        _checkKYC(account);
        _;
    }

    /**
     * @notice Updates the Ultra token contract address
     * @dev Can only be called by accounts with OPERATOR_ADMIN role
     * @param ultra The address of the new Ultra token contract
     */
    function setUltraContract(address ultra) external onlyRole(OPERATOR_ADMIN) {
        require(ultra != address(0), "UltraZeroAddress");
        _ultra = Ultra(ultra);
    }

    /**
     * @notice Updates the UltraManager contract address
     * @dev Can only be called by accounts with OPERATOR_ADMIN role
     * @param ultraManager The address of the new UltraManager contract
     */
    function setUltraManagerContract(address ultraManager) external onlyRole(OPERATOR_ADMIN) {
        require(ultraManager != address(0), "UltraManagerZeroAddress");
        _ultraManager = UltraManager(ultraManager);
    }
}
