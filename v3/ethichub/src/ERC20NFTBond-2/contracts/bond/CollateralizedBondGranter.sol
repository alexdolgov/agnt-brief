// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';

import '../interfaces/IReserve.sol';

import './BondGranter.sol';

/**
 * @title CollateralizedBondGranter
 * @dev This contract contains functions related to the emission or withdrawal of
 * the bonds with collateral
 * @author Ethichub
 */
abstract contract CollateralizedBondGranter is BondGranter {
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
    IERC20MetadataUpgradeable public collateralToken;

    uint256 public collateralMultiplier;
    uint256 public totalCollateralizedAmount;

    mapping(uint256 => uint256) public collaterals;

    IReserve public collateralReserve;

    IERC20MetadataUpgradeable public principalToken;

    event CollateralMultiplierUpdated(uint256 collateralMultiplier);
    event CollateralAssigned(uint256 tokenId, uint256 collateralAmount);
    event CollateralReleased(uint256 tokenId, uint256 collateralAmount);
    event CollateralReserveUpdated(address collateralReserve);
    event CollateralTokensSwept(uint256 collateralTokenAmount);

    error MultiplierIndexLesserOrEqualZero();
    error NotEnoughCollateral();
    error ZeroAddress();

    function __CollateralizedBondGranter_init(
        address _collateralToken,
        address _collateralReserve,
        uint256[] calldata _interests,
        uint256[] calldata _maturities,
        address _principalToken
    )
    internal initializer {
        collateralMultiplier = 5;
        collateralToken = IERC20MetadataUpgradeable(_collateralToken);
        collateralReserve = IReserve(_collateralReserve);
        __BondGranter_init(_interests, _maturities);
        principalToken = IERC20MetadataUpgradeable(_principalToken);
    }

    /**
     * @dev Sets the number by which the amount of the collateral must be multiplied.
     * In this version will be 5
     * @param multiplierIndex uint256
     */
    function setCollateralMultiplier(uint256 multiplierIndex) external onlyRole(BOND_ADMIN) {
        if (multiplierIndex <= 0) revert MultiplierIndexLesserOrEqualZero();
        uint8 principalDecimals = principalToken.decimals();
        uint8 collateralDecimals = collateralToken.decimals();
        collateralMultiplier = multiplierIndex * 10 ** (collateralDecimals - principalDecimals);
        emit CollateralMultiplierUpdated(collateralMultiplier);
    }

    /**
     * @dev Sets collateral reserve
     * @param _collateralReserve address
     */
    function setCollateralReserve(address _collateralReserve) external onlyRole(BOND_ADMIN) {
        if (_collateralReserve == address(0)) revert ZeroAddress();
        collateralReserve = IReserve(_collateralReserve);
        emit CollateralReserveUpdated(address(collateralReserve));
    }

    /**
     * @notice Sweeps conllateral tokens
     * @dev This function can only be called by an account with the TREASURY_MANAGER role
     */
    function sweepCollateralTokens() external onlyRole(TREASURY_MANAGER) {
        uint256 collateralBalance = collateralToken.balanceOf(address(this));
        collateralToken.safeTransfer(address(collateralReserve), collateralBalance);
        emit CollateralTokensSwept(collateralBalance);
    }

    /**
     * @dev Issues a bond with calculated collateral
     * @param tokenId uint256
     * @param maturity uint256 seconds
     * @param principal uint256 in wei
     * @param imageCID string
     *
     * Requirement:
     *
     * - The contract must have enough collateral
     */
    function _issueBond(
        uint256 tokenId,
        uint256 maturity,
        uint256 principal,
        string memory imageCID
    ) internal virtual override {
        if (!_hasCollateral(principal)) revert NotEnoughCollateral();
        super._issueBond(tokenId, maturity, principal, imageCID);
        uint256 collateralAmount = principal * collateralMultiplier;
        totalCollateralizedAmount = totalCollateralizedAmount + collateralAmount;
        collaterals[tokenId] = collateralAmount;
        emit CollateralAssigned(tokenId, collateralAmount);
    }

    /**
     * @dev Updates totalCollateralizedAmount when a bond is redeemed
     * @param tokenId uint256
     */
    function _redeemBond(uint256 tokenId) internal virtual override returns (uint256) {
        uint256 bondValue = super._redeemBond(tokenId);
        uint256 collateralAmount = collaterals[tokenId];
        totalCollateralizedAmount = totalCollateralizedAmount - collateralAmount;
        emit CollateralReleased(tokenId, collateralAmount);
        return bondValue;
    }

    /**
     * @dev Return true if the balace of the contract minus totalCollateralizedAmount is greater or equal to
     * the amount of the bond's collateral
     * @param principal uint256
     */
    function _hasCollateral(uint256 principal) internal view returns (bool) {
        if (collateralReserve.balance() - totalCollateralizedAmount >= principal * collateralMultiplier) {
            return true;
        }
        return false;
    }

    /**
     * ///////// [v1.0, v1.1] /////////
     * 1 collateralToken
     * 1 collateralMultiplier
     * 1 totalCollateralizedAmount
     * 1 collaterals
     * 49 __gap
     * 53 (v1.0 mistakenly deployed with 53 store gaps)
     * --------------------------
     * ///////// [v1.2, v2.0, v2.1] /////////
     * 1 collateralToken
     * 1 collateralMultiplier
     * 1 totalCollateralizedAmount
     * 1 collaterals
     * 24 __gap
     * 28 (v1.1 deployed reduced to 28 store gaps)
     * ///////// [v2.2] /////////
     * 1 collateralToken
     * 1 collateralMultiplier
     * 1 totalCollateralizedAmount
     * 1 collaterals
     * 1 collateralReserve
     * 23 __gap
     * 28 (v1.2 deployed with same 28 store gaps)
     * ///////// [v2.3] /////////
     * 1 collateralToken
     * 1 collateralMultiplier
     * 1 totalCollateralizedAmount
     * 1 collaterals
     * 1 collateralReserve
     * 1 principalToken
     * 22 __gap
     * 28 (v1.2 deployed with same 28 store gaps)
     */
    uint256[22] private __gap; // deployed with 28 store gaps
}
