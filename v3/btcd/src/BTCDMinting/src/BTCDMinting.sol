// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

/* solhint-disable private-vars-leading-underscore */
/* solhint-disable var-name-mixedcase */

import "./SingleAdminAccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/structs/BitMaps.sol";
import "@openzeppelin/contracts/interfaces/IERC1271.sol";

import "./interfaces/IBTCD.sol";
import "./interfaces/IBTCDMinting.sol";

/**
 * @title BTCD Minting
 * @notice This contract mints and redeems BTCD
 */
contract BTCDMinting is IBTCDMinting, SingleAdminAccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;
    using BitMaps for BitMaps.BitMap;

    /* --------------- CONSTANTS --------------- */

    /// @notice EIP712 domain
    bytes32 private constant EIP712_DOMAIN =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    /// @notice order type
    bytes32 public constant ORDER_TYPE = keccak256(
        "Order(bytes32 order_id,uint8 order_type,uint120 expiry,uint256 nonce,address benefactor,address beneficiary,address collateral_asset,uint128 collateral_amount,uint128 btcd_amount)"
    );

    /// @notice role enabling to invoke mint
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice role enabling to invoke redeem
    bytes32 public constant REDEEMER_ROLE = keccak256("REDEEMER_ROLE");

    /// @notice role enabling to transfer collateral to custody wallets
    bytes32 public constant COLLATERAL_MANAGER_ROLE = keccak256("COLLATERAL_MANAGER_ROLE");

    /// @notice role enabling to disable mint and redeem and remove minters and redeemers in an emergency
    bytes32 public constant GATEKEEPER_ROLE = keccak256("GATEKEEPER_ROLE");

    // Virtual role constants for business roles (not exposed in AccessControl but tracked in _accountRole)
    bytes32 private constant VIRTUAL_BENEFACTOR_ROLE = keccak256("VIRTUAL_BENEFACTOR_ROLE");
    bytes32 private constant VIRTUAL_CUSTODIAN_ROLE = keccak256("VIRTUAL_CUSTODIAN_ROLE");

    /// @notice EIP712 domain hash
    bytes32 private constant EIP712_DOMAIN_TYPEHASH = keccak256(abi.encodePacked(EIP712_DOMAIN));

    /// @notice EIP 1271 magic value hash
    bytes4 private constant EIP1271_MAGICVALUE = bytes4(keccak256("isValidSignature(bytes32,bytes)"));

    /// @notice EIP712 name
    bytes32 private constant EIP_712_NAME = keccak256("BTCDMinting");

    /// @notice holds EIP712 revision
    bytes32 private constant EIP712_REVISION = keccak256("1");

    /// @notice required ratio for route
    uint128 private constant ROUTE_REQUIRED_RATIO = 10_000;

    /* --------------- STATE VARIABLES --------------- */

    /// @notice btcd stablecoin
    IBTCD public immutable btcd;

    // @notice whitelisted benefactors
    EnumerableSet.AddressSet private _whitelistedBenefactors;

    // @notice approved beneficiaries for a given benefactor
    mapping(address => EnumerableSet.AddressSet) private _approvedBeneficiariesPerBenefactor;

    // @notice custodian addresses
    EnumerableSet.AddressSet private _custodianAddresses;

    /// @notice holds computable chain id
    uint256 private immutable _chainId;

    /// @notice holds computable domain separator
    bytes32 private immutable DOMAIN_SEPARATOR;

    /// @notice user deduplication
    mapping(address => BitMaps.BitMap) private _usedNonces;

    /// @notice For smart contracts to delegate signing to EOA address
    mapping(address => mapping(address => DelegatedSignerStatus)) public delegatedSigner;

    /// @notice global single block totals
    GlobalConfig public globalConfig;

    /// @notice running total BTCD minted/redeemed per single block
    BlockTotals public totalPerBlock;

    /// @notice total amount of collateral per asset that may be used to mint/redeem BTCD per single block.
    mapping(address => BlockTotals) public totalPerBlockPerAsset;

    /// @notice configurations per token asset
    mapping(address => TokenConfig) public tokenConfig;

    /* --------------- MODIFIERS --------------- */

    /// @notice ensure that the per block global and asset specific mint limits are not exceeded for a mint order
    modifier doesNotExceedPerBlockMintLimits(Order calldata _order) {
        if (_order.order_type != OrderType.MINT) revert InvalidOrder();
        _checkAndUpdateMintLimits(_order);
        _;
    }

    /// @notice ensure that the per block global and asset specific redeem limits are not exceeded for a redemption order
    modifier doesNotExceedPerBlockRedeemLimits(Order calldata _order) {
        if (_order.order_type != OrderType.REDEEM) revert InvalidOrder();
        _checkAndUpdateRedeemLimits(_order);
        _;
    }

    /* --------------- CONSTRUCTOR --------------- */

    constructor(
        IBTCD _btcd,
        address[] memory _assets,
        TokenConfig[] memory _tokenConfig,
        GlobalConfig memory _globalConfig,
        address[] memory _custodians,
        address _admin
    ) {
        if (address(_btcd) == address(0)) revert InvalidBTCDAddress();
        if (_assets.length == 0) revert NoAssetsProvided();
        if (_tokenConfig.length != _assets.length) revert NoAssetsProvided();
        if (_admin == address(0)) revert InvalidZeroAddress();
        if (_globalConfig.globalMaxMintPerBlock == 0 || _globalConfig.globalMaxRedeemPerBlock == 0) {
            revert InvalidGlobalConfig();
        }
        // Assert BTCD address
        btcd = _btcd;
        emit BTCDSet(address(_btcd));
        // Set the global max BTCD mint/redeem limits
        globalConfig = _globalConfig;
        // Set the chainId
        _chainId = block.chainid;
        // Set the domain separator
        DOMAIN_SEPARATOR = _computeDomainSeparator();
        // Grant role to admin
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        // Set the custodian addresses
        for (uint128 j = 0; j < _custodians.length;) {
            _addCustodianAddress(_custodians[j]);
            unchecked {
                ++j;
            }
        }
        // Set the max mint/redeem limits per block for each asset
        for (uint128 k = 0; k < _tokenConfig.length;) {
            _initializeTokenConfig(_assets[k], _tokenConfig[k]);
            unchecked {
                ++k;
            }
        }
    }

    ////////////////////////////////////////////////////////////
    //// PRIVILEGED ROLE ACTIONS ///////////////////////////////
    ////////////////////////////////////////////////////////////

    /* ----------- COLLATERAL MANAGER --------- */

    /// @notice transfers an asset to a custody wallet
    function transferToCustody(address wallet, address asset, uint128 amount)
        external
        nonReentrant
        onlyRole(COLLATERAL_MANAGER_ROLE)
    {
        if (amount == 0) revert InvalidAmount();
        if (wallet == address(0) || !_custodianAddresses.contains(wallet)) revert InvalidAddress();
        IERC20(asset).safeTransfer(wallet, amount);
        emit CustodyTransfer(wallet, asset, amount);
    }

    /* --------------- GATEKEEPER ------------- */

    /// @notice Removes the minter role from an account, this can ONLY be executed by the gatekeeper role
    /// @param minter The address to remove the minter role from
    function removeMinterRole(address minter) external onlyRole(GATEKEEPER_ROLE) {
        _revokeRole(MINTER_ROLE, minter);
    }

    /// @notice Removes the redeemer role from an account, this can ONLY be executed by the gatekeeper role
    /// @param redeemer The address to remove the redeemer role from
    function removeRedeemerRole(address redeemer) external onlyRole(GATEKEEPER_ROLE) {
        _revokeRole(REDEEMER_ROLE, redeemer);
    }

    /// @notice Removes the collateral manager role from an account, this can ONLY be executed by the gatekeeper role
    /// @param collateralManager The address to remove the collateralManager role from
    function removeCollateralManagerRole(address collateralManager) external onlyRole(GATEKEEPER_ROLE) {
        _revokeRole(COLLATERAL_MANAGER_ROLE, collateralManager);
    }

    /// @notice Disables mint and redeem operations, can ONLY be executed by the gatekeeper role
    function disableMintAndRedeem() external onlyRole(GATEKEEPER_ROLE) {
        _pause();
    }

    /* --------------- ADMIN ------------------ */

    /// @notice Enables mint and redeem operations, can ONLY be executed by the admin role  
    function enableMintAndRedeem() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Sets the overall, global maximum BTCD mint size per block
    function setGlobalMaxMintPerBlock(uint128 _globalMaxMintPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
        emit MaxMintPerBlockGlobalChanged(globalConfig.globalMaxMintPerBlock, _globalMaxMintPerBlock);
        globalConfig.globalMaxMintPerBlock = _globalMaxMintPerBlock;
    }

    /// @notice Sets the overall, global maximum BTCD redeem size per block
    function setGlobalMaxRedeemPerBlock(uint128 _globalMaxRedeemPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
        emit MaxRedeemPerBlockGlobalChanged(globalConfig.globalMaxRedeemPerBlock, _globalMaxRedeemPerBlock);
        globalConfig.globalMaxRedeemPerBlock = _globalMaxRedeemPerBlock;
    }

    /// @notice Sets the maximum amount of COLLATERAL ASSET that may be used for minting on a per block basis
    /// @dev may be used to set to zero for pause of minting with a given asset
    function setMaxMintPerBlock(uint128 _maxMintPerBlock, address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMaxMintPerBlock(_maxMintPerBlock, asset);
    }

    /// @notice Sets the maximum amount of COLLATERAL ASSET that may be redeemed on a per block basis
    /// @dev may be used to set to zero for pause of redeeming with a given asset
    function setMaxRedeemPerBlock(uint128 _maxRedeemPerBlock, address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMaxRedeemPerBlock(_maxRedeemPerBlock, asset);
    }

    /// @notice Adds an asset to the supported assets list
    function addSupportedAsset(address asset, TokenConfig memory _tokenConfig) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _initializeTokenConfig(asset, _tokenConfig);
    }

    /// @notice Removes an asset from the supported assets list
    function removeSupportedAsset(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _deleteTokenConfig(asset);
    }

    /// @notice Adds a benefactor address to the benefactor whitelist
    function addWhitelistedBenefactor(address benefactor) public onlyRole(DEFAULT_ADMIN_ROLE) {
        // Check for zero address first, before role conflict checking
        if (benefactor == address(0)) {
            revert InvalidBenefactorAddress();
        }
        // Check that the benefactor doesn't have any roles using unified system
        if (_hasAnyAccessControlRole(benefactor)) {
            revert RoleConflict();
        }
        if (!_whitelistedBenefactors.add(benefactor)) {
            revert InvalidBenefactorAddress();
        }
        // Track in unified role system
        _addRoleToAccount(benefactor, VIRTUAL_BENEFACTOR_ROLE);
        emit BenefactorAdded(benefactor);
    }

    /// @notice Removes the benefactor address from the benefactor whitelist
    function removeWhitelistedBenefactor(address benefactor) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!_whitelistedBenefactors.remove(benefactor)) revert InvalidAddress();
        // Remove from unified role system
        _removeRoleFromAccount(benefactor, VIRTUAL_BENEFACTOR_ROLE);
        emit BenefactorRemoved(benefactor);
    }

    /// @notice Adds an custodian to the supported custodians list.
    function addCustodianAddress(address custodian) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _addCustodianAddress(custodian);
    }

    /// @notice Removes an custodian from the custodian address list
    function removeCustodianAddress(address custodian) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!_custodianAddresses.remove(custodian)) revert InvalidCustodianAddress();
        // Remove from unified role system
        _removeRoleFromAccount(custodian, VIRTUAL_CUSTODIAN_ROLE);
        emit CustodianAddressRemoved(custodian);
    }

    /* --------------- MINTER ------------------ */

    /**
     * @notice Mint stablecoins from assets
     * @param order struct containing order details and confirmation from server
     * @param signature signature of the taker
     */
    function mint(Order calldata order, Route calldata route, Signature calldata signature)
        external
        override
        nonReentrant
        onlyRole(MINTER_ROLE)
        whenNotPaused
        doesNotExceedPerBlockMintLimits(order)
    {
        verifyOrder(order, signature);
        if (!verifyRoute(route)) revert InvalidRoute();
        _deduplicateOrder(order.benefactor, order.nonce);
        _transferCollateral(
            order.collateral_amount, order.collateral_asset, order.benefactor, route.addresses, route.ratios
        );
        btcd.mint(order.beneficiary, order.btcd_amount);
        emit Mint(
            order.order_id,
            order.benefactor,
            order.beneficiary,
            msg.sender,
            order.collateral_asset,
            order.collateral_amount,
            order.btcd_amount
        );
    }

    /* --------------- REDEEMER --------------- */

    /**
     * @notice Redeem stablecoins for assets
     * @param order struct containing order details and confirmation from server
     * @param signature signature of the taker
     */
    function redeem(Order calldata order, Signature calldata signature)
        external
        override
        nonReentrant
        onlyRole(REDEEMER_ROLE)
        whenNotPaused
        doesNotExceedPerBlockRedeemLimits(order)
    {
        verifyOrder(order, signature);
        _deduplicateOrder(order.benefactor, order.nonce);
        btcd.burnFrom(order.benefactor, order.btcd_amount);
        _transferToBeneficiary(order.beneficiary, order.collateral_asset, order.collateral_amount);
        emit Redeem(
            order.order_id,
            order.benefactor,
            order.beneficiary,
            msg.sender,
            order.collateral_asset,
            order.collateral_amount,
            order.btcd_amount
        );
    }

    ////////////////////////////////////////////////////////////
    //// PUBLIC SETTERS/GETTERS/CHECKERS ///////////////////////
    ////////////////////////////////////////////////////////////

    /* --------- BENEFACTOR SETTERS ------------*/

    /// @notice Enables a benefactor to cancel an in-flight order through nonce consumption
    function cancelOrder(uint256 nonce) external {
        // ensure benefactor is authorized
        if (!_whitelistedBenefactors.contains(msg.sender)) {
            revert BenefactorNotWhitelisted();
        }
        _usedNonces[msg.sender].set(nonce);  // one SSTORE, 256 nonces per word
    }

    /// @notice Enables smart contracts to delegate an address for signing
    function setDelegatedSigner(address _delegateTo) external {
        // Check that the delegated signer doesn't have any roles using unified system
        if (_hasAnyAccessControlRole(_delegateTo)) {
            revert RoleConflict();
        }
        if (!isWhitelistedBenefactor(msg.sender)) {
            revert BenefactorNotWhitelisted();
        }
        if (delegatedSigner[msg.sender][_delegateTo] == DelegatedSignerStatus.PENDING) {
            revert DelegationAlreadyPending();
        }
        if (delegatedSigner[msg.sender][_delegateTo] == DelegatedSignerStatus.CONFIRMED) {
            revert DelegationAlreadyAccepted();
        } 
        delegatedSigner[msg.sender][_delegateTo] = DelegatedSignerStatus.PENDING;
        emit DelegatedSignerInitiated(msg.sender, _delegateTo);
    }

    /// @notice The delegated address to confirm delegation
    function confirmDelegatedSigner(address _delegatedBy) external {
        // Check that the confirming address doesn't have any roles using unified system
        if (_hasAnyAccessControlRole(msg.sender)) {
            revert RoleConflict();
        }
        if (delegatedSigner[_delegatedBy][msg.sender] == DelegatedSignerStatus.NOTINITIATED) {
            revert DelegationNotInitiated();
        }
        if (delegatedSigner[_delegatedBy][msg.sender] == DelegatedSignerStatus.CONFIRMED) {
            revert DelegationAlreadyAccepted();
        }
        delegatedSigner[_delegatedBy][msg.sender] = DelegatedSignerStatus.CONFIRMED;
        emit DelegatedSignerAdded(_delegatedBy, msg.sender);
    }

    /// @notice Enables smart contracts to undelegate an address for signing
    function removeDelegatedSigner(address _removedSigner) external {
        if ( delegatedSigner[msg.sender][_removedSigner] == DelegatedSignerStatus.NOTINITIATED ) {
            revert DelegationNotInitiated();
        }
        delegatedSigner[msg.sender][_removedSigner] = DelegatedSignerStatus.NOTINITIATED;
        emit DelegatedSignerRemoved(msg.sender, _removedSigner);
    }

    /// @notice Adds a beneficiary address to the approved beneficiaries list.
    /// @notice Only the benefactor can add or remove corresponding beneficiaries
    /// @param beneficiary The beneficiary address
    /// @param status The status of the beneficiary, true to be added, false to be removed.
    function setApprovedBeneficiary(address beneficiary, bool status) public {
        if (beneficiary == address(0)) revert InvalidZeroAddress();
        if (status) {
            // Check that the beneficiary doesn't have any roles using unified system
            if (_hasAnyAccessControlRole(beneficiary)) {
                revert RoleConflict();
            }
            if (!isWhitelistedBenefactor(msg.sender)) {
                revert BenefactorNotWhitelisted();
            }
            if (!_approvedBeneficiariesPerBenefactor[msg.sender].add(beneficiary)) {
                revert InvalidBeneficiaryAddress();
            } else {
                emit BeneficiaryAdded(msg.sender, beneficiary);
            }
        } else {
            if (!_approvedBeneficiariesPerBenefactor[msg.sender].remove(beneficiary)) {
                revert InvalidBeneficiaryAddress();
            } else {
                emit BeneficiaryRemoved(msg.sender, beneficiary);
            }
        }
    }

    /* --------------- GETTERS --------------- */

    /// @notice returns whether an address is a whitelisted benefactor
    function isWhitelistedBenefactor(address benefactor) public view returns (bool) {
        return _whitelistedBenefactors.contains(benefactor);
    }

    /// @notice returns whether an address is a approved beneficiary per benefactor
    function isApprovedBeneficiary(address benefactor, address beneficiary) public view returns (bool) {
        return _approvedBeneficiariesPerBenefactor[benefactor].contains(beneficiary);
    }

    /// @notice Checks if an asset is supported.
    function isSupportedAsset(address asset) external view returns (bool) {
        return _isSupportedAsset(asset);
    }

    /// @notice returns whether an address is a custodian
    function isCustodianAddress(address custodian) public view returns (bool) {
        return _custodianAddresses.contains(custodian);
    }

    /// @notice Get the domain separator for the token
    /// @dev Return cached value if chainId matches cache, otherwise recomputes separator, to prevent replay attack across forks
    /// @return The domain separator of the token at current chain
    function getDomainSeparator() public view returns (bytes32) {
        if (block.chainid == _chainId) {
            return DOMAIN_SEPARATOR;
        }
        return _computeDomainSeparator();
    }

    /// @notice hash an Order struct
    function hashOrder(Order calldata order) public view override returns (bytes32) {
        return ECDSA.toTypedDataHash(getDomainSeparator(), keccak256(encodeOrder(order)));
    }

    /// @notice encodes an Order struct
    function encodeOrder(Order calldata order) public pure returns (bytes memory) {
        return abi.encode(
            ORDER_TYPE,
            keccak256(bytes(order.order_id)),
            order.order_type,
            order.expiry,
            order.nonce,
            order.benefactor,
            order.beneficiary,
            order.collateral_asset,
            order.collateral_amount,
            order.btcd_amount
        );
    }

    /* --------------- CHECKERS --------------- */

    /// @notice assert validity of signed order
    function verifyOrder(Order calldata order, Signature calldata signature)
        public
        view
        override
        returns (bytes32 taker_order_hash)
    {
        // no zero amounts
        if (order.collateral_amount == 0 || order.btcd_amount == 0) revert InvalidAmount();
        // no expired timestamp
        if (block.timestamp > order.expiry) revert SignatureExpired();
        // validate beneficiary
        _verifyBeneficiary(order);
        // validate signature
        taker_order_hash = _verifySignature(order, signature);
    }

    /// @notice assert validity of route object per type
    function verifyRoute(Route calldata route) public view override returns (bool) {
        uint128 totalRatio = 0;
        if (route.addresses.length != route.ratios.length) {
            return false;
        }
        if (route.addresses.length == 0) {
            return false;
        }
        for (uint256 i = 0; i < route.addresses.length;) {
            if (route.addresses[i] == address(0) || route.ratios[i] == 0 ) {
                return false;
            }
            if (!_custodianAddresses.contains(route.addresses[i]) ) {
                return false;
            }
            totalRatio += route.ratios[i];
            unchecked {
                ++i;
            }
        }
        return (totalRatio == ROUTE_REQUIRED_RATIO);
    }

    /// @notice verify validity of nonce by checking its presence
    function verifyNonce(address account, uint256 nonce) public view returns(bool) {
        if (nonce == 0 || _usedNonces[account].get(nonce)) {
            return false;
        }
        return true;
    }

    /* --------------- INTERNAL --------------- */

    /// @notice Checks if an asset is supported.
    function _isSupportedAsset(address asset) internal view returns (bool) {
        if (asset == address(0) || asset == address(btcd)) {
            return false;
            
        }
        return _isActiveTokenConfig(tokenConfig[asset]);
    }

    /// @notice Checks if a token config is active
    function _isActiveTokenConfig(TokenConfig memory config) internal pure returns (bool) {
        return config.isActive;
    }

    /// @notice deduplication of taker order
    function _deduplicateOrder(address account, uint256 nonce) internal {
        if (!verifyNonce(account, nonce) ) { // reverts on double use
            revert InvalidNonce();
        }
        _usedNonces[account].set(nonce);  // one SSTORE, 256 nonces per word
    }

    /// @notice verify signature of order
    function _verifySignature(Order calldata order, Signature calldata signature) internal view returns (bytes32) {
        // get order hash
        bytes32 taker_order_hash = hashOrder(order);
        // check EIP712 signature
        if (signature.signature_type == SignatureType.EIP712) {
            // recover signer
            address signer = ECDSA.recover(taker_order_hash, signature.signature_bytes);
            // if signer is not benefactor or an approved delegated signer for benefactor, revert
            if (
                !(
                    signer == order.benefactor
                        || delegatedSigner[order.benefactor][signer] == DelegatedSignerStatus.CONFIRMED
                )
            ) {
                revert InvalidEIP712Signature();
            }
            // EIP712 signature ok
            return taker_order_hash;
        }
        // check EIP1271 authorization
        if (signature.signature_type == SignatureType.EIP1271) {
            // call ERC1271 contract
            if (
                IERC1271(order.benefactor).isValidSignature(taker_order_hash, signature.signature_bytes)
                    != EIP1271_MAGICVALUE
            ) {
                revert InvalidEIP1271Signature();
            }
            // EIP1271 authorization ok
            return taker_order_hash;
        }
        // signature type not known
        revert UnknownSignatureType();
    }

    /// @notice verify beneficiary is valid per benefactor
    function _verifyBeneficiary(Order calldata order) internal view {
        // no zero address to beneficiary
        if (order.beneficiary == address(0)) {
            revert InvalidAddress();
        }
        // ensure benefactor is authorized
        if (!_whitelistedBenefactors.contains(order.benefactor)) {
            revert BenefactorNotWhitelisted();
        }
        // if benefactor is beneficiary, return ok
        if (order.benefactor == order.beneficiary) {
            return;
        }
        // if benefactor is not beneficiary, ensure beneficiary approved for benefactor
        if (!_approvedBeneficiariesPerBenefactor[order.benefactor].contains(order.beneficiary)) {
            revert BeneficiaryNotApproved();
        }
    }

    /// @notice transfer supported asset to beneficiary address
    function _transferToBeneficiary(address beneficiary, address asset, uint128 amount) internal {
        IERC20(asset).safeTransfer(beneficiary, amount);
    }

    /// @notice transfer supported asset to array of custody addresses per defined ratio
    function _transferCollateral(
        uint128 amount,
        address asset,
        address benefactor,
        address[] calldata addresses,
        uint128[] calldata ratios
    ) internal {
        IERC20 token = IERC20(asset);

        uint256 len = addresses.length;
        uint128 transferred = 0;

        // send to every address except the last
        for (uint256 i = 0; i + 1 < len;) {
            uint128 slice = uint128((uint256(amount) * ratios[i]) / ROUTE_REQUIRED_RATIO);
            transferred += slice;
            if (slice == 0) {
                revert InvalidRoute();
            }
            token.safeTransferFrom(benefactor, addresses[i], slice);
            unchecked {
                ++i;
            }
        }

        // final single transfer (carries any rounding residue)
        uint128 finalAmount = amount - transferred;
        if (finalAmount == 0) {
            revert InvalidRoute();
        }
        token.safeTransferFrom(benefactor, addresses[len - 1], finalAmount);
    }

    /// @notice Compute the current domain separator
    /// @return The domain separator for the token
    function _computeDomainSeparator() internal view returns (bytes32) {
        return keccak256(abi.encode(EIP712_DOMAIN, EIP_712_NAME, EIP712_REVISION, block.chainid, address(this)));
    }

    /// @notice Internal function that performs the logic of adding a custodian to the supported custodians list.
    function _addCustodianAddress(address custodian) internal {
        // Check that the custodian doesn't have any roles using unified system
        if (_hasAnyAccessControlRole(custodian)) {
            revert RoleConflict();
        }
        if (custodian == address(0) || custodian == address(btcd) || !_custodianAddresses.add(custodian)) {
            revert InvalidCustodianAddress();
        }
        // Track in unified role system
        _addRoleToAccount(custodian, VIRTUAL_CUSTODIAN_ROLE);
        emit CustodianAddressAdded(custodian);
    }

    /* --------------- TOKEN CONFIG --------------- */

    /// @notice Sets the max mintPerBlock limit for a given asset
    function _setMaxMintPerBlock(uint128 _maxMintPerBlock, address asset) internal {
        uint128 oldMaxMintPerBlock = tokenConfig[asset].maxMintPerBlock;
        TokenConfig memory config = tokenConfig[asset];
        config.maxMintPerBlock = _maxMintPerBlock;
        _updateTokenConfig(asset, config);
        emit MaxMintPerBlockChanged(oldMaxMintPerBlock, _maxMintPerBlock, asset);
    }

    /// @notice Sets the max redeemPerBlock limit for a given asset
    function _setMaxRedeemPerBlock(uint128 _maxRedeemPerBlock, address asset) internal {
        uint128 oldMaxRedeemPerBlock = tokenConfig[asset].maxRedeemPerBlock;
        TokenConfig memory config = tokenConfig[asset];
        config.maxRedeemPerBlock = _maxRedeemPerBlock;
        _updateTokenConfig(asset, config);
        emit MaxRedeemPerBlockChanged(oldMaxRedeemPerBlock, _maxRedeemPerBlock, asset);
    }

    /// @notice Sets the token config for a given asset
    /// @dev enforces that the asset is not already active and at least one of mint or redeem is non-zero
    function _initializeTokenConfig(address asset, TokenConfig memory _tokenConfig) internal {
        if (tokenConfig[asset].isActive) {
            revert InvalidAssetAddress();
        }
        if (_tokenConfig.maxMintPerBlock == 0) {
            revert InvalidAmount();
        }
        _assignTokenConfig(asset, _tokenConfig);
        emit AssetAdded(asset);
    }

    /// @notice Updates the token config for a given asset
    /// @dev enforces that the asset is already active
    function _updateTokenConfig(address asset, TokenConfig memory _tokenConfig) internal {
        if (! _isSupportedAsset(asset)) {
            revert InvalidAssetAddress();
        }
        _assignTokenConfig(asset, _tokenConfig);
    }

    /// @notice Assigns the token config for a given asset
    /// @dev should only be called by _setTokenConfig or _updateTokenConfig
    function _assignTokenConfig(address asset, TokenConfig memory _tokenConfig) internal {
        if (asset == address(0) || asset == address(btcd)) {
            revert InvalidAssetAddress();
        }
        if (!_isActiveTokenConfig(_tokenConfig)) { // NOTICE THIS CHECK IS AGAINST THE LOCAL VARIABLE, NOT THE STORAGE
            revert InvalidTokenConfig();
        }
        tokenConfig[asset] = _tokenConfig;
    }

    function _deleteTokenConfig(address asset) internal {
        if (!_isSupportedAsset(asset)) revert InvalidAssetAddress();
        delete tokenConfig[asset];
        emit AssetRemoved(asset);
    }

    /* --------------- Limits --------------- */

    /// @notice Internal function to check and update mint limits
    function _checkAndUpdateMintLimits(Order calldata _order) internal {
        TokenConfig memory _config = tokenConfig[_order.collateral_asset];
        if (!_isActiveTokenConfig(_config)) revert UnsupportedAsset();
        
        _checkGlobalMintLimits(_order.btcd_amount);
        _checkAssetMintLimits(_order.collateral_asset, _order.collateral_amount, _config.maxMintPerBlock);
    }

    /// @notice Internal function to check and update redeem limits
    function _checkAndUpdateRedeemLimits(Order calldata _order) internal {
        TokenConfig memory _config = tokenConfig[_order.collateral_asset];
        if (!_isActiveTokenConfig(_config)) revert UnsupportedAsset();
        
        _checkGlobalRedeemLimits(_order.btcd_amount);
        _checkAssetRedeemLimits(_order.collateral_asset, _order.collateral_amount, _config.maxRedeemPerBlock);
    }

    /// @notice Check global mint limits and update storage
    function _checkGlobalMintLimits(uint128 btcdAmount) internal {
        BlockTotals memory globalTotals = totalPerBlock;
        GlobalConfig memory _globalConfig = globalConfig;
        
        bool isNewBlock = globalTotals.lastBlockNumber < block.number;
        uint128 currentGlobalMinted = isNewBlock ? 0 : globalTotals.mintedPerBlock;
        
        if (currentGlobalMinted + btcdAmount > _globalConfig.globalMaxMintPerBlock) {
            revert GlobalMaxMintPerBlockExceeded();
        }
        
        if (isNewBlock) {
            totalPerBlock.lastBlockNumber = block.number;
            totalPerBlock.mintedPerBlock = btcdAmount;
            totalPerBlock.redeemedPerBlock = 0;
        } else {
            totalPerBlock.mintedPerBlock = currentGlobalMinted + btcdAmount;
        }
    }

    /// @notice Check global redeem limits and update storage
    function _checkGlobalRedeemLimits(uint128 btcdAmount) internal {
        BlockTotals memory globalTotals = totalPerBlock;
        GlobalConfig memory _globalConfig = globalConfig;
        
        bool isNewBlock = globalTotals.lastBlockNumber < block.number;
        uint128 currentGlobalRedeemed = isNewBlock ? 0 : globalTotals.redeemedPerBlock;
        
        if (currentGlobalRedeemed + btcdAmount > _globalConfig.globalMaxRedeemPerBlock) {
            revert GlobalMaxRedeemPerBlockExceeded();
        }
        
        if (isNewBlock) {
            totalPerBlock.lastBlockNumber = block.number;
            totalPerBlock.redeemedPerBlock = btcdAmount;
            totalPerBlock.mintedPerBlock = 0;
        } else {
            totalPerBlock.redeemedPerBlock = currentGlobalRedeemed + btcdAmount;
        }
    }

    /// @notice Check asset-specific mint limits and update storage
    function _checkAssetMintLimits(address asset, uint128 collateralAmount, uint128 maxMintPerBlock) internal {
        BlockTotals memory assetTotals = totalPerBlockPerAsset[asset];
        
        bool isNewBlockForAsset = assetTotals.lastBlockNumber < block.number;
        uint128 currentAssetMinted = isNewBlockForAsset ? 0 : assetTotals.mintedPerBlock;
        
        if (currentAssetMinted + collateralAmount > maxMintPerBlock) {
            revert MaxMintPerBlockExceeded();
        }
        
        if (isNewBlockForAsset) {
            totalPerBlockPerAsset[asset].lastBlockNumber = block.number;
            totalPerBlockPerAsset[asset].mintedPerBlock = collateralAmount;
            totalPerBlockPerAsset[asset].redeemedPerBlock = 0;
        } else {
            totalPerBlockPerAsset[asset].mintedPerBlock = currentAssetMinted + collateralAmount;
        }
    }

    /// @notice Check asset-specific redeem limits and update storage
    function _checkAssetRedeemLimits(address asset, uint128 collateralAmount, uint128 maxRedeemPerBlock) internal {
        BlockTotals memory assetTotals = totalPerBlockPerAsset[asset];
        
        bool isNewBlockForAsset = assetTotals.lastBlockNumber < block.number;
        uint128 currentAssetRedeemed = isNewBlockForAsset ? 0 : assetTotals.redeemedPerBlock;
        
        if (currentAssetRedeemed + collateralAmount > maxRedeemPerBlock) {
            revert MaxRedeemPerBlockExceeded();
        }
        
        if (isNewBlockForAsset) {
            totalPerBlockPerAsset[asset].lastBlockNumber = block.number;
            totalPerBlockPerAsset[asset].redeemedPerBlock = collateralAmount;
            totalPerBlockPerAsset[asset].mintedPerBlock = 0;
        } else {
            totalPerBlockPerAsset[asset].redeemedPerBlock = currentAssetRedeemed + collateralAmount;
        }
    }
}
