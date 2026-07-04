// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {EnumerableSet} from "lib/openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";
import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {SafeERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {IERC721Receiver} from "lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol";
import {IKUMABondToken} from "lib/mcag-contracts/src/interfaces/IKUMABondToken.sol";
import {IKUMAAddressProvider} from "./interfaces/IKUMAAddressProvider.sol";
import {IKBCToken} from "./interfaces/IKBCToken.sol";
import {IKIBToken} from "./interfaces/IKIBToken.sol";
import {IKUMASwap} from "./interfaces/IKUMASwap.sol";
import {IMCAGRateFeed} from "./interfaces/IMCAGRateFeed.sol";
import {PausableUpgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol";
import {PercentageMath} from "./libraries/PercentageMath.sol";
import {Roles} from "./libraries/Roles.sol";
import {WadRayMath} from "./libraries/WadRayMath.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title KUMA Swap
 * @author MIMO Labs
 * @notice The KUMASwap contract holds the KUMA Bond NFTs that back the Kuma Interest Bearking Token for a given risk category
 */
contract KUMASwap is IKUMASwap, PausableUpgradeable, UUPSUpgradeable {
    using EnumerableSet for EnumerableSet.UintSet;
    using PercentageMath for uint256;
    using Roles for bytes32;
    using SafeERC20 for IERC20;
    using WadRayMath for uint256;

    uint256 public constant MIN_ALLOWED_COUPON = WadRayMath.RAY;
    uint256 public constant DEPRECATION_MODE_TIMELOCK = 2 days;
    uint256 public constant MAX_COUPONS = 500;

    bytes32 private _riskCategory;
    IKUMAAddressProvider private _KUMAAddressProvider;
    bool private _isDeprecated;
    uint72 private _deprecationInitializedAt;
    uint16 private _variableFee;
    IERC20 private _deprecationStableCoin;
    uint256 private _fixedFee;
    uint256 private _minCoupon;

    // @notice Set of unique coupons in reserve
    EnumerableSet.UintSet private _coupons;
    // @notice Set of all token ids in reserve
    EnumerableSet.UintSet private _bondReserve;
    // @notice Set of all expired token ids in the reserve
    EnumerableSet.UintSet private _expiredBonds;

    // @notice KUMABondToken id to KBCToken id
    mapping(uint256 => uint256) private _cloneBonds;
    // @notice Quantity of each coupon in reserve
    mapping(uint256 => uint256) private _couponInventory;
    // @notive Bond id to Bond sale price discounted by KIBToken cumulative yield
    mapping(uint256 => uint256) private _bondBaseValue;

    /**
     * @dev Modifier to make a function callable only when the caller has a specific role
     * @param role The role required to call the function
     */
    modifier onlyRole(bytes32 role) {
        if (!IAccessControl(_KUMAAddressProvider.getAccessController()).hasRole(role, msg.sender)) {
            revert Errors.ACCESS_CONTROL_ACCOUNT_IS_MISSING_ROLE(msg.sender, role);
        }
        _;
    }

    /**
     * @dev Modifier to make a function callable only when this KUMASwap contract isn't deprecated
     */
    modifier whenNotDeprecated() {
        if (_isDeprecated) {
            revert Errors.DEPRECATION_MODE_ENABLED();
        }
        _;
    }

    /**
     * @dev Modifier to make a function callable only when this KUMASwap contract is deprecated
     */
    modifier whenDeprecated() {
        if (!_isDeprecated) {
            revert Errors.DEPRECATION_MODE_NOT_ENABLED();
        }
        _;
    }

    constructor() initializer {}

    /**
     * @param KUMAAddressProvider Address provider for the KUMA protocol
     * @param deprecationStableCoin Address of the stablecoin to use if this KUMASwap is deprecated
     * @param currency Currency of the risk category of this KUMASwap
     * @param issuer Issuer of the risk category of this KUMASwap
     * @param term Term of the risk category of this KUMASwap, in seconds
     */
    function initialize(
        IKUMAAddressProvider KUMAAddressProvider,
        IERC20 deprecationStableCoin,
        bytes4 currency,
        bytes32 issuer,
        uint32 term
    ) external initializer {
        if (address(KUMAAddressProvider) == address(0) || address(deprecationStableCoin) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        if (currency == bytes4(0) || issuer == bytes32(0) || term == 0) {
            revert Errors.WRONG_RISK_CATEGORY();
        }
        _KUMAAddressProvider = KUMAAddressProvider;
        _riskCategory = keccak256(abi.encode(currency, issuer, term));
        _minCoupon = MIN_ALLOWED_COUPON;
        _deprecationStableCoin = deprecationStableCoin;
        __Pausable_init();

        emit DeprecationStableCoinSet(address(0), address(deprecationStableCoin));
        emit KUMAAddressProviderSet(address(KUMAAddressProvider));
        emit RiskCategorySet(_riskCategory);
    }

    /**
     * @notice Sells a bond to this contract for KIBToken.
     * @dev The bond must not be matured or have a coupon lower than that of the current central bank rate for this risk category
     * @dev This contract can hold a max of MAX_COUPONS unique coupons of bonds
     * @param tokenId Sold bond tokenId.
     */
    function sellBond(uint256 tokenId) external whenNotPaused whenNotDeprecated {
        IKUMAAddressProvider KUMAAddressProvider = _KUMAAddressProvider;
        IKUMABondToken KUMABondToken = IKUMABondToken(KUMAAddressProvider.getKUMABondToken());
        IKUMABondToken.Bond memory bond = KUMABondToken.getBond(tokenId);
        if (!_coupons.contains(bond.coupon) && _coupons.length() == MAX_COUPONS) {
            revert Errors.MAX_COUPONS_REACHED();
        }
        if (bond.riskCategory != _riskCategory) {
            revert Errors.WRONG_RISK_CATEGORY();
        }

        if (bond.maturity <= block.timestamp) {
            revert Errors.CANNOT_SELL_MATURED_BOND();
        }

        IKIBToken KIBToken = IKIBToken(KUMAAddressProvider.getKIBToken(_riskCategory));
        uint256 referenceRate = IMCAGRateFeed(KUMAAddressProvider.getRateFeed()).getRate(_riskCategory);

        if (bond.coupon < referenceRate) {
            revert Errors.COUPON_TOO_LOW();
        }

        if (_coupons.length() == 0) {
            _minCoupon = bond.coupon;
            _coupons.add(bond.coupon);
        } else {
            if (bond.coupon < _minCoupon) {
                _minCoupon = bond.coupon;
            }
            if (!_coupons.contains(bond.coupon)) {
                _coupons.add(bond.coupon);
            }
        }

        _couponInventory[bond.coupon]++;
        _bondReserve.add(tokenId);

        uint256 bondValue = _getBondValue(bond.issuance, bond.term, bond.coupon, bond.principal);

        _bondBaseValue[tokenId] = bondValue.wadToRay().rayDiv(KIBToken.getUpdatedCumulativeYield());

        uint256 fee = _calculateFees(bondValue);

        uint256 mintAmount = bondValue;

        if (fee > 0) {
            mintAmount = bondValue - fee;
            KIBToken.mint(KUMAAddressProvider.getKUMAFeeCollector(_riskCategory), fee);
        }

        KIBToken.mint(msg.sender, mintAmount);
        KUMABondToken.safeTransferFrom(msg.sender, address(this), tokenId);

        emit FeeCharged(fee);
        emit BondSold(tokenId, mintAmount, msg.sender);
    }

    /**
     * @notice Buys a bond for KIBToken.
     * @dev The bond must be held by this contract and not have a child clone bond issued for it
     * @dev All expired bonds must be bought before un-expired bonds can be bought
     * @dev minCoupons may be updated if the coupon of the bought bond is the lowest coupon of all bonds held by this contract
     * @param tokenId Bought bond tokenId.
     */
    function buyBond(uint256 tokenId) external whenNotPaused whenNotDeprecated {
        IKUMAAddressProvider KUMAAddressProvider = _KUMAAddressProvider;
        IKUMABondToken KUMABondToken = IKUMABondToken(KUMAAddressProvider.getKUMABondToken());
        IKUMABondToken.Bond memory bond = KUMABondToken.getBond(tokenId);

        if (!_bondReserve.contains(tokenId)) {
            revert Errors.INVALID_TOKEN_ID();
        }

        bool isBondExpired = _expiredBonds.contains(tokenId);

        if (_expiredBonds.length() > 0 && !isBondExpired) {
            revert Errors.EXPIRED_BONDS_MUST_BE_BOUGHT_FIRST();
        }

        if (_couponInventory[bond.coupon] == 1) {
            _coupons.remove(bond.coupon);
        }

        _couponInventory[bond.coupon]--;
        _bondReserve.remove(tokenId);

        if (isBondExpired) {
            _expiredBonds.remove(tokenId);
        }

        IKIBToken KIBToken = IKIBToken(KUMAAddressProvider.getKIBToken(_riskCategory));

        uint256 bondValue = _getBondValue(bond.issuance, bond.term, bond.coupon, bond.principal);
        uint256 realizedBondValue = _bondBaseValue[tokenId].rayMul(KIBToken.getUpdatedCumulativeYield()).rayToWad();

        if (bondValue > realizedBondValue) {
            uint256 previousEpochTimestamp = KIBToken.getPreviousEpochTimestamp();
            uint256 yield = KIBToken.getYield();
            _updateMinCoupon();
            KIBToken.burn(msg.sender, realizedBondValue);
            _cloneBonds[tokenId] = IKBCToken(KUMAAddressProvider.getKBCToken()).issueBond(
                msg.sender,
                IKBCToken.CloneBond({
                    parentId: tokenId,
                    issuance: previousEpochTimestamp,
                    coupon: yield,
                    principal: realizedBondValue
                })
            );
        } else {
            _updateMinCoupon();
            KIBToken.burn(msg.sender, realizedBondValue);
            KUMABondToken.safeTransferFrom(address(this), msg.sender, tokenId);
        }

        delete _bondBaseValue[tokenId];

        emit BondBought(tokenId, realizedBondValue, msg.sender);
    }

    /**
     * @notice Buys a bond for _deprecationStableCoin.
     * @dev Requires an approval on amount from buyer. This will also result in some stale state for the contract on _coupons
     * and _minCoupon but this is acceptable as deprecation mode is irreversible. This function also ignores any existing clone bond
     * which is the intended bahaviour as bonds will be valued per their market rate offchain.
     * @dev This can only be called by the KUMA_MANAGER_ROLE
     * @param tokenId Bought bond tokenId
     * @param buyer Buyer of the bond
     * @param amount Stable coin price paid by the buyer.
     */
    function buyBondForStableCoin(uint256 tokenId, address buyer, uint256 amount)
        external
        onlyRole(Roles.KUMA_MANAGER_ROLE)
        whenDeprecated
    {
        if (!_bondReserve.contains(tokenId)) {
            revert Errors.INVALID_TOKEN_ID();
        }
        if (buyer == address(0)) {
            revert Errors.BUYER_CANNOT_BE_ADDRESS_ZERO();
        }
        if (amount == 0) {
            revert Errors.AMOUNT_CANNOT_BE_ZERO();
        }

        _bondReserve.remove(tokenId);

        _deprecationStableCoin.safeTransferFrom(buyer, address(this), amount);
        IKUMABondToken(_KUMAAddressProvider.getKUMABondToken()).safeTransferFrom(address(this), buyer, tokenId);

        emit BondBought(tokenId, amount, buyer);
    }

    /**
     * @notice Claims a KUMA Bonds NFT from this contract for a CloneBond.
     * @dev Can only by called by a KUMA_SWAP_CLAIM_ROLE address.
     * @param tokenId Claimed bond tokenId.
     */
    function claimBond(uint256 tokenId) external onlyRole(Roles.KUMA_SWAP_CLAIM_ROLE.toGranularRole(_riskCategory)) {
        IKUMAAddressProvider KUMAAddressProvider = _KUMAAddressProvider;

        if (_cloneBonds[tokenId] == 0) {
            revert Errors.BOND_NOT_AVAILABLE_FOR_CLAIM();
        }

        uint256 gBondId = _cloneBonds[tokenId];
        delete _cloneBonds[tokenId];

        IKBCToken(KUMAAddressProvider.getKBCToken()).redeem(gBondId);
        IKUMABondToken(KUMAAddressProvider.getKUMABondToken()).safeTransferFrom(address(this), msg.sender, tokenId);

        emit BondClaimed(tokenId, gBondId);
    }

    /**
     * @notice Redeems KIBToken for deprecation mode stable coin. Redeem stable coin amount is calculated as follows:
     *                          KIBTokenAmount
     *      redeemAmount = ------------------------ * KUMASwapStableCoinBalance
     *                        KIBTokenTotalSupply
     * @dev Can only be called if deprecation mode is enabled.
     * @param amount Amount of KIBToken to redeem.
     */
    function redeemKIBT(uint256 amount) external whenDeprecated {
        if (amount == 0) {
            revert Errors.AMOUNT_CANNOT_BE_ZERO();
        }
        if (_bondReserve.length() != 0) {
            revert Errors.BOND_RESERVE_NOT_EMPTY();
        }
        IKIBToken KIBToken = IKIBToken(_KUMAAddressProvider.getKIBToken(_riskCategory));
        IERC20 deprecationStableCoin = _deprecationStableCoin;

        uint256 redeemAmount =
            amount.wadMul(_deprecationStableCoin.balanceOf(address(this))).wadDiv(KIBToken.totalSupply());
        KIBToken.burn(msg.sender, amount);
        deprecationStableCoin.safeTransfer(msg.sender, redeemAmount);

        emit KIBTRedeemed(msg.sender, redeemAmount);
    }

    /**
     * @notice Expires a bond if it has reached maturity
     * @dev This will cause the KIBT yield for this risk category to stop accruing until the expired bond is bought
     * @param tokenId Bond to be expired
     */
    function expireBond(uint256 tokenId) external whenNotDeprecated {
        if (!_bondReserve.contains(tokenId)) {
            revert Errors.INVALID_TOKEN_ID();
        }

        if (_expiredBonds.contains(tokenId)) {
            revert Errors.BOND_ALREADY_EXPIRED();
        }

        IKUMAAddressProvider KUMAAddressProvider = _KUMAAddressProvider;

        if (IKUMABondToken(KUMAAddressProvider.getKUMABondToken()).getBond(tokenId).maturity > block.timestamp) {
            revert Errors.BOND_NOT_MATURED();
        }

        _expiredBonds.add(tokenId);

        IKIBToken(KUMAAddressProvider.getKIBToken(_riskCategory)).refreshYield();

        emit BondExpired(tokenId);
    }

    /**
     * @dev See {Pausable-_pause}
     * @dev can only be called by the KUMA_SWAP_PAUSE_ROLE
     */
    function pause() external onlyRole(Roles.KUMA_SWAP_PAUSE_ROLE.toGranularRole(_riskCategory)) {
        _pause();
    }

    /**
     * @dev See {Pausable-_unpause}
     * @dev Can only be called by the KUMA_SWAP_UNPAUSE_ROLE
     */
    function unpause() external onlyRole(Roles.KUMA_SWAP_UNPAUSE_ROLE.toGranularRole(_riskCategory)) {
        _unpause();
    }

    /**
     * @notice Set fees that will be charges upon bond sale per the following formula :
     * totalFee = bondValue * variableFee + fixedFee.
     * @param variableFee in basis points.
     * @param fixedFee in KIBToken decimals.
     */
    function setFees(uint16 variableFee, uint256 fixedFee) external onlyRole(Roles.KUMA_MANAGER_ROLE) {
        _variableFee = variableFee;
        _fixedFee = fixedFee;
        emit FeeSet(variableFee, fixedFee);
    }

    /**
     * @notice Sets a new stable coin to be accepted during deprecation mode
     * @dev Can only be called by the KUMA_MANAGER_ROLE
     * @dev Can only be called if deprecation mode is not enabled
     * @param newDeprecationStableCoin New stable coin
     */
    function setDeprecationStableCoin(IERC20 newDeprecationStableCoin)
        external
        onlyRole(Roles.KUMA_MANAGER_ROLE)
        whenNotDeprecated
    {
        if (address(newDeprecationStableCoin) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        emit DeprecationStableCoinSet(address(_deprecationStableCoin), address(newDeprecationStableCoin));
        _deprecationStableCoin = newDeprecationStableCoin;
    }

    /**
     * @notice Initializes deprecation mode
     * @dev Can only be called by the KUMA_MANAGER_ROLE
     * @dev Can only be called if deprecation mode is not enabled
     */
    function initializeDeprecationMode() external onlyRole(Roles.KUMA_MANAGER_ROLE) whenNotDeprecated {
        if (_deprecationInitializedAt != 0) {
            revert Errors.DEPRECATION_MODE_ALREADY_INITIALIZED();
        }

        _deprecationInitializedAt = uint72(block.timestamp);

        emit DeprecationModeInitialized();
    }

    /**
     * @notice Cancel the initialization of the deprecation mode
     * @dev Can only be called by the KUMA_MANAGER_ROLE
     * @dev Can only be called if deprecation mode is not enabled
     */
    function uninitializeDeprecationMode() external onlyRole(Roles.KUMA_MANAGER_ROLE) whenNotDeprecated {
        if (_deprecationInitializedAt == 0) {
            revert Errors.DEPRECATION_MODE_NOT_INITIALIZED();
        }

        _deprecationInitializedAt = 0;

        emit DeprecationModeUninitialized();
    }

    /**
     * @notice Enables deprecation mode
     * @dev Deprecation mode must have been initialized at least 2 days before through the initializeDeprecationMode function
     * @dev Can only be called by the KUMA_MANAGER_ROLE
     * @dev Can only be called if deprecation mode is not enabled
     */
    function enableDeprecationMode() external onlyRole(Roles.KUMA_MANAGER_ROLE) whenNotDeprecated {
        if (_deprecationInitializedAt == 0) {
            revert Errors.DEPRECATION_MODE_NOT_INITIALIZED();
        }

        uint256 elapsedTime = block.timestamp - _deprecationInitializedAt;

        if (elapsedTime < DEPRECATION_MODE_TIMELOCK) {
            revert Errors.ELAPSED_TIME_SINCE_DEPRECATION_MODE_INITIALIZATION_TOO_SHORT(
                elapsedTime, DEPRECATION_MODE_TIMELOCK
            );
        }

        _isDeprecated = true;

        IKIBToken(_KUMAAddressProvider.getKIBToken(_riskCategory)).refreshYield();

        emit DeprecationModeEnabled();
    }

    /**
     * @return _riskCategory risk category of the bonds accepted by the contract
     */
    function getRiskCategory() external view returns (bytes32) {
        return _riskCategory;
    }

    /**
     * @return _KUMAAddressProvider.
     */
    function getKUMAAddressProvider() external view returns (IKUMAAddressProvider) {
        return _KUMAAddressProvider;
    }

    /**
     * @return True if deprecation mode has been initialized or not
     */
    function isDeprecationInitialized() external view returns (bool) {
        return _deprecationInitializedAt != 0;
    }

    /**
     * @return Timestamp of deprecation mode initialization
     */
    function getDeprecationInitializedAt() external view returns (uint72) {
        return _deprecationInitializedAt;
    }

    /**
     * @return True if deprecation mode has been enabled or not
     */
    function isDeprecated() external view returns (bool) {
        return _isDeprecated;
    }

    /**
     * @return _variableFee Variable fee in basis points
     */
    function getVariableFee() external view returns (uint16) {
        return _variableFee;
    }

    /**
     * @return _deprecationStableCoin Accepted stable coin during deprecation mode
     */
    function getDeprecationStableCoin() external view returns (IERC20) {
        return _deprecationStableCoin;
    }

    /**
     * @return _fixedFee Fixed fee in KIBToken decimals
     */
    function getFixedFee() external view returns (uint256) {
        return _fixedFee;
    }

    /**
     * @return Lowest coupon of bonds currently held in reserve by this KUMASwap contract
     */
    function getMinCoupon() external view returns (uint256) {
        return _minCoupon;
    }

    /**
     * @return Array of all coupons currently held in reserve by this KUMASwap contract
     */
    function getCoupons() external view returns (uint256[] memory) {
        return _coupons.values();
    }

    /**
     * @return Array of all KUMA Bond NFT tokenIds in reserve
     */
    function getBondReserve() external view returns (uint256[] memory) {
        return _bondReserve.values();
    }

    /**
     * @return Array of tokenIds of all KUMA Bond NFTs that have been expired by a keeper using the expireBond function
     */
    function getExpiredBonds() external view returns (uint256[] memory) {
        return _expiredBonds.values();
    }

    /**
     * @param tokenId The KUMA Bond NFT's tokenId
     * @return The Clone Bond Token's tokenId that corresponds to the child of the given parent bond id
     */
    function getCloneBond(uint256 tokenId) external view returns (uint256) {
        return _cloneBonds[tokenId];
    }

    /**
     * @return Amount of bonds with the coupon value that are currently held in reserve by this contract
     */
    function getCouponInventory(uint256 coupon) external view returns (uint256) {
        return _couponInventory[coupon];
    }

    /**
     * @return True if bond is currently held in this contract's reserve, false if not
     */
    function isInReserve(uint256 tokenId) external view returns (bool) {
        return _bondReserve.contains(tokenId);
    }

    /**
     * @return True if this contract currently has an expired bond in reserve, false if not
     */
    function isExpired() external view returns (bool) {
        return _expiredBonds.length() > 0;
    }

    /**
     * @param tokenId The KUMA Bond NFT's tokenId
     * @return Bond base value of a KUMA Bond NFT currently held in reserve
     */
    function getBondBaseValue(uint256 tokenId) external view returns (uint256) {
        return _bondBaseValue[tokenId];
    }

    /**
     * @notice Visibility function that calculates the face value of a bond at the current timestamp
     * @param tokenId Bond tokenId.
     * @return Bond value e.g. principal value + accrued interests.
     */
    function getBondValue(uint256 tokenId) external view returns (uint256) {
        if (!_bondReserve.contains(tokenId)) {
            revert Errors.INVALID_TOKEN_ID();
        }

        IKUMABondToken.Bond memory bond = IKUMABondToken(_KUMAAddressProvider.getKUMABondToken()).getBond(tokenId);

        return _getBondValue(bond.issuance, bond.maturity - bond.issuance, bond.coupon, bond.principal);
    }

    /**
     * @dev See {IERC721Receiver-onERC721Received}.
     */
    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    function _authorizeUpgrade(address newImplementation) internal view override onlyRole(Roles.KUMA_MANAGER_ROLE) {}

    /**
     * @notice Get the valuation of a bond with a given coupon, term, issuance, and principal at the previous epoch timestamp
     * @param issuance Timestamp of bond issuance
     * @param term Bond term in seconds
     * @param coupon Bond coupon in ray
     * @param principal Bond principal in WAD
     * @return bondValue Bond principal value + accrued interests.
     */
    function _getBondValue(uint256 issuance, uint256 term, uint256 coupon, uint256 principal)
        private
        view
        returns (uint256)
    {
        uint256 previousEpochTimestamp =
            IKIBToken(_KUMAAddressProvider.getKIBToken(_riskCategory)).getPreviousEpochTimestamp();

        if (previousEpochTimestamp <= issuance) {
            return principal;
        }

        uint256 elapsedTime = previousEpochTimestamp - issuance;

        if (elapsedTime > term) {
            elapsedTime = term;
        }

        return coupon.rayPow(elapsedTime).rayMul(principal);
    }

    /**
     * @notice _update the minimum coupon of bonds in reserve after a bond has been bought from this contract
     * @return minCoupon Lowest coupon of bonds in reserve, in RAY
     */
    function _updateMinCoupon() private returns (uint256) {
        uint256 currentMinCoupon = _minCoupon;

        if (_coupons.length() == 0) {
            _minCoupon = MIN_ALLOWED_COUPON;
            emit MinCouponUpdated(currentMinCoupon, MIN_ALLOWED_COUPON);
            return MIN_ALLOWED_COUPON;
        }

        if (_couponInventory[currentMinCoupon] != 0) {
            return currentMinCoupon;
        }

        uint256 minCoupon = _coupons.at(0);

        uint256 couponsLength = _coupons.length();

        for (uint256 i = 1; i < couponsLength;) {
            uint256 coupon = _coupons.at(i);

            if (coupon < minCoupon) {
                minCoupon = coupon;
            }

            unchecked {
                ++i;
            }
        }

        _minCoupon = minCoupon;

        emit MinCouponUpdated(currentMinCoupon, minCoupon);

        return minCoupon;
    }

    /**
     * @param amount Amount of KIBT received from the sale; equal to the bond valation at the time of the sale
     * @return fee On a sellBond call for a specific amount of KIBT received from the sale, in WAD
     */
    function _calculateFees(uint256 amount) private view returns (uint256 fee) {
        if (_variableFee > 0) {
            fee = amount.percentMul(_variableFee);
        }
        if (_fixedFee > 0) {
            fee += _fixedFee;
        }
    }
}
