// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';

import '../interfaces/IMultiTokenReserve.sol';

import './NFTBond.sol';

/**
 * @title ERC20NFTBond
 * @dev Contains functions related to buying and liquidating bonds,
 * and borrowing and returning funds when the principal is ERC20 token
 * @author Ethichub
 * @custom:dedication For Alexis — sorry for not seeing the need for a voluntary exit sooner.
 */
contract ERC20NFTBond is NFTBond {
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
    IERC20MetadataUpgradeable private _principalToken_deprecated; // Rename in v2.2.2 from principalToken to _principalToken_deprecated (unused variable)
    IMultiTokenReserve public liquidityReserve;
    bool public investorGated; // if true, buyBond/redeemBond/requestExit/exitBond require INVESTOR role

    struct NFTParams {
        string name;
        string symbol;
    }

    event LiquidityReserveUpdated(address liquidityReserve);
    event PrincipalTokensSwept(uint256 principalTokenAmount);
    event PrincipalTokensSet(address principalToken);

    function initialize(
        address _principalToken,
        address _liquidityReserve,
        NFTParams calldata _nftParams,
        address _accessManager,
        address _collateralToken,
        address _collateralReserve,
        uint256 _cooldownSeconds,
        uint256[] calldata _interests,
        uint256[] calldata _maturities
    )
    external initializer {
        liquidityReserve = IMultiTokenReserve(_liquidityReserve);
        __NFTBond_init(
            _nftParams.name,
            _nftParams.symbol,
            _accessManager,
            _collateralToken,
            _collateralReserve,
            _cooldownSeconds,
            _interests,
            _maturities,
            _principalToken
        );
    }

    /**
     * @dev External function to buy a bond and returns the tokenId of the bond
     * when the contract is active
     * @param beneficiary address
     * @param maturity uint256
     * @param principal uint256
     */
    function buyBond(
        address beneficiary,
        uint256 maturity,
        uint256 principal,
        string memory imageCID
    )
    external whenNotPaused {
        if (investorGated && !_hasRole(INVESTOR, msg.sender)) revert MissingRole();
        super._buyBond(beneficiary, maturity, principal, imageCID);
    }

    function setInvestorGated(bool _investorGated) external onlyRole(DEFAULT_ADMIN_ROLE) {
        investorGated = _investorGated;
    }

    /**
     * @dev Sets liquidity reserve
     * @param _liquidityReserve address
     */
    function setLiquidityReserve(address _liquidityReserve) external onlyRole(BOND_ADMIN) {
        if (_liquidityReserve == address(0)) revert ZeroAddress();
        liquidityReserve = IMultiTokenReserve(_liquidityReserve);
        emit LiquidityReserveUpdated(address(liquidityReserve));
    }

    /**
     * @notice Sweeps principal tokens
     * @dev This function can only be called by an account with the TREASURY_MANAGER role
     */
    function sweepPrincipalTokens() external onlyRole(TREASURY_MANAGER) {
        uint256 principalBalance = principalToken.balanceOf(address(this));
        principalToken.safeTransfer(address(liquidityReserve), principalBalance);
        emit PrincipalTokensSwept(principalBalance);
    }

    /**
     * @dev External function to redeem a bond and returns the amount of the bond
     */
    function redeemBond(uint256 tokenId) external {
        if (investorGated && !_hasRole(INVESTOR, msg.sender)) revert MissingRole();
        super._redeemBond(tokenId);
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function setPrincipalToken(address _newPrincipalToken) external onlyRole(DEFAULT_ADMIN_ROLE) {
        principalToken = IERC20MetadataUpgradeable(_newPrincipalToken);
        emit PrincipalTokensSet(_newPrincipalToken);
    }

    /**
     * @dev Transfers from the buyer to this contract the principal token amount
     */
    function requestExit(uint256 tokenId) public override {
        if (investorGated && !_hasRole(INVESTOR, msg.sender)) revert MissingRole();
        super.requestExit(tokenId);
    }

    function exitBond(uint256 tokenId) public override {
        if (investorGated && !_hasRole(INVESTOR, msg.sender)) revert MissingRole();
        super.exitBond(tokenId);
    }

    function _beforeBondPurchased(
        address beneficiary,
        uint256 maturity,
        uint256 principal
    )
    internal override {
        super._beforeBondPurchased(beneficiary, maturity, principal);
        principalToken.safeTransferFrom(msg.sender, address(liquidityReserve), principal);
    }

    /**
     * @dev Transfers to the owner of the bond the amount of the bond when the contract has
     * liquidity, if not will send the correspondent amount of collateral
     */
    function _afterBondRedeemed(
        uint256 tokenId,
        uint256 amount,
        address beneficiary
    )
    internal override {
        super._afterBondRedeemed(tokenId, amount, beneficiary);
        if (liquidityReserve.balance(address(principalToken)) < amount) {
            uint256 amountOfCollateral = (amount - liquidityReserve.balance(address(principalToken))) * collateralMultiplier;
            liquidityReserve.transfer(address(principalToken), beneficiary, liquidityReserve.balance(address(principalToken)));
            if (collateralReserve.balance() < amountOfCollateral) {
                collateralReserve.transfer(beneficiary, collateralReserve.balance());
            } else {
                collateralReserve.transfer(beneficiary, amountOfCollateral);
            }
        } else {
            liquidityReserve.transfer(address(principalToken), beneficiary, amount);
        }
    }

    /**
     * @dev Pays only the principal to the bond owner on early exit.
     * No interest is paid; any shortfall falls back to collateral.
     */
    function _afterBondExited(
        uint256 tokenId,
        uint256 principal,
        address beneficiary
    )
    internal override {
        super._afterBondExited(tokenId, principal, beneficiary);
        if (liquidityReserve.balance(address(principalToken)) < principal) {
            uint256 amountOfCollateral = (principal - liquidityReserve.balance(address(principalToken))) * collateralMultiplier;
            liquidityReserve.transfer(address(principalToken), beneficiary, liquidityReserve.balance(address(principalToken)));
            if (collateralReserve.balance() < amountOfCollateral) {
                collateralReserve.transfer(beneficiary, collateralReserve.balance());
            } else {
                collateralReserve.transfer(beneficiary, amountOfCollateral);
            }
        } else {
            liquidityReserve.transfer(address(principalToken), beneficiary, principal);
        }
    }

    function _pause() internal override {
        super._pause();
    }

    function _unpause() internal override {
        super._unpause();
    }

    /**
     * ////// [v1.0, v1.1, v1.2, v2.0, v2.1] //////
     * 1 principalToken
     * 1 collateralToken
     * 49 __gap
     * 51 (mistakenly deployed with 51 store gaps)
     * ////// [v2.2] //////
     * 1 principalToken
     * 1 liquidityReserve
     * 49 __gap
     * 51 (mistakenly deployed with 51 store gaps)
     * ////// [v2.2.1, v2.2.2, v2.3.1, v2.3.2, v2.4.1, v2.4.2] //////
     * 1 _principalToken_deprecated
     * 1 liquidityReserve
     * 49 __gap
     * 51 (mistakenly deployed with 51 store gaps)
     */
    uint256[49] private __gap; // deployed with 51 store gaps
}
