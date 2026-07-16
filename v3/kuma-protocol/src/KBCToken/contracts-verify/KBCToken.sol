// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {Counters} from "lib/openzeppelin-contracts/contracts/utils/Counters.sol";
import {ERC721Upgradeable} from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC721/ERC721Upgradeable.sol";
import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {IKUMAAddressProvider} from "./interfaces/IKUMAAddressProvider.sol";
import {IKUMABondToken} from "lib/mcag-contracts/src/interfaces/IKUMABondToken.sol";
import {IKBCToken} from "./interfaces/IKBCToken.sol";
import {Roles} from "./libraries/Roles.sol";
import {UUPSUpgradeable} from "lib/openzeppelin-contracts/contracts/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title KUMA Bonds Clone Token
 * @author MIMO Labs
 * @notice KUMA Bonds Clone Tokens are issued by KUMASwap contracts when a bond's coupon needs to be lowered
 * @dev ERC721 token representing a clone bond
 */
contract KBCToken is ERC721Upgradeable, IKBCToken, UUPSUpgradeable {
    using Counters for Counters.Counter;

    IKUMAAddressProvider private _KUMAAddressProvider;
    Counters.Counter private _tokenIdCounter;
    string private _uri;

    mapping(uint256 => CloneBond) private _bonds;

    /**
     * @dev Modifier to make a function callable only when the caller is KUMASwap
     */
    modifier onlyKUMASwap(uint256 parentId) {
        bytes32 riskCategory = IKUMABondToken(_KUMAAddressProvider.getKUMABondToken()).getBond(parentId).riskCategory;
        if (msg.sender != _KUMAAddressProvider.getKUMASwap(riskCategory)) {
            revert Errors.CALLER_NOT_KUMASWAP();
        }
        _;
    }

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

    constructor() {
        _disableInitializers();
    }

    function initialize(IKUMAAddressProvider KUMAAddressProvider) external initializer {
        if (address(KUMAAddressProvider) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        _KUMAAddressProvider = KUMAAddressProvider;
        __ERC721_init("KUMA Bonds Clone Token", "KBCT");

        emit KUMAAddressProviderSet(address(KUMAAddressProvider));
    }

    /**
     * @notice Mints a clone bond NFT to the specified address
     * @dev Can only be called under specific conditions :
     *      - Caller must be KUMASwap
     *      - KUMASwap Contract must not be paused (checked in KUMASwap)
     * @param to Receiver of the newly minted Clone bond token
     * @param cBond Clone bond metadata of the newly minted Clone bond token
     */
    function issueBond(address to, CloneBond calldata cBond)
        external
        onlyKUMASwap(cBond.parentId)
        returns (uint256 tokenId)
    {
        _tokenIdCounter.increment();
        tokenId = _tokenIdCounter.current();
        _bonds[tokenId] = cBond;
        _safeMint(to, tokenId);
        emit CloneBondIssued(tokenId, cBond);
    }

    /**
     * @notice Burns a clone bond NFT
     * @dev Can only be called under specific conditions :
     *      - Caller must be KUMASwap
     *      - KUMASwap must not be paused (checked in KUMASwap)
     * @param tokenId Clone bond Id of the token to be redeemed
     */
    function redeem(uint256 tokenId) external onlyKUMASwap(_bonds[tokenId].parentId) {
        uint256 parentId = _bonds[tokenId].parentId;
        delete _bonds[tokenId];
        _burn(tokenId);
        emit CloneBondRedeemed(tokenId, parentId);
    }

    /**
     * @notice Sets a new base uri for all tokens in this contract
     * @dev Can only be called by `MCAG_SET_URI_ROLE`
     * @param newUri New base uri
     */
    function setUri(string memory newUri) external onlyRole(Roles.KUMA_SET_URI_ROLE) {
        emit UriSet(_uri, newUri);
        _uri = newUri;
    }

    /**
     * @return The KUMA Address Provider contract
     */
    function getKUMAAddressProvider() external view returns (IKUMAAddressProvider) {
        return _KUMAAddressProvider;
    }

    /**
     * @return Current base uri
     */
    function getBaseURI() external view returns (string memory) {
        return _uri;
    }

    /**
     * @param tokenId Clone bond id
     * @return Bond struct storing metadata of the selected bond id
     */
    function getBond(uint256 tokenId) external view returns (CloneBond memory) {
        if (_ownerOf(tokenId) == address(0)) {
            revert Errors.ERC721_INVALID_TOKEN_ID();
        }
        return _bonds[tokenId];
    }

    /**
     * @return The number of KUMA Clone Bond Tokens in existence
     */
    function getTokenIdCounter() external view returns (uint256) {
        return _tokenIdCounter.current();
    }

    /**
     * @dev Disabled _authoriseUpgrade
     */
    function _authorizeUpgrade(address newImplementation) internal view override onlyRole(Roles.KUMA_MANAGER_ROLE) {}

    /**
     * @dev See {IERC721-_baseUri}
     */
    function _baseURI() internal view override returns (string memory) {
        return _uri;
    }
}
