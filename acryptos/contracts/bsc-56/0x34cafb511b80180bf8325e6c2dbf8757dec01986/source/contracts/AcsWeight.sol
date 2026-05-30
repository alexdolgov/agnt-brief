// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

// Using @openzeppelin/contracts-upgradeable@4.3.2
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

interface IACryptoSNFT {
    function ownerAverageBalanceOfStakedVault(address owner)
        external
        view
        returns (uint256 balance);
}

contract AcsWeight is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    address constant ACS_VAULT =
        address(0x7679381507af0c8DE64586A458161aa58D3A4FC3);

    address constant ACS_NFT =
        address(0x88888888F5753904C4D42f696EBF24F277828708);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address owner) public virtual initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        transferOwnership(owner);
    }

    function name() public view virtual returns (string memory) {
        return "ACryptoS Vault Weight";
    }

    function symbol() public view virtual returns (string memory) {
        return "acsACSWeight";
    }

    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    function totalSupply() public view virtual returns (uint256) {
        return IERC20Upgradeable(ACS_VAULT).totalSupply();
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return
            IERC20Upgradeable(ACS_VAULT).balanceOf(account) +
            IACryptoSNFT(ACS_NFT).ownerAverageBalanceOfStakedVault(account);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyOwner
    {}
}
