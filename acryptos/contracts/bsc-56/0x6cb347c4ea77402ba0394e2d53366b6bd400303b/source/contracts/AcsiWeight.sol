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

contract AcsiWeight is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    address constant ACSI_VAULT =
        address(0x2b66399AD01be47C5aa11C48fDd6DF689DAE929A);

    address constant ACSI_NFT =
        address(0x888888888e332eF5d4Af8FC673040346fb0fB7dF);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address owner) public virtual initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        transferOwnership(owner);
    }

    function name() public view virtual returns (string memory) {
        return "ACryptoSI Vault Weight";
    }

    function symbol() public view virtual returns (string memory) {
        return "acsACSIWeight";
    }

    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    function totalSupply() public view virtual returns (uint256) {
        return IERC20Upgradeable(ACSI_VAULT).totalSupply();
    }

    function balanceOf(address account) public view virtual returns (uint256) {
        return
            IERC20Upgradeable(ACSI_VAULT).balanceOf(account) +
            IACryptoSNFT(ACSI_NFT).ownerAverageBalanceOfStakedVault(account);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        virtual
        override
        onlyOwner
    {}
}
