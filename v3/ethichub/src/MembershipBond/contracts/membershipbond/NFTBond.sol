// SPDX-License-Identifier: GPLv3
pragma solidity 0.8.13;

import "../token/NFT.sol";
import "../bond/BondGranter.sol";
import "../borrowing/LiquidityRequester.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "../libraries/DecimalStrings.sol";

/**
 * @title NFTBond
 * @dev Contains functions related to buying and liquidating bonds, and borrowing and returning funds
 * @author Ethichub
 */
abstract contract NFTBond is NFT, BondGranter, LiquidityRequester, PausableUpgradeable {
    using Strings for uint256;
    using DecimalStrings for uint256;

    error NonExistentToken();

    function __NFTBond_init(
        string calldata _name,
        string calldata _symbol,
        address _accessManager,
        uint256[] calldata _interests,
        uint256[] calldata _maturities
    )
    internal initializer {
        __NFT_init(_name, _symbol, _accessManager);
        __BondGranter_init(_interests, _maturities);
    }

    /**
     * @dev Returns updated totalBorrowed
     * @param amount uint256 in wei
     */
    function returnLiquidity(uint256 amount) public payable virtual override returns (uint256) {
        _beforeReturnLiquidity();
        super.returnLiquidity(amount);
        _afterReturnLiquidity(amount);
        return totalBorrowed;
    }

    /**
     * @dev Requests totalBorrowed
     * @param destination address of recipient
     * @param amount uint256 in wei
     */
    function requestLiquidity(address destination, uint256 amount) public override whenNotPaused returns (uint256) {
        _beforeRequestLiquidity(destination, amount);
        super.requestLiquidity(destination, amount);
        return totalBorrowed;
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
        if (! _exists(tokenId)) revert NonExistentToken();
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
    internal returns (uint256) {
        _beforeBondPurchased(beneficiary, maturity, principal);
        uint256 tokenId = _safeMint(beneficiary, "");
        super._issueBond(tokenId, maturity, principal, imageCID);
        _afterBondPurchased(beneficiary, maturity, principal, tokenId);
        return tokenId;
    }

    /**
     * @dev Issue the bond
     */
    function _issueBond(uint256 tokenId, uint256 maturity, uint256 principal, string memory imageCID) internal virtual override {}

    /**
     * @dev Returns the amount that corresponds to the bond
     */
    function _redeemBond(uint256 tokenId) internal virtual override returns (uint256) {
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
        uint256 tokenId
    ) internal virtual {}

    function _beforeBondRedeemed(uint256 tokenId, uint256 value) internal virtual {}

    function _afterBondRedeemed(uint256 tokenId, uint256 value, address beneficiary) internal virtual {}

    function _beforeRequestLiquidity(address destination, uint256 amount) internal virtual {}

    function _afterRequestLiquidity(address destination) internal virtual {}

    function _beforeReturnLiquidity() internal virtual {}

    function _afterReturnLiquidity(uint256 amount) internal virtual {}

    function _bondTokenURI(uint256 tokenId) private view returns (string memory) {
        Bond memory bond = bonds[tokenId];
        string memory dataJSON = string.concat(
            '{'
                '"name": "', string.concat('Membership EthicHub Bond #', tokenId.toString()), '", ',
                '"description": "Membership Bond from EthicHub.", ',
                '"image": "ipfs://', bond.imageCID, '", ',
                '"external_url": "https://ethichub.com",',
                '"attributes": [',
                _setAttribute('Principal', string.concat(bond.principal._decimalString(18, false), ' ETHIX')),',',
                _setAttribute('APY', (bond.interest*365 days/1e16)._decimalString(2, true)),',',
                _setAttribute('Maturity', string.concat((bond.maturity*1e2/30 days)._decimalString(2, false), ' Months')),',',
                _setAttribute('Maturity Unix Timestamp', (bond.mintingDate + bond.maturity).toString()),
                ']'
            '}'
        );
        return string.concat("data:application/json;base64,", Base64.encode(bytes(dataJSON)));
    }

    function _setAttribute(string memory _name, string memory _value) private pure returns (string memory) {
        return string.concat('{"trait_type":"', _name,'","value":"', _value,'"}');
    }

    uint256[50] private __gap;
}