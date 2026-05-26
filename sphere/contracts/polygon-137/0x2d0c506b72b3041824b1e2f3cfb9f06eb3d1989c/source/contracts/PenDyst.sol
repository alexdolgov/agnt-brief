// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "./interfaces/IVoterProxy.sol";
import "./interfaces/IVe.sol";
import "./GovernableImplementation.sol";
import "./ProxyImplementation.sol";

/**
 * @title penDYST
 * @author Penrose
 * @notice penDYST is an ERC20 tokenized/wrapped version of veNFT
 * @dev penDYST can be minted, but never burned
 */
contract PenDyst is ERC20, GovernableImplementation, ProxyImplementation {
    /*******************************************************
     *                     Configuration
     *******************************************************/

    // Public addresses
    address public minterAddress;
    address public voterProxyAddress;
    address public veAddress;

    // Migrated from ERC20 due to being a ProxyImplementation
    string private _name;
    string private _symbol;

    constructor() ERC20("penDYST", "penDYST") {}

    /**
     * @notice Initialize proxy storage
     */
    function initializeProxyStorage(address _voterProxyAddress)
        public
        checkProxyInitialized
    {
        // From ERC20
        _name = "penDYST";
        _symbol = "penDYST";

        voterProxyAddress = _voterProxyAddress;
        minterAddress = voterProxyAddress;
        veAddress = voterProxy().veAddress();
    }

    /**
     * @dev Returns the name of the token.
     * @dev Migrated from ERC20 due to being a ProxyImplementation
     */
    function name() public view override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     * @dev Migrated from ERC20 due to being a ProxyImplementation
     */
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    /**
     * @notice Only minter can mint
     */
    modifier onlyMinter() {
        require(
            msg.sender == minterAddress,
            "Ownable: caller is not the minter"
        );
        _;
    }

    /*******************************************************
     *                      Core logic
     *******************************************************/

    /**
     * @notice Convert NFT to penDYST
     * @param tokenId The token ID to convert
     * @dev This is a one way operation
     * @dev veNFT -> penDYST
     */
    function convertNftToPenDyst(uint256 tokenId) external {
        IVe _ve = ve();
        uint256 amount = _ve.locked(tokenId);
        assert(amount > 0);
        _ve.safeTransferFrom(msg.sender, address(this), tokenId);
        _ve.approve(address(voterProxyAddress), tokenId);
        voterProxy().depositNft(tokenId);
        _mint(msg.sender, amount);
    }

    /**
     * @notice Governance can set minter
     * @param _minterAddress Address of the new minter
     */
    function setMinter(address _minterAddress) public onlyGovernance {
        minterAddress = _minterAddress;
    }

    /**
     * @notice Mint penDYST
     * @dev There is no burn mechanism. Up only.
     * @dev Only minter can mint
     */
    function mint(address to, uint256 amount) public onlyMinter {
        _mint(to, amount);
    }

    /*******************************************************
     *                   Helper utilities
     *******************************************************/

    /**
     * @notice Internal interface helper method
     */
    function voterProxy() internal view returns (IVoterProxy) {
        return IVoterProxy(voterProxyAddress);
    }

    /**
     * @notice Internal interface helper method
     */
    function ve() internal view returns (IVe) {
        return IVe(veAddress);
    }

    /**
     * @notice Mandatory ERC721 receiver
     * @dev Users must utilize convertNftTopenDYST
     * @dev This contract intentinally does not support directly receiving ERC721 tokens
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }
}