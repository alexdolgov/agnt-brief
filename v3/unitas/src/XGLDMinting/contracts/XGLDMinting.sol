// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { MessageHashUtils } from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { IERC1271 } from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import { SingleAdminAccessControl } from "./libraries/SingleAdminAccessControl.sol";
import { IXGLDMinting } from "./interfaces/IXGLDMinting.sol";
import { IXGLDExchangeRate } from "./interfaces/IXGLDExchangeRate.sol";
import { IXGLDToken } from "./interfaces/IXGLDToken.sol";

contract XGLDMinting is IXGLDMinting, SingleAdminAccessControl, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 private constant EIP712_DOMAIN =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    bytes32 private constant ORDER_TYPE = keccak256(
        "Order(string order_id,uint8 order_type,uint128 expiry,uint120 nonce,address benefactor,address beneficiary,address collateral_asset,uint128 collateral_amount,uint128 xgld_amount)"
    );

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant SECURE_OPERATOR_ROLE = keccak256("SECURE_OPERATOR_ROLE");
    bytes32 public constant COLLATERAL_MANAGER_ROLE = keccak256("COLLATERAL_MANAGER_ROLE");
    bytes32 public constant GATEKEEPER_ROLE = keccak256("GATEKEEPER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    bytes4 private constant EIP1271_MAGICVALUE = bytes4(keccak256("isValidSignature(bytes32,bytes)"));

    bytes32 private constant EIP_712_NAME = keccak256("XGLDMinting");
    bytes32 private constant EIP712_REVISION = keccak256("1");
    uint128 private constant ROUTE_REQUIRED_RATIO = 10_000;
    uint256 private constant RATE_PRECISION = 1_000_000;

    enum OrderStatus {
        NONE,
        SECURED,
        MINTED
    }

    IXGLDToken public xgld;
    IERC20 public immutable xaut;
    IXGLDExchangeRate public immutable exchangeRateProvider;

    EnumerableSet.AddressSet private _whitelistedBenefactors;
    mapping(address => EnumerableSet.AddressSet) private _approvedBeneficiariesPerBenefactor;
    EnumerableSet.AddressSet private _custodianAddresses;

    uint256 private immutable _chainId;
    bytes32 private immutable _domainSeparator;

    mapping(address => mapping(uint256 => uint256)) private _orderBitmaps;
    mapping(bytes32 => OrderStatus) private _orderStatus;
    mapping(address => mapping(address => DelegatedSignerStatus)) public delegatedSigner;

    GlobalConfig public globalConfig;
    mapping(uint256 => BlockTotals) public totalPerBlock;
    mapping(uint256 => mapping(address => BlockTotals)) public totalPerBlockPerAsset;
    mapping(address => TokenConfig) public tokenConfig;
    uint256 public override totalXautDeposited;

    modifier belowMaxMintPerBlock(uint128 mintAmount, address asset) {
        uint256 mintedPerBlock = uint256(totalPerBlockPerAsset[block.number][asset].mintedPerBlock);
        if (mintedPerBlock + uint256(mintAmount) > uint256(tokenConfig[asset].maxMintPerBlock)) {
            revert MaxMintPerBlockExceeded();
        }
        _;
    }

    modifier belowGlobalMaxMintPerBlock(uint128 mintAmount) {
        uint256 mintedPerBlock = uint256(totalPerBlock[block.number].mintedPerBlock);
        if (mintedPerBlock + uint256(mintAmount) > uint256(globalConfig.globalMaxMintPerBlock)) {
            revert GlobalMaxMintPerBlockExceeded();
        }
        _;
    }

    constructor(
        IXGLDToken _xgld,
        address _xaut,
        IXGLDExchangeRate _exchangeRateProvider,
        TokenConfig memory _tokenConfig,
        GlobalConfig memory _globalConfig,
        address[] memory _custodians,
        address _admin
    ) {
        if (address(_xgld) == address(0)) revert InvalidXGLDAddress();
        if (_xaut == address(0) || _xaut == address(_xgld)) revert InvalidAssetAddress();
        if (address(_exchangeRateProvider) == address(0)) revert InvalidExchangeRateProvider();
        if (_admin == address(0)) revert InvalidZeroAddress();

        xgld = _xgld;
        xaut = IERC20(_xaut);
        exchangeRateProvider = _exchangeRateProvider;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        for (uint256 j = 0; j < _custodians.length; ) {
            _addCustodianAddressInternal(_custodians[j]);
            unchecked { ++j; }
        }

        globalConfig = _globalConfig;
        _setTokenConfig(_xaut, _tokenConfig);

        _chainId = block.chainid;
        _domainSeparator = _computeDomainSeparator();

        emit XGLDSet(address(_xgld));
    }

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    /// @notice Secure collateral into custody before backend execution.
    /// @dev XAUT orders are checked against exchangeRateProvider on-chain.
    ///      Other supported assets rely on the signed xgld_amount from the backend oracle.
    function secureCollateral(Order calldata order, Route calldata route, Signature calldata signature)
        external
        override
        nonReentrant
        onlyRole(SECURE_OPERATOR_ROLE)
        whenNotPaused
    {
        if (order.order_type != OrderType.MINT) revert InvalidOrder();
        if (order.collateral_amount == 0 || order.xgld_amount == 0) revert InvalidOrder();
        if (globalConfig.globalMaxMintPerBlock == 0) revert GlobalMaxMintPerBlockExceeded();
        if (!tokenConfig[order.collateral_asset].isActive) revert UnsupportedAsset();
        if (order.collateral_asset == address(xaut) && previewMint(order.collateral_amount) != order.xgld_amount) {
            revert InvalidOrder();
        }

        bytes32 orderHash = verifyOrder(order, signature);
        OrderStatus status = _orderStatus[orderHash];
        if (status == OrderStatus.MINTED) revert OrderAlreadyMinted();
        if (status == OrderStatus.SECURED) revert DuplicateOrder();
        if (!verifyRoute(route)) revert InvalidRoute();

        _deduplicateOrder(order.benefactor, order.nonce);
        _orderStatus[orderHash] = OrderStatus.SECURED;

        _transferCollateral(
            order.collateral_amount,
            order.collateral_asset,
            order.benefactor,
            route.addresses,
            route.ratios
        );

        if (order.collateral_asset == address(xaut)) {
            totalXautDeposited += order.collateral_amount;
        }

        emit CollateralSecured(
            order.order_id,
            order.benefactor,
            order.beneficiary,
            order.collateral_asset,
            order.collateral_amount
        );
    }

    /// @notice Mint XGLD from collateral. Requires signed order + MINTER_ROLE.
    /// @dev Expiry and asset active status are validated before collateral is secured.
    ///      Already-secured orders remain eligible for settlement after later expiry or asset deactivation.
    function mint(Order calldata order)
        external
        override
        nonReentrant
        onlyRole(MINTER_ROLE)
        whenNotPaused
        belowMaxMintPerBlock(order.xgld_amount, order.collateral_asset)
        belowGlobalMaxMintPerBlock(order.xgld_amount)
    {
        if (order.order_type != OrderType.MINT) revert InvalidOrder();
        if (tokenConfig[order.collateral_asset].maxMintPerBlock == 0) revert UnsupportedAsset();

        bytes32 orderHash = hashOrder(order);
        OrderStatus status = _orderStatus[orderHash];
        if (status == OrderStatus.NONE) revert OrderNotSecure();
        if (status == OrderStatus.MINTED) revert OrderAlreadyMinted();

        totalPerBlockPerAsset[block.number][order.collateral_asset].mintedPerBlock += order.xgld_amount;
        totalPerBlock[block.number].mintedPerBlock += order.xgld_amount;

        _orderStatus[orderHash] = OrderStatus.MINTED;
        xgld.mint(order.beneficiary, order.xgld_amount);

        emit Mint(
            order.order_id,
            order.benefactor,
            order.beneficiary,
            msg.sender,
            order.collateral_asset,
            order.collateral_amount,
            order.xgld_amount
        );
    }

    function setGlobalMaxMintPerBlock(uint128 _globalMaxMintPerBlock) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 old = globalConfig.globalMaxMintPerBlock;
        globalConfig.globalMaxMintPerBlock = _globalMaxMintPerBlock;
        emit GlobalMaxMintPerBlockChanged(old, _globalMaxMintPerBlock);
    }

    function disableMint() external override onlyRole(GATEKEEPER_ROLE) {
        globalConfig.globalMaxMintPerBlock = 0;
    }

    function setDelegatedSigner(address _delegateTo) external override {
        delegatedSigner[_delegateTo][msg.sender] = DelegatedSignerStatus.PENDING;
        emit DelegatedSignerInitiated(_delegateTo, msg.sender);
    }

    function confirmDelegatedSigner(address _delegatedBy) external override {
        if (delegatedSigner[msg.sender][_delegatedBy] != DelegatedSignerStatus.PENDING) {
            revert DelegationNotInitiated();
        }
        delegatedSigner[msg.sender][_delegatedBy] = DelegatedSignerStatus.ACCEPTED;
        emit DelegatedSignerAdded(msg.sender, _delegatedBy);
    }

    function removeDelegatedSigner(address _removedSigner) external override {
        delegatedSigner[_removedSigner][msg.sender] = DelegatedSignerStatus.REJECTED;
        emit DelegatedSignerRemoved(_removedSigner, msg.sender);
    }

    function transferToCustody(
        address wallet,
        address asset,
        uint128 amount
    ) external override nonReentrant onlyRole(COLLATERAL_MANAGER_ROLE) {
        if (wallet == address(0) || !_custodianAddresses.contains(wallet)) revert InvalidAddress();
        _transferExact(IERC20(asset), wallet, amount);
        emit CustodyTransfer(wallet, asset, amount);
    }

    function removeSupportedAsset(address asset) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!tokenConfig[asset].isActive) revert InvalidAssetAddress();
        tokenConfig[asset].isActive = false;
        emit AssetRemoved(asset);
    }

    function removeCustodianAddress(address custodian) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!_custodianAddresses.remove(custodian)) revert InvalidCustodianAddress();
        emit CustodianAddressRemoved(custodian);
    }

    function removeMinterRole(address minter) external onlyRole(GATEKEEPER_ROLE) {
        _revokeRole(MINTER_ROLE, minter);
    }

    function removeCollateralManagerRole(address collateralManager) external onlyRole(GATEKEEPER_ROLE) {
        _revokeRole(COLLATERAL_MANAGER_ROLE, collateralManager);
    }

    function pause() external {
        if (!hasRole(GATEKEEPER_ROLE, msg.sender) && !hasRole(PAUSER_ROLE, msg.sender)) {
            revert AccessControlUnauthorizedAccount(msg.sender, PAUSER_ROLE);
        }
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function rescueEth(address payable to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (to == address(0)) revert InvalidZeroAddress();
        if (amount == 0) revert ZeroAmount();
        (bool ok, ) = to.call{ value: amount }("");
        if (!ok) revert TransferFailed();
        emit EthRescued(to, amount);
    }

    function removeWhitelistedBenefactor(address benefactor) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (!_whitelistedBenefactors.remove(benefactor)) revert InvalidAddress();
        emit BenefactorRemoved(benefactor);
    }

    function setMaxMintPerBlock(uint128 maxMintPerBlock, address asset) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (asset == address(0) || maxMintPerBlock == 0 || tokenConfig[asset].maxMintPerBlock == 0) {
            revert InvalidAssetAddress();
        }
        uint128 old = tokenConfig[asset].maxMintPerBlock;
        tokenConfig[asset].maxMintPerBlock = maxMintPerBlock;
        emit MaxMintPerBlockChanged(old, maxMintPerBlock, asset);
    }

    function addSupportedAsset(address asset, TokenConfig calldata config) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (
            asset == address(0) ||
            asset == address(xgld) ||
            tokenConfig[asset].isActive ||
            !config.isActive ||
            config.maxMintPerBlock == 0
        ) {
            revert InvalidAssetAddress();
        }
        tokenConfig[asset] = TokenConfig({
            isActive: true,
            maxMintPerBlock: config.maxMintPerBlock
        });
        emit AssetAdded(asset);
    }

    function addCustodianAddress(address custodian) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        _addCustodianAddressInternal(custodian);
    }

    function _addCustodianAddressInternal(address custodian) internal {
        if (custodian == address(0) || custodian == address(xgld) || !_custodianAddresses.add(custodian)) {
            revert InvalidCustodianAddress();
        }
        emit CustodianAddressAdded(custodian);
    }

    function addWhitelistedBenefactor(address benefactor) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (benefactor == address(0) || !_whitelistedBenefactors.add(benefactor)) {
            revert InvalidBenefactorAddress();
        }
        emit BenefactorAdded(benefactor);
    }

    function setApprovedBeneficiary(address beneficiary, bool status) public override {
        if (beneficiary == address(0)) revert InvalidBeneficiaryAddress();
        if (status) {
            if (!_approvedBeneficiariesPerBenefactor[msg.sender].add(beneficiary)) {
                revert InvalidBeneficiaryAddress();
            }
            emit BeneficiaryAdded(msg.sender, beneficiary);
        } else {
            if (!_approvedBeneficiariesPerBenefactor[msg.sender].remove(beneficiary)) {
                revert InvalidBeneficiaryAddress();
            }
            emit BeneficiaryRemoved(msg.sender, beneficiary);
        }
    }

    function getDomainSeparator() public view returns (bytes32) {
        if (block.chainid == _chainId) {
            return _domainSeparator;
        }
        return _computeDomainSeparator();
    }

    function hashOrder(Order calldata order) public view override returns (bytes32) {
        return MessageHashUtils.toTypedDataHash(getDomainSeparator(), keccak256(encodeOrder(order)));
    }

    function isOrderSecure(Order calldata order) external view override returns (bool) {
        return _orderStatus[hashOrder(order)] != OrderStatus.NONE;
    }

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
            order.xgld_amount
        );
    }

    function isSupportedAsset(address asset) external view override returns (bool) {
        return tokenConfig[asset].isActive;
    }

    function previewMint(uint256 xautAmount) public view override returns (uint256) {
        return xautAmount * RATE_PRECISION / exchangeRateProvider.exchangeRate();
    }

    function verifyOrder(Order calldata order, Signature calldata signature) public view override returns (bytes32 orderHash) {
        orderHash = hashOrder(order);
        address signer;

        if (signature.signatureType == SignatureType.EIP712) {
            signer = ECDSA.recover(orderHash, signature.v, signature.r, signature.s);
        } else if (signature.signatureType == SignatureType.EIP1271) {
            if (
                IERC1271(order.benefactor).isValidSignature(
                    orderHash,
                    abi.encodePacked(signature.r, signature.s, signature.v)
                ) != EIP1271_MAGICVALUE
            ) {
                revert InvalidEIP1271Signature();
            }
            signer = order.benefactor;
        } else {
            revert InvalidSignature();
        }

        if (block.timestamp > order.expiry) revert SignatureExpired();

        if (
            signer != order.benefactor &&
            delegatedSigner[signer][order.benefactor] != DelegatedSignerStatus.ACCEPTED
        ) {
            revert InvalidSignature();
        }

        if (!_whitelistedBenefactors.contains(order.benefactor)) revert BenefactorNotWhitelisted();

        if (
            order.benefactor != order.beneficiary &&
            !_approvedBeneficiariesPerBenefactor[order.benefactor].contains(order.beneficiary)
        ) {
            revert BeneficiaryNotApproved();
        }
    }

    function verifyRoute(Route calldata route) public view override returns (bool) {
        uint256 totalRatio = 0;
        if (route.addresses.length == 0 || route.addresses.length != route.ratios.length) return false;
        for (uint256 j = 0; j < route.addresses.length; ) {
            if (!_custodianAddresses.contains(route.addresses[j])) return false;
            if (route.ratios[j] == 0) return false;
            totalRatio += route.ratios[j];
            unchecked { ++j; }
        }
        return totalRatio == ROUTE_REQUIRED_RATIO;
    }

    function verifyNonce(address sender, uint120 nonce) public view override returns (uint128, uint256, uint256) {
        uint256 nonceValue = uint256(nonce);
        if (nonceValue == 0) revert InvalidNonce();
        uint128 invalidatorSlot = uint128(nonceValue >> 8);
        uint256 invalidatorBit = uint256(1) << (nonceValue & 0xff);
        uint256 invalidator = _orderBitmaps[sender][invalidatorSlot];
        if (invalidator & invalidatorBit != 0) revert DuplicateOrder();
        return (invalidatorSlot, invalidator, invalidatorBit);
    }

    function _computeDomainSeparator() internal view returns (bytes32) {
        return keccak256(
            abi.encode(
                EIP712_DOMAIN,
                EIP_712_NAME,
                EIP712_REVISION,
                block.chainid,
                address(this)
            )
        );
    }

    function _deduplicateOrder(address sender, uint120 nonce) internal {
        (uint128 invalidatorSlot, uint256 invalidator, uint256 invalidatorBit) = verifyNonce(sender, nonce);
        _orderBitmaps[sender][invalidatorSlot] = invalidator | invalidatorBit;
    }

    function _setTokenConfig(address asset, TokenConfig memory config) internal {
        if (config.maxMintPerBlock == 0) revert InvalidAssetAddress();
        tokenConfig[asset] = TokenConfig({
            isActive: true,
            maxMintPerBlock: config.maxMintPerBlock
        });
    }

    function _transferCollateral(
        uint256 amount,
        address asset,
        address benefactor,
        address[] memory addresses,
        uint128[] memory ratios
    ) internal {
        IERC20 collateral = IERC20(asset);
        uint256 totalTransferred = 0;
        uint256 len = addresses.length;
        for (uint256 j = 0; j < len; ) {
            uint256 share;
            if (j == len - 1) {
                share = amount - totalTransferred;
            } else {
                share = (amount * ratios[j]) / ROUTE_REQUIRED_RATIO;
                totalTransferred += share;
            }
            _transferFromExact(collateral, benefactor, addresses[j], share);
            unchecked { ++j; }
        }
    }

    function _transferExact(IERC20 token, address to, uint256 amount) internal {
        uint256 balanceBefore = token.balanceOf(to);
        token.safeTransfer(to, amount);
        _verifyExactReceipt(token, to, balanceBefore, amount);
    }

    function _transferFromExact(IERC20 token, address from, address to, uint256 amount) internal {
        uint256 balanceBefore = token.balanceOf(to);
        token.safeTransferFrom(from, to, amount);
        _verifyExactReceipt(token, to, balanceBefore, amount);
    }

    function _verifyExactReceipt(
        IERC20 token,
        address account,
        uint256 balanceBefore,
        uint256 expectedAmount
    ) internal view {
        uint256 balanceAfter = token.balanceOf(account);
        if (balanceAfter < balanceBefore || balanceAfter - balanceBefore != expectedAmount) revert TransferFailed();
    }

}
