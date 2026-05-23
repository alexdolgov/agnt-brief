// SPDX-License-Identifier: GPLv3
pragma solidity 0.8.13;

import "./NFTBond.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

/**
 * @title MembershipBond
 * @dev Contains functions related to do user a membership of EthicHub
 * @author Ethichub
 */
contract MembershipBond is NFTBond {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    IERC20Upgradeable private principalToken;

    struct NFTParams {
        string name;
        string symbol;
    }

    function initialize(
        address _principalToken,
        NFTParams calldata _nftParams,
        address _accessManager,
        uint256[] calldata _interests,
        uint256[] calldata _maturities
    )
    external initializer {
        principalToken = IERC20Upgradeable(_principalToken);
        __NFTBond_init(
            _nftParams.name,
            _nftParams.symbol,
            _accessManager,
            _interests,
            _maturities
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
    external whenNotPaused onlyRole(MEMBERSHIP_MANAGER) returns (uint256) {
        return super._buyBond(beneficiary, maturity, principal, imageCID);
    }

    /**
     * @dev External function to redeem a bond and returns the amount of the bond
     */
    function redeemBond(uint256 tokenId) external returns (uint256) {
        return super._redeemBond(tokenId);
    }

    function principalTokenAddress() external view returns (address) {
        return address(principalToken);
    }

    function pause() external onlyRole(PAUSER) {
        _pause();
    }

    function unpause() external onlyRole(PAUSER) {
        _unpause();
    }

    /**
     * @dev Transfers from the buyer to this contract the principal token amount
     *
     * @param beneficiary address
     * @param maturity uint256
     * @param principal uint256
     */
    function _beforeBondPurchased(
        address beneficiary,
        uint256 maturity,
        uint256 principal
    )
    internal override {
        super._beforeBondPurchased(beneficiary, maturity, principal);
        principalToken.safeTransferFrom(msg.sender, address(this), principal);
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
        if (principalToken.balanceOf(address(this)) < amount) {
            principalToken.safeTransfer(beneficiary, principalToken.balanceOf(address(this)));
        } else {
            principalToken.safeTransfer(beneficiary, amount);
        }
    }

    /**
     * @dev Transfers to the recipient the amount of liquidity available in this contract
     */
    function _beforeRequestLiquidity(address destination, uint256 amount) internal override {
        principalToken.safeTransfer(destination, amount);
        super._beforeRequestLiquidity(destination, amount);
    }

    /**
     * @dev Transfers from the borrower the amount of liquidity borrowed
     */
    function _afterReturnLiquidity(uint256 amount) internal override {
        super._afterReturnLiquidity(amount);
        principalToken.safeTransferFrom(msg.sender, address(this), amount);
    }

    function _pause() internal override {
        super._pause();
    }

    function _unpause() internal override {
        super._unpause();
    }

    uint256[49] private __gap;
}