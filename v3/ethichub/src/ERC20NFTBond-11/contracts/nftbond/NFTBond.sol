// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import '@openzeppelin/contracts/utils/Base64.sol';
import '@openzeppelin/contracts/utils/Strings.sol';
import '@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol';

import '../bond/CollateralizedBondGranter.sol';
import '../bond/LockedBondGranter.sol';
import '../borrowing/LiquidityRequester.sol';
import '../libraries/DecimalStrings.sol';
import '../token/NFT.sol';

/**
 * @title NFTBond
 * @dev Contains functions related to buying and liquidating bonds, and borrowing and returning funds
 * @author Ethichub
 */
abstract contract NFTBond is NFT, CollateralizedBondGranter, LockedBondGranter, LiquidityRequester, PausableUpgradeable {
    using Strings for uint256;
    using DecimalStrings for uint256;

    event BondIssued(address indexed buyer, address indexed beneficiary, uint256 tokenId, uint256 mintingDate, uint256 maturity, uint256 principal, uint256 interest, string imageCID, string bondTokenURI);
    event BondRedeemed(address indexed redeemer, address indexed beneficiary, uint256 tokenId, uint256 redeemDate, uint256 withdrawn);

    error CooldownCanNotBeActivatedNotOwner();
    error BeneficiaryIsNotInvestor();

    function __NFTBond_init(
        string calldata _name,
        string calldata _symbol,
        address _accessManager,
        address _collateralToken,
        address _collateralReserve,
        uint256 _cooldownSeconds,
        uint256[] calldata _interests,
        uint256[] calldata _maturities,
        address _principalToken
    )
    internal initializer {
        __NFT_init(_name, _symbol, _accessManager);
        __CollateralizedBondGranter_init(_collateralToken, _collateralReserve, _interests, _maturities, _principalToken);
        __LockedBondGranter_init(_cooldownSeconds, _interests, _maturities);
    }

    function activateCooldown(uint256 tokenId) public override {
        if (ownerOf(tokenId) != msg.sender) revert CooldownCanNotBeActivatedNotOwner();
        super.activateCooldown(tokenId);
    }

    /**
     * @dev Returns the tokenURI for tokenId token.
     * @param tokenId uint256
     */
    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override
        returns (string memory)
    {
        Bond memory bond = bonds[tokenId];
        if (bytes(bond.imageCID).length != 0) {
            return _bondTokenURI(tokenId);
        } else {
            return super.tokenURI(tokenId);
        }
    }

    /**
     * @dev Returns assigned tokenId of the bond
     */
    function _buyBond(
        address beneficiary,
        uint256 maturity,
        uint256 principal,
        string memory imageCID
    )
    internal {
        _beforeBondPurchased(beneficiary, maturity, principal);
        uint256 tokenId = _safeMint(beneficiary, '');
        super._issueBond(tokenId, maturity, principal, imageCID);
        _afterBondPurchased(beneficiary, maturity, principal, tokenId, imageCID);
    }

    /**
     * @dev Issue the bond
     */
    function _issueBond(uint256 tokenId, uint256 maturity, uint256 principal, string memory imageCID) internal virtual override (BondGranter, CollateralizedBondGranter) {}

    /**
     * @dev Returns the amount that corresponds to the bond
     */
    function _redeemBond(uint256 tokenId) internal virtual override (CollateralizedBondGranter, LockedBondGranter) returns (uint256) {
        uint256 amount = super._redeemBond(tokenId);
        address beneficiary = ownerOf(tokenId);
        _afterBondRedeemed(tokenId, amount, beneficiary);
        return amount;
    }

    function _beforeBondPurchased(
        address beneficiary,
        uint256 maturity,
        uint256 principal
    ) internal virtual {}

    function _afterBondPurchased(
        address beneficiary,
        uint256 maturity,
        uint256 principal,
        uint256 tokenId,
        string memory imageCID
    ) internal virtual {
        uint256 interest = super.getInterestForMaturity(maturity);
        string memory bondTokenURI = _bondTokenURI(tokenId);
        emit BondIssued(msg.sender, beneficiary, tokenId, block.timestamp, maturity, principal, interest, imageCID, bondTokenURI);
    }

    function _beforeBondRedeemed(uint256 tokenId, uint256 value) internal virtual {}

    function _afterBondRedeemed(uint256 tokenId, uint256 value, address beneficiary) internal virtual {
        emit BondRedeemed(msg.sender, beneficiary, tokenId, block.timestamp, value);
    }

    function _bondTokenURI(uint256 tokenId) private view returns (string memory) {
        Bond memory bond = bonds[tokenId];
        uint8 decimals = principalToken.decimals();
        string memory dataJSON = string.concat(
            '{'
                '"name": "', string.concat('Minimice Bond #', tokenId.toString()), '", ',
                '"image": "ipfs://', bond.imageCID, '", ',
                '"external_url": "https://ethichub.com",',
                '"attributes": [',
                _setAttribute('Principal', string.concat(bond.principal._decimalString(decimals, false), ' USD')),',',
                _setAttribute('APY', (bond.interest*365 days/1e16)._decimalString(2, true)),',',
                _setAttribute('Maturity', string.concat((bond.maturity*1e2/30 days)._decimalString(2, false), ' Months')),
                ']'
            '}'
        );
        return string.concat('data:application/json;base64,', Base64.encode(bytes(dataJSON)));
    }

    function _setAttribute(string memory _name, string memory _value) private pure returns (string memory) {
        return string.concat('{"trait_type":"', _name,'","value":"', _value,'"}');
    }

    /**
     * ////// [v1.0, v1.1, v1.2, v2.0, v2.1, v2.2] //////
     * 49 __gap
     * 49 (mistakenly deployed with 49 store gaps)
     */
    uint256[49] private __gap; // deployed with 49 store gaps
}
